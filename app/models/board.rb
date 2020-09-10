# == Schema Information
#
# Table name: boards
#
#  id            :bigint           not null, primary key
#  content       :text             not null
#  taggable_type :string           default("Photo")
#  title         :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  taggable_id   :bigint
#  user_id       :bigint           not null
#
# Indexes
#
#  index_boards_on_taggable_type_and_taggable_id  (taggable_type,taggable_id)
#  index_boards_on_user_id                        (user_id)
#
class Board < ApplicationRecord
  validates :title, presence:true
  validates :content,presence:true
  # has_many :comments, dependent: :destroy
  belongs_to :user
end

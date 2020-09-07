# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#


class Article < ApplicationRecord
  validates :title, presence:true
  validates :content,presence:true
  has_many :comments, dependent: :destroy
  belongs_to :user

  def author_name
    user.display_name
  end
  
end

class ArticlesController < ApplicationController
  before_action :set_article,only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def  create
    if @article.save
      redirect_to article_path(@article),notice: '保存できました'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new
    end
  end

  def edit
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article),nottice:   '更新できました'
    else 
      flash.now[:error] = '更新できませんでした'
      render :edit
    end
  end
  
  def destroy
    article = Article.find(params[:id])
    article.destroy!
    redirect_to root_path,notice: '削除しました'
  end

  private
  def article_params
    params.require(:article).permit(:title,:content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
  

end

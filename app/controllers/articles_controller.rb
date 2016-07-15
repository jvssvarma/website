class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all.order("updated_at desc").paginate(page: params[:page], per_page: 9)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new article_params

		if @article.save
			redirect_to @article, notice: "Article posted successfully!"
		else
			render 'new', notice: "Oh no, Unable to post your article."
		end
  end

  def update
    if @article.update article_params
			redirect_to @article, notice: "Article is updated!"
		else
			render 'edit'
		end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
		params.require(:article).permit(:title, :content, :slug, :image)
	end

	def find_article
		@article = Article.friendly.find(params[:id])
	end
end

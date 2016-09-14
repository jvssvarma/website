class GuidesController < ApplicationController
  before_action :find_guide, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @guides = Guide.all.order("updated_at desc").paginate(page: params[:page], per_page: 9)
  end

  def show
    impressionist(@guide)
  end

  def new
    @guide = Guide.new
  end

  def edit
  end

  def create
    @guide = Guide.new guide_params

		if @guide.save
			redirect_to @guide, notice: "Guide posted successfully!"
		else
			render 'new', notice: "Oh no, Unable to post your Guide."
		end
  end

  def update
    if @guide.update guide_params
			redirect_to @guide, notice: "Guide is updated!"
		else
			render 'edit'
		end
  end

  def destroy
    @guide.destroy
    redirect_to guides_path
  end

  private

  def guide_params
		params.require(:guide).permit(:title, :content, :slug, :image)
	end

	def find_guide
		@guide = Guide.friendly.find(params[:id])
	end
end

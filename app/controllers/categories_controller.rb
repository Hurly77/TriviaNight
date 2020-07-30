class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @categories.new
  end

  def create
    if current_user.admin = true
      @categories = Category.find_or_create_by(name: params[:name])
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def destroy
  end
end

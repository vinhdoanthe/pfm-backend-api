class Api::V1::Config::CategoriesController < ApplicationController
  before_action :set_config_category, only: [:show, :update, :destroy]

  # GET /config/categories
  def index
    @config_categories = Config::Category.all

    render json: @config_categories
  end

  # GET /config/categories/1
  def show
    render json: @config_category
  end

  # POST /config/categories
  def create
    @config_category = Config::Category.new(config_category_params)

    if @config_category.save
      render json: @config_category, status: :created, location: @config_category
    else
      render json: @config_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /config/categories/1
  def update
    if @config_category.update(config_category_params)
      render json: @config_category
    else
      render json: @config_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /config/categories/1
  def destroy
    @config_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config_category
      @config_category = Config::Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def config_category_params
      params.require(:config_category).permit(:name, :category_type)
    end
end

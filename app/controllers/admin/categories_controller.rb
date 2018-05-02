module Admin
  class CategoriesController < ApplicationController
    layout "application_admin"
    include CategoriesHelper

    before_action :load_category, except: %i(index new create update)
    before_action :load_categories, only: :index
    before_action :load_category_parent_cat_add, only: %i(new create)
    before_action :load_categories_by_not_match_id_and_parent_id, only: %i(edit update show)

    def index; end

    def new
      @category = Category.new
    end

    def show; end

    def create
      @category = Category.new category_params
      if Category.by_name(@category).blank?
        save_cat @category
      else
        @message = t "admin.categories.new.exist_error"
        render :new
      end
    end

    def update
      if Category.by_name(@category.name).by_id_not_match(@category.id).blank?
        update_cat @category
      else
        flash[:danger] = t "admin.categories.new.exist_error"
        redirect_to admin_category_path
      end
    end

    def destroy
      if @category.destroy
        flash[:success] = t "admin.categories.new.success_delete_msg"
      else
        flash[:danger] = t "admin.categories.new.danger_delete_msg"
      end
      redirect_to admin_categories_url
    end

    private

    def category_params
      params.require(:category).permit :name, :parent_id
    end

    def load_categories
      @categories = Category.all
    end

    def load_categories_by_not_match_id_and_parent_id
      @category = Category.find_by id: params[:id]
      @categories = Category.by_id_not_match(@category.id).by_parent_id_not_match_id(@category.id)
      @categories = load_categories_add_no_parent @categories
    end

    def load_category
      @category = Category.find_by id: params[:id]
      return if @category.present?
      flash[:danger] = t "admin.categories.index.not_find_cat"
      redirect_to admin_categories_url
    end

    def save_cat add_category
      if add_category.save
        flash[:success] = t "admin.categories.new.success_add_msg"
        redirect_to admin_categories_url
      else
        render :new
      end
    end

    def update_cat update_category
      if update_category.update category_params
        flash[:success] = t "admin.categories.edit.success_edit_msg"
        redirect_to admin_categories_url
      else
        render :edit
      end
    end

    def load_category_parent
      @categories = Category.all
      @categories = load_categories_add_no_parent @categories
    end
  end
end

module Admin
  module CategoriesHelper
    def load_categories_add_no_parent categories
      (categories.to_a << Category.new(name: I18n.t("admin.categories.noparent"))).reverse
    end
    
    def display_categories
      @categories.collect{|u| [u.name, u.id]}
    end
  end
end
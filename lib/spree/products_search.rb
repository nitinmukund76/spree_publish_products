module Spree
  class ProductsSearch < Spree::Core::Search::Base

    def retrieve_products
      @products = get_base_scope.where(publish: true)
      curr_page = page || 1

      unless Spree::Config.show_products_without_price
        @products = @products.where("spree_prices.amount IS NOT NULL").
                              where("spree_prices.currency" => current_currency)
      end
      @products = @products.page(curr_page).per(per_page)
    end

  end
end
#Spree::Core::Search::Base.send(:include, ProductsSearch)
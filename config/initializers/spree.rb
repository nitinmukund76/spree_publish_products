require 'spree/products_search'

Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.searcher_class = Spree::ProductsSearch
end
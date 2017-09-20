Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'admin_publish_product',
  insert_before: "[data-hook='admin_product_form_price']",
  text: "

    <div data-hook='admin_product_form_publish'>
      <div class='form-group field' id='product_publish_field'>
        <%= f.label :publish, Spree.t(:publish) %>
        <%= f.check_box :publish, class: 'form-control' %>
      </div>      
    </div>
  ")
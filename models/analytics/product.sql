SELECT
  product.stock_item_id as productID,
  product.stock_item_name as productName,
  coalesce(product.brand, 'Undefined') as brandName,
  product.supplier_id,
  supplier.supplier_name
FROM
  `vit-lam-data.wide_world_importers.warehouse__stock_items` as product
  join {{ref('supplier')}} as supplier on supplier.supplier_id = product.supplier_id
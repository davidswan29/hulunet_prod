select asset_orders.id, 
  asset_orders.asset_id, 
  asset_orders.date, 
  asset_orders.deadline, 
  asset_orders.description, 
  initcap(asset_orders.order_type) as order_type, 
  asset_orders.ordered_by, 
  asset_orders.status, 
  asset_management_library.*, 
  asset_orders.deadline - asset_orders.date as deployment 
  from asset_management_library 
  full outer join asset_orders on asset_orders.asset_id = asset_management_library.aid 
  where asset_id is not null 
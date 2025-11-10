select count(id), 
  (select count(id) from asset_orders where status = 'Delivered') as Delivered, 
  (select count(id) from asset_orders where status = 'In progress') as Progress, 
  (select count(id) from asset_orders where status = 'Order placed') as Ordered, 
  100*(select count(id) from asset_orders where status = 'Delivered')/count(id) as answer 
  
  from asset_orders
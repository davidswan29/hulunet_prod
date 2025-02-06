select count(id), ordered_by as y  from asset_orders
group by ordered_by

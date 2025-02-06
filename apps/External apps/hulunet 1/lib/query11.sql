select asset_orders.*, asset_management_library.*, asset_orders.deadline - asset_orders.date as deployment from asset_management_library join asset_orders on asset_orders.asset_id = asset_management_library.aid
/*order by asset_management_library.spend desc,*/
order by asset_orders.date asc
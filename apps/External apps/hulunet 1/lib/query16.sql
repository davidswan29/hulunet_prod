select count(id), * from asset_orders
group by id
order by date desc

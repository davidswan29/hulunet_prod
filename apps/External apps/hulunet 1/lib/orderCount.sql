
select count(id), date(date) as y  from asset_orders
group by date
order by date asc
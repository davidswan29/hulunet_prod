
select * from asset_management_library
limit {{ table3.pagination.pageSize }}
offset {{ table3.pagination.offset }}
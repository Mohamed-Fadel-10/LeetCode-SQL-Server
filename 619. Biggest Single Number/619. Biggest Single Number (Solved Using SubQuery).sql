-- Using SQl Server
select 
        case when count(num)=0 then null
        else Max(num)
        end as num
        from (
            select num 
            from MyNumbers 
            group by num
            having count(num)=1
        ) as single

SELECT cast(expenses.EXPDATE  as text) as ed, EXPENSE_ID, AMOUNT , SHOPID , EXPDATE  from expenses ORDER BY SUBSTR(ed, 5, 2)


select cast(expdate as text), SUBSTRING(cast(expdate as string), 5,2) as ee, substring(cast(expdate as string), 1, 4), shopid from expenses group by SUBSTRING(cast(expdate as string), 5,2)
order by ee
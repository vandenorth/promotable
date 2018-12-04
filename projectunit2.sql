SELECT rent.city, rent.rent, pop.population
FROM rent
LEFT JOIN pop ON rent.city = pop.city
ORDER BY pop.population;

SELECT AVG(population), STDDEV(population), MIN(population), MAX(population)
FROM pop;

alter table pop
add column popgroup varchar(30);

UPDATE pop
SET popgroup = case
when population >= 1000000 then 1
when population < 1000000 then 0
End;

SELECT AVG(rent)
GROUP BY popgroup
FROM pop

select pop.popgroup, avg(rent.rent) FROM pop
left join rent on rent.city = pop.city
group by pop.popgroup;

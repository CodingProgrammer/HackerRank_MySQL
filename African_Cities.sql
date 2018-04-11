select CITY.name from CITY
inner join COUNTRY on CITY.CountryCode = COUNTRY.Code
where COUNTRY.CONTINENT = 'Africa';

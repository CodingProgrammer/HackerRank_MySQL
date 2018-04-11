select COUNTRY.Continent, floor(AVG(CITY.POPULATION)) from CITY
inner join COUNTRY on CITY.CountryCode = COUNTRY.Code
group by COUNTRY.Continent;

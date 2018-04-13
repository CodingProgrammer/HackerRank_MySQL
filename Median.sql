select round(avg(lat_n),4) from station as S 
where ((select count(*) from station where lat_n <= S.lat_n) - (select count(*) from station where lat_n >= S.lat_n)) in (0,1,-1);

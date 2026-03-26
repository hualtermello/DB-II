#Aula sobre JSON - JavaScript Object Notation

select * from countryinfo;
select * from countryinfo where _id = 'BRA';

select json_keys(doc) from countryinfo where _id = 'bra';

select json_keys(doc, "$.geography") from countryinfo where _id = 'bra';

select json_extract(doc, "$.goverment") from countryinfo where _id = 'bra';

select json_extract(doc, "$.IndepYear") from countryinfo where _id = 'bra';

select json_extract(doc, "$.geography.Continent") as CONTINENTE from countryinfo where _id = 'bra';

select doc -> "$.geography.Continent" as CONTINENTE, sum(json_extract(doc, "$.demographics.Population")) as "população" from countryinfo where _id = 'bra';

--liquibase formatted sql

--This is for the sedmap schema

--changeset ajmccart:CreatePopulateDailySites
CREATE TABLE SEDMAP.DAILY_SITES
(
  SITE_NO  VARCHAR2(255 BYTE)
);

ALTER TABLE SEDMAP.DAILY_SITES ADD (
  CONSTRAINT DAILY_SITES_PK
  PRIMARY KEY
  (SITE_NO));
 
ALTER TABLE SEDMAP.DAILY_SITES ADD (
  CONSTRAINT DAILY_SITES_R01 
  FOREIGN KEY (SITE_NO) 
  REFERENCES SEDMAP.SITE_REF (SITE_NO));
  
GRANT SELECT ON SEDMAP.DAILY_SITES TO SEDUSER;

insert into daily_sites
select distinct site_no from SRC_DAILY_SSLINVENTORY_72915;
--rollback Drop table daily_sites;


--changeset ajmccart:CreatePopulateDailyYears
CREATE TABLE SEDMAP.DAILY_YEARS
(
  SITE_NO               VARCHAR2(255 BYTE),
  STATION_NM            VARCHAR2(255 BYTE),
  LATITUDE              VARCHAR2(255 BYTE),
  LONGITUDE             VARCHAR2(255 BYTE),
  DATUM                 VARCHAR2(255 BYTE),
  DA                    VARCHAR2(255 BYTE),
  MIN_SSL_YEAR          VARCHAR2(255 BYTE),
  MAX_SSL_YEAR          VARCHAR2(255 BYTE),
  COUNT_UNIQUE_SSL_YRS  VARCHAR2(255 BYTE),
  "1908"                VARCHAR2(255 BYTE),
  "1909"                VARCHAR2(255 BYTE),
  "1910"                VARCHAR2(255 BYTE),
  "1911"                VARCHAR2(255 BYTE),
  "1912"                VARCHAR2(255 BYTE),
  "1913"                VARCHAR2(255 BYTE),
  "1914"                VARCHAR2(255 BYTE),
  "1915"                VARCHAR2(255 BYTE),
  "1916"                VARCHAR2(255 BYTE),
  "1917"                VARCHAR2(255 BYTE),
  "1918"                VARCHAR2(255 BYTE),
  "1919"                VARCHAR2(255 BYTE),
  "1920"                VARCHAR2(255 BYTE),
  "1921"                VARCHAR2(255 BYTE),
  "1922"                VARCHAR2(255 BYTE),
  "1923"                VARCHAR2(255 BYTE),
  "1924"                VARCHAR2(255 BYTE),
  "1925"                VARCHAR2(255 BYTE),
  "1926"                VARCHAR2(255 BYTE),
  "1927"                VARCHAR2(255 BYTE),
  "1928"                VARCHAR2(255 BYTE),
  "1929"                VARCHAR2(255 BYTE),
  "1930"                VARCHAR2(255 BYTE),
  "1931"                VARCHAR2(255 BYTE),
  "1932"                VARCHAR2(255 BYTE),
  "1933"                VARCHAR2(255 BYTE),
  "1934"                VARCHAR2(255 BYTE),
  "1935"                VARCHAR2(255 BYTE),
  "1936"                VARCHAR2(255 BYTE),
  "1937"                VARCHAR2(255 BYTE),
  "1938"                VARCHAR2(255 BYTE),
  "1939"                VARCHAR2(255 BYTE),
  "1940"                VARCHAR2(255 BYTE),
  "1941"                VARCHAR2(255 BYTE),
  "1942"                VARCHAR2(255 BYTE),
  "1943"                VARCHAR2(255 BYTE),
  "1944"                VARCHAR2(255 BYTE),
  "1945"                VARCHAR2(255 BYTE),
  "1946"                VARCHAR2(255 BYTE),
  "1947"                VARCHAR2(255 BYTE),
  "1948"                VARCHAR2(255 BYTE),
  "1949"                VARCHAR2(255 BYTE),
  "1950"                VARCHAR2(255 BYTE),
  "1951"                VARCHAR2(255 BYTE),
  "1952"                VARCHAR2(255 BYTE),
  "1953"                VARCHAR2(255 BYTE),
  "1954"                VARCHAR2(255 BYTE),
  "1955"                VARCHAR2(255 BYTE),
  "1956"                VARCHAR2(255 BYTE),
  "1957"                VARCHAR2(255 BYTE),
  "1958"                VARCHAR2(255 BYTE),
  "1959"                VARCHAR2(255 BYTE),
  "1960"                VARCHAR2(255 BYTE),
  "1961"                VARCHAR2(255 BYTE),
  "1962"                VARCHAR2(255 BYTE),
  "1963"                VARCHAR2(255 BYTE),
  "1964"                VARCHAR2(255 BYTE),
  "1965"                VARCHAR2(255 BYTE),
  "1966"                VARCHAR2(255 BYTE),
  "1967"                VARCHAR2(255 BYTE),
  "1968"                VARCHAR2(255 BYTE),
  "1969"                VARCHAR2(255 BYTE),
  "1970"                VARCHAR2(255 BYTE),
  "1971"                VARCHAR2(255 BYTE),
  "1972"                VARCHAR2(255 BYTE),
  "1973"                VARCHAR2(255 BYTE),
  "1974"                VARCHAR2(255 BYTE),
  "1975"                VARCHAR2(255 BYTE),
  "1976"                VARCHAR2(255 BYTE),
  "1977"                VARCHAR2(255 BYTE),
  "1978"                VARCHAR2(255 BYTE),
  "1979"                VARCHAR2(255 BYTE),
  "1980"                VARCHAR2(255 BYTE),
  "1981"                VARCHAR2(255 BYTE),
  "1982"                VARCHAR2(255 BYTE),
  "1983"                VARCHAR2(255 BYTE),
  "1984"                VARCHAR2(255 BYTE),
  "1985"                VARCHAR2(255 BYTE),
  "1986"                VARCHAR2(255 BYTE),
  "1987"                VARCHAR2(255 BYTE),
  "1988"                VARCHAR2(255 BYTE),
  "1989"                VARCHAR2(255 BYTE),
  "1990"                VARCHAR2(255 BYTE),
  "1991"                VARCHAR2(255 BYTE),
  "1992"                VARCHAR2(255 BYTE),
  "1993"                VARCHAR2(255 BYTE),
  "1994"                VARCHAR2(255 BYTE),
  "1995"                VARCHAR2(255 BYTE),
  "1996"                VARCHAR2(255 BYTE),
  "1997"                VARCHAR2(255 BYTE),
  "1998"                VARCHAR2(255 BYTE),
  "1999"                VARCHAR2(255 BYTE),
  "2000"                VARCHAR2(255 BYTE),
  "2001"                VARCHAR2(255 BYTE),
  "2002"                VARCHAR2(255 BYTE),
  "2003"                VARCHAR2(255 BYTE),
  "2004"                VARCHAR2(255 BYTE),
  "2005"                VARCHAR2(255 BYTE),
  "2006"                VARCHAR2(255 BYTE),
  "2007"                VARCHAR2(255 BYTE),
  "2008"                VARCHAR2(255 BYTE),
  "2009"                VARCHAR2(255 BYTE),
  "2010"                VARCHAR2(255 BYTE),
  "2011"                VARCHAR2(255 BYTE),
  "2012"                VARCHAR2(255 BYTE),
  "2013"                VARCHAR2(255 BYTE),
  "2014"                VARCHAR2(255 BYTE)
);

ALTER TABLE SEDMAP.DAILY_YEARS ADD (
  CONSTRAINT DAILY_YEARS_U01
  UNIQUE (SITE_NO));
  
ALTER TABLE SEDMAP.DAILY_YEARS ADD (
  CONSTRAINT DAILY_YEARS_R01 
  FOREIGN KEY (SITE_NO) 
  REFERENCES SEDMAP.DAILY_SITES (SITE_NO));
  
 
 insert into daily_years
select site_no,
  station_nm  ,
  latitude         ,
  longitude        ,
  datum       ,
  da        ,
  min_ssl_year,
  max_ssl_year,
  count_unique ,
  null,
  "1909",
  "1910",
  "1911",
  "1912",
  "1913",
  "1914",
  "1915",
  "1916",
  "1917",
  "1918",
  "1919",
  "1920",
  "1921",
  "1922",
  "1923",
  "1924",
  "1925",
  "1926",
  "1927",
  "1928",
  "1929",
  "1930",
  "1931",
  "1932",
  "1933",
  "1934",
  "1935",
  "1936",
  "1937",
  "1938",
  "1939",
  "1940",
  "1941",
  "1942",
  "1943",
  "1944",
  "1945",
  "1946",
  "1947",
  "1948",
  "1949",
  "1950",
  "1951",
  "1952",
  "1953",
  "1954",
  "1955",
  "1956",
  "1957",
  "1958",
  "1959",
  "1960",
  "1961",
  "1962",
  "1963",
  "1964",
  "1965",
  "1966",
  "1967",
  "1968",
  "1969",
  "1970",
  "1971",
  "1972",
  "1973",
  "1974",
  "1975",
  "1976",
  "1977",
  "1978",
  "1979",
  "1980",
  "1981",
  "1982",
  "1983",
  "1984",
  "1985",
  "1986",
  "1987",
  "1988",
  "1989",
  "1990",
  "1991",
  "1992",
  "1993",
  "1994",
  "1995",
  "1996",
  "1997",
  "1998",
  "1999",
  "2000",
  "2001",
  "2002",
  "2003",
  "2004",
  "2005",
  "2006",
  "2007",
  "2008",
  "2009",
  "2010",
  "2011",
  "2012",
  "2013",
  "2014"
   from SRC_DAILY_SSLINVENTORY_72915;
 --rollback Drop table daily_years;    
  

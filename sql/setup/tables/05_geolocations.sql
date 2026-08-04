/*
============================================================
Table      : geolocation
Description: Stores Brazilian geolocation information based on ZIP code prefixes.
Source CSV : olist_geolocation_dataset.csv
Project    : Data Analyst Bootcamp
Dataset    : Olist Brazilian E-Commerce
============================================================
*/

CREATE TABLE geolocations (
    geolocation_zip_code_prefix INTEGER,
    geolocation_lat NUMERIC(10,8),
    geolocation_lng NUMERIC(11,8),
    geolocation_city TEXT,
    geolocation_state CHAR(2)
);
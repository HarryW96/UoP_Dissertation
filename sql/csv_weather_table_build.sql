-- Table creation statement for storing OpenWeatherMap data dump.
CREATE TABLE IF NOT EXISTS csv_weather_data(
    dt INT,
    dt_iso VARCHAR(50),
    uk_date TIMESTAMP,
    city_id	INT,
    city_name VARCHAR(50),
    lat	FLOAT,
    lon	FLOAT,
    temp FLOAT,
    temp_min FLOAT,
    temp_max FLOAT,
    pressure INT,
    sea_level FLOAT,
    grnd_level FLOAT,
    humidity INT,
    wind_speed INT,
    wind_deg INT,
    rain_1h FLOAT,
    rain_3h FLOAT,
    rain_24h FLOAT,
    rain_today FLOAT,
    snow_1h FLOAT,
    snow_3h FLOAT,
    snow_24h FLOAT,
    snow_today FLOAT,
    clouds_all INT,
    weather_id INT,
    weather_main VARCHAR(50),
    weather_description	VARCHAR(200),
    weather_icon VARCHAR(100)
);

-- Query to populate
COPY csv_weather_data FROM '/home/harryw/Weather_010114-070119.csv' WITH (FORMAT csv);
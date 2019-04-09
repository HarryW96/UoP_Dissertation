CREATE TABLE IF NOT EXISTS json_weather_data (
forecast_forecastday_hour_condition_code INT NULL,
forecast_forecastday_day_condition_code INT NULL,
forecast_forecastday_hour_precip_in INT NULL,
forecast_forecastday_day_maxwind_mph FLOAT NULL,
location_localtime_epoch INT NULL,
forecast_forecastday_astro_sunrise VARCHAR(20) NULL,
forecast_forecastday_hour_heatindex_f FLOAT NULL,
location_region VARCHAR(15) NULL,
forecast_forecastday_astro_moon_phase VARCHAR(35) NULL,
forecast_forecastday_hour_will_it_rain INT NULL,
forecast_forecastday_hour_humidity INT NULL,
forecast_forecastday_date_epoch INT NULL,
location_country VARCHAR(50) NULL,
forecast_forecastday_hour_pressure_in FLOAT NULL,
forecast_forecastday_day_avgvis_km FLOAT NULL,
forecast_forecastday_astro_sunset VARCHAR(15) NULL,
forecast_forecastday_day_mintemp_f FLOAT NULL,
forecast_forecastday_hour_precip_mm INT NULL,
forecast_forecastday_hour_is_day INT NULL,
location_lon FLOAT NULL,
forecast_forecastday_astro_moonset VARCHAR(15) NULL,
forecast_forecastday_hour_heatindex_c FLOAT NULL,
forecast_forecastday_hour_will_it_snow INT NULL,
forecast_forecastday_astro_moonrise VARCHAR(15) NULL,
forecast_forecastday_hour_time VARCHAR(35) NULL,
forecast_forecastday_day_avgvis_miles INT NULL,
forecast_forecastday_hour_wind_dir VARCHAR(15) NULL,
forecast_forecastday_day_condition_icon VARCHAR(150) NULL,
forecast_forecastday_day_totalprecip_in INT NULL,
forecast_forecastday_day_maxtemp_f FLOAT NULL,
forecast_forecastday_hour_windchill_f FLOAT NULL,
forecast_forecastday_hour_chance_of_rain INT NULL,
forecast_forecastday_hour_feelslike_c FLOAT NULL,
forecast_forecastday_day_avgtemp_f FLOAT NULL,
forecast_forecastday_hour_windchill_c FLOAT NULL,
forecast_forecastday_hour_vis_km FLOAT NULL,
forecast_forecastday_hour_cloud INT NULL,
location_tz_id VARCHAR(30) NULL,
forecast_forecastday_hour_condition_icon VARCHAR(90) NULL,
location_localtime VARCHAR(35) NULL,
forecast_forecastday_day_maxtemp_c FLOAT NULL,
forecast_forecastday_hour_pressure_mb INT NULL,
forecast_forecastday_hour_condition_text VARCHAR(40) NULL,
forecast_forecastday_hour_wind_mph FLOAT NULL,
forecast_forecastday_day_avgtemp_c FLOAT NULL,
forecast_forecastday_astro_moon_illumination INT NULL,
forecast_forecastday_hour_wind_degree INT NULL,
forecast_forecastday_hour_time_epoch INT NULL,
forecast_forecastday_hour_chance_of_snow INT NULL,
forecast_forecastday_hour_feelslike_f FLOAT NULL,
forecast_forecastday_day_condition_text VARCHAR(40) NULL,
forecast_forecastday_hour_temp_c FLOAT NULL,
forecast_forecastday_day_uv INT NULL,
forecast_forecastday_hour_vis_miles INT NULL,
forecast_forecastday_hour_wind_kph FLOAT NULL,
location_lat FLOAT NULL,
forecast_forecastday_day_totalprecip_mm FLOAT NULL,
location_name VARCHAR(30) NULL,
forecast_forecastday_date VARCHAR(30) NULL,
forecast_forecastday_day_avghumidity INT NULL,
forecast_forecastday_day_maxwind_kph FLOAT NULL,
forecast_forecastday_hour_dewpoint_f FLOAT NULL,
forecast_forecastday_day_mintemp_c FLOAT NULL,
forecast_forecastday_hour_temp_f FLOAT NULL,
forecast_forecastday_hour_dewpoint_c FLOAT NULL
);

INSERT INTO json_weather_data (forecast_forecastday_hour_condition_code, forecast_forecastday_day_condition_code, forecast_forecastday_hour_precip_in, forecast_forecastday_day_maxwind_mph, location_localtime_epoch, forecast_forecastday_astro_sunrise, forecast_forecastday_hour_heatindex_f, location_region, forecast_forecastday_astro_moon_phase, forecast_forecastday_hour_will_it_rain, forecast_forecastday_hour_humidity, forecast_forecastday_date_epoch, location_country, forecast_forecastday_hour_pressure_in, forecast_forecastday_day_avgvis_km, forecast_forecastday_astro_sunset, forecast_forecastday_day_mintemp_f, forecast_forecastday_hour_precip_mm, forecast_forecastday_hour_is_day, location_lon, forecast_forecastday_astro_moonset, forecast_forecastday_hour_heatindex_c, forecast_forecastday_hour_will_it_snow, forecast_forecastday_astro_moonrise, forecast_forecastday_hour_time, forecast_forecastday_day_avgvis_miles, forecast_forecastday_hour_wind_dir, forecast_forecastday_day_condition_icon, forecast_forecastday_day_totalprecip_in, forecast_forecastday_day_maxtemp_f, forecast_forecastday_hour_windchill_f, forecast_forecastday_hour_chance_of_rain, forecast_forecastday_hour_feelslike_c, forecast_forecastday_day_avgtemp_f, forecast_forecastday_hour_windchill_c, forecast_forecastday_hour_vis_km, forecast_forecastday_hour_cloud, location_tz_id, forecast_forecastday_hour_condition_icon, location_localtime, forecast_forecastday_day_maxtemp_c, forecast_forecastday_hour_pressure_mb, forecast_forecastday_hour_condition_text, forecast_forecastday_hour_wind_mph, forecast_forecastday_day_avgtemp_c, forecast_forecastday_astro_moon_illumination, forecast_forecastday_hour_wind_degree, forecast_forecastday_hour_time_epoch, forecast_forecastday_hour_chance_of_snow, forecast_forecastday_hour_feelslike_f, forecast_forecastday_day_condition_text, forecast_forecastday_hour_temp_c, forecast_forecastday_day_uv, forecast_forecastday_hour_vis_miles, forecast_forecastday_hour_wind_kph, location_lat, forecast_forecastday_day_totalprecip_mm, location_name, forecast_forecastday_date, forecast_forecastday_day_avghumidity, forecast_forecastday_day_maxwind_kph, forecast_forecastday_hour_dewpoint_f, forecast_forecastday_day_mintemp_c, forecast_forecastday_hour_temp_f, forecast_forecastday_hour_dewpoint_c) VALUES
(1003,1063,0,22.8,1546942990,'08:05 AM',43.5,'Hampshire','Waxing Crescent',0,86,1546819200,'United Kingdom',31.1,18.2,'04:16 PM',44.8,0,0,-1.07,'05:43 PM',6.4,0,'09:00 AM','2019-01-07 00:00',11,'NNW','//cdn.apixu.com/weather/64x64/day/176.png',0,51.6,39.6,0,4.2,49.2,4.2,10.0,45,'Europe/London','//cdn.apixu.com/weather/64x64/night/116.png','2019-01-08 10:23',10.9,1038,'Partly cloudy',6.7,9.5,0,326,1546819200,0,39.6,'Patchy rain possible',6.4,0,6,10.8,50.81,0.1,'Portsmouth','2019-01-07',86,36.7,39.7,7.1,43.5,4.3),
(1003,NULL,0,NULL,NULL,NULL,43.5,NULL,NULL,0,87,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,6.4,0,NULL,'2019-01-07 01:00',NULL,'NW',NULL,NULL,NULL,39.6,1,4.2,NULL,4.2,13.3,42,NULL,'//cdn.apixu.com/weather/64x64/night/116.png',NULL,NULL,1038,'Partly cloudy',6.6,NULL,NULL,320,1546822800,0,39.6,NULL,6.4,NULL,8,10.6,NULL,NULL,NULL,NULL,NULL,NULL,39.8,NULL,43.5,4.3),
(1003,NULL,0,NULL,NULL,NULL,43.5,NULL,NULL,0,87,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,6.4,0,NULL,'2019-01-07 02:00',NULL,'NW',NULL,NULL,NULL,39.7,1,4.3,NULL,4.3,16.7,38,NULL,'//cdn.apixu.com/weather/64x64/night/116.png',NULL,NULL,1038,'Partly cloudy',6.4,NULL,NULL,315,1546826400,0,39.7,NULL,6.4,NULL,10,10.3,NULL,NULL,NULL,NULL,NULL,NULL,39.9,NULL,43.5,4.4),
(1003,NULL,0,NULL,NULL,NULL,43.5,NULL,NULL,0,87,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,6.4,0,NULL,'2019-01-07 03:00',NULL,'NW',NULL,NULL,NULL,39.7,0,4.3,NULL,4.3,20.0,35,NULL,'//cdn.apixu.com/weather/64x64/night/116.png',NULL,NULL,1038,'Partly cloudy',6.3,NULL,NULL,310,1546830000,0,39.7,NULL,6.4,NULL,12,10.1,NULL,NULL,NULL,NULL,NULL,NULL,39.9,NULL,43.5,4.4),
(1003,NULL,0,NULL,NULL,NULL,43.9,NULL,NULL,0,88,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,6.6,0,NULL,'2019-01-07 04:00',NULL,'WNW',NULL,NULL,NULL,39.9,1,4.4,NULL,4.4,20.0,46,NULL,'//cdn.apixu.com/weather/64x64/night/116.png',NULL,NULL,1037,'Partly cloudy',7.0,NULL,NULL,303,1546833600,0,39.9,NULL,6.6,NULL,12,11.3,NULL,NULL,NULL,NULL,NULL,NULL,40.6,NULL,43.9,4.8),
(1006,NULL,0,NULL,NULL,NULL,44.4,NULL,NULL,0,89,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,6.9,0,NULL,'2019-01-07 05:00',NULL,'WNW',NULL,NULL,NULL,40.0,2,4.4,NULL,4.4,20.0,57,NULL,'//cdn.apixu.com/weather/64x64/night/119.png',NULL,NULL,1037,'Cloudy',7.8,NULL,NULL,297,1546837200,0,40.0,NULL,6.9,NULL,12,12.5,NULL,NULL,NULL,NULL,NULL,NULL,41.4,NULL,44.4,5.2),
(1006,NULL,0,NULL,NULL,NULL,44.8,NULL,NULL,0,90,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,7.1,0,NULL,'2019-01-07 06:00',NULL,'WNW',NULL,NULL,NULL,40.1,0,4.5,NULL,4.5,20.0,68,NULL,'//cdn.apixu.com/weather/64x64/night/119.png',NULL,NULL,1036,'Cloudy',8.5,NULL,NULL,291,1546840800,0,40.1,NULL,7.1,NULL,12,13.7,NULL,NULL,NULL,NULL,NULL,NULL,42.1,NULL,44.8,5.6),
(1006,NULL,0,NULL,NULL,NULL,45.9,NULL,NULL,0,88,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,7.7,0,NULL,'2019-01-07 07:00',NULL,'WNW',NULL,NULL,NULL,40.9,2,5.0,NULL,5.0,20.0,67,NULL,'//cdn.apixu.com/weather/64x64/night/119.png',NULL,NULL,1036,'Cloudy',10.4,NULL,NULL,284,1546844400,0,40.9,NULL,7.7,NULL,12,16.7,NULL,NULL,NULL,NULL,NULL,NULL,42.7,NULL,45.9,5.9),
(1006,NULL,0,NULL,NULL,NULL,47.1,NULL,NULL,0,87,NULL,NULL,31.1,NULL,NULL,NULL,0,0,NULL,NULL,8.4,0,NULL,'2019-01-07 08:00',NULL,'W',NULL,NULL,NULL,41.8,2,5.4,NULL,5.4,20.0,65,NULL,'//cdn.apixu.com/weather/64x64/night/119.png',NULL,NULL,1036,'Cloudy',12.2,NULL,NULL,276,1546848000,0,41.8,NULL,8.4,NULL,12,19.7,NULL,NULL,NULL,NULL,NULL,NULL,43.3,NULL,47.1,6.3),
(1006,NULL,0,NULL,NULL,NULL,48.2,NULL,NULL,0,85,NULL,NULL,31.1,NULL,NULL,NULL,0,1,NULL,NULL,9.0,0,NULL,'2019-01-07 09:00',NULL,'W',NULL,NULL,NULL,42.6,0,5.9,NULL,5.9,20.0,64,NULL,'//cdn.apixu.com/weather/64x64/day/119.png',NULL,NULL,1036,'Cloudy',14.1,NULL,NULL,269,1546851600,0,42.6,NULL,9.0,NULL,12,22.7,NULL,NULL,NULL,NULL,NULL,NULL,43.9,NULL,48.2,6.6),
(1006,NULL,0,NULL,NULL,NULL,48.9,NULL,NULL,0,85,NULL,NULL,31.1,NULL,NULL,NULL,0,1,NULL,NULL,9.4,0,NULL,'2019-01-07 10:00',NULL,'W',NULL,NULL,NULL,43.3,2,6.3,NULL,6.3,20.0,67,NULL,'//cdn.apixu.com/weather/64x64/day/119.png',NULL,NULL,1035,'Cloudy',15.0,NULL,NULL,268,1546855200,0,43.3,NULL,9.4,NULL,12,24.1,NULL,NULL,NULL,NULL,NULL,NULL,44.6,NULL,48.9,7.0),
(1006,NULL,0,NULL,NULL,NULL,49.6,NULL,NULL,0,85,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,9.8,0,NULL,'2019-01-07 11:00',NULL,'W',NULL,NULL,NULL,43.9,2,6.6,NULL,6.6,20.0,69,NULL,'//cdn.apixu.com/weather/64x64/day/119.png',NULL,NULL,1035,'Cloudy',15.9,NULL,NULL,267,1546858800,0,43.9,NULL,9.8,NULL,12,25.6,NULL,NULL,NULL,NULL,NULL,NULL,45.3,NULL,49.6,7.4),
(1006,NULL,0,NULL,NULL,NULL,50.4,NULL,NULL,0,85,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,10.2,0,NULL,'2019-01-07 12:00',NULL,'W',NULL,NULL,NULL,44.6,0,7.0,NULL,7.0,20.0,72,NULL,'//cdn.apixu.com/weather/64x64/day/119.png',NULL,NULL,1034,'Cloudy',16.8,NULL,NULL,265,1546862400,0,44.6,NULL,10.2,NULL,12,27.0,NULL,NULL,NULL,NULL,NULL,NULL,46.0,NULL,50.4,7.8),
(1006,NULL,0,NULL,NULL,NULL,50.8,NULL,NULL,0,86,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,10.4,0,NULL,'2019-01-07 13:00',NULL,'W',NULL,NULL,NULL,45.0,2,7.2,NULL,7.2,19.4,81,NULL,'//cdn.apixu.com/weather/64x64/day/119.png',NULL,NULL,1034,'Cloudy',17.7,NULL,NULL,266,1546866000,0,45.0,NULL,10.4,NULL,12,28.6,NULL,NULL,NULL,NULL,NULL,NULL,46.6,NULL,50.8,8.1),
(1063,NULL,0,NULL,NULL,NULL,51.2,NULL,NULL,0,86,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,10.7,0,NULL,'2019-01-07 14:00',NULL,'W',NULL,NULL,NULL,45.3,21,7.4,NULL,7.4,18.7,91,NULL,'//cdn.apixu.com/weather/64x64/day/176.png',NULL,NULL,1033,'Patchy rain possible',18.7,NULL,NULL,268,1546869600,0,45.3,NULL,10.7,NULL,11,30.1,NULL,NULL,NULL,NULL,NULL,NULL,47.2,NULL,51.2,8.5),
(1063,NULL,0,NULL,NULL,NULL,51.6,NULL,NULL,0,87,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,10.9,0,NULL,'2019-01-07 15:00',NULL,'W',NULL,NULL,NULL,45.7,0,7.6,NULL,7.6,18.1,100,NULL,'//cdn.apixu.com/weather/64x64/day/176.png',NULL,NULL,1032,'Patchy rain possible',19.7,NULL,NULL,269,1546873200,0,45.7,NULL,10.9,NULL,11,31.7,NULL,NULL,NULL,NULL,NULL,NULL,47.8,NULL,51.6,8.8),
(1063,NULL,0,NULL,NULL,NULL,51.4,NULL,NULL,0,86,NULL,NULL,31.0,NULL,NULL,NULL,0,1,NULL,NULL,10.8,0,NULL,'2019-01-07 16:00',NULL,'W',NULL,NULL,NULL,45.2,21,7.3,NULL,7.3,18.1,99,NULL,'//cdn.apixu.com/weather/64x64/day/176.png',NULL,NULL,1032,'Patchy rain possible',20.7,NULL,NULL,272,1546876800,0,45.2,NULL,10.8,NULL,11,33.4,NULL,NULL,NULL,NULL,NULL,NULL,47.4,NULL,51.4,8.5),
(1009,NULL,0,NULL,NULL,NULL,51.1,NULL,NULL,0,85,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.6,0,NULL,'2019-01-07 17:00',NULL,'W',NULL,NULL,NULL,44.7,3,7.1,NULL,7.1,18.1,98,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1031,'Overcast',21.8,NULL,NULL,274,1546880400,0,44.7,NULL,10.6,NULL,11,35.0,NULL,NULL,NULL,NULL,NULL,NULL,46.9,NULL,51.1,8.3),
(1009,NULL,0,NULL,NULL,NULL,50.9,NULL,NULL,0,85,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.5,0,NULL,'2019-01-07 18:00',NULL,'W',NULL,NULL,NULL,44.2,0,6.8,NULL,6.8,18.1,97,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1031,'Overcast',22.8,NULL,NULL,277,1546884000,0,44.2,NULL,10.5,NULL,11,36.7,NULL,NULL,NULL,NULL,NULL,NULL,46.4,NULL,50.9,8.0),
(1009,NULL,0,NULL,NULL,NULL,50.9,NULL,NULL,0,85,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.5,0,NULL,'2019-01-07 19:00',NULL,'W',NULL,NULL,NULL,44.3,3,6.8,NULL,6.8,18.6,98,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1031,'Overcast',22.5,NULL,NULL,279,1546887600,0,44.3,NULL,10.5,NULL,11,36.2,NULL,NULL,NULL,NULL,NULL,NULL,46.5,NULL,50.9,8.1),
(1009,NULL,0,NULL,NULL,NULL,50.9,NULL,NULL,0,85,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.5,0,NULL,'2019-01-07 20:00',NULL,'WNW',NULL,NULL,NULL,44.4,3,6.9,NULL,6.9,19.2,99,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1030,'Overcast',22.2,NULL,NULL,281,1546891200,0,44.4,NULL,10.5,NULL,11,35.8,NULL,NULL,NULL,NULL,NULL,NULL,46.6,NULL,50.9,8.1),
(1009,NULL,0,NULL,NULL,NULL,50.9,NULL,NULL,0,86,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.5,0,NULL,'2019-01-07 21:00',NULL,'WNW',NULL,NULL,NULL,44.4,0,6.9,NULL,6.9,19.7,100,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1030,'Overcast',21.9,NULL,NULL,283,1546894800,0,44.4,NULL,10.5,NULL,12,35.3,NULL,NULL,NULL,NULL,NULL,NULL,46.8,NULL,50.9,8.2),
(1009,NULL,0,NULL,NULL,NULL,51.0,NULL,NULL,0,86,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.6,0,NULL,'2019-01-07 22:00',NULL,'WNW',NULL,NULL,NULL,44.7,3,7.0,NULL,7.0,19.6,100,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1030,'Overcast',21.5,NULL,NULL,288,1546898400,0,44.7,NULL,10.6,NULL,12,34.7,NULL,NULL,NULL,NULL,NULL,NULL,47.1,NULL,51.0,8.4),
(1009,NULL,0,NULL,NULL,NULL,51.1,NULL,NULL,0,87,NULL,NULL,30.9,NULL,NULL,NULL,0,0,NULL,NULL,10.6,0,NULL,'2019-01-07 23:00',NULL,'WNW',NULL,NULL,NULL,44.9,3,7.2,NULL,7.2,19.5,100,NULL,'//cdn.apixu.com/weather/64x64/night/122.png',NULL,NULL,1030,'Overcast',21.2,NULL,NULL,294,1546902000,0,44.9,NULL,10.6,NULL,12,34.1,NULL,NULL,NULL,NULL,NULL,NULL,47.4,NULL,51.1,8.5);
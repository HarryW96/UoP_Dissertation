create unlogged table weather_import (values json);

\copy customer_import from '*.json';

insert into json_weather_data
select p.*
from weather_import l
  cross join lateral json_populate_recordset(null::json_weather_data, values) as p;
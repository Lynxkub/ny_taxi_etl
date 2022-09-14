\connect ny_taxi_project


DROP TABLE IF EXISTS yellow_taxi;


CREATE TABLE yellow_taxi (
    index SERIAL,
    vendorid int,
    tpep_pickup_datetime timestamp,
    tpep_dropoff_datetime timestamp,
    passenger_count float,
    trip_distance float,
    ratecodeid float,
    store_and_fwd_flag varchar,
    pulocationid int,
    doLocationid int,
    payment_type int,
    fare_amount float,
    extra float,
    mta_tax float,
    tip_amount float,
    tolls_amount float,
    improvement_surcharge float,
    total_amount float,
    congestion_surcharge float,
    airport_fee float,
    PRIMARY KEY (index ,vendorid , tpep_pickup_datetime)
)PARTITION BY RANGE(tpep_pickup_datetime);


CREATE TABLE yellow_taxi_default
PARTITION OF yellow_taxi DEFAULT;

CREATE TABLE yellow_taxi_2022_01
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-01-01') TO ('2022-01-31');

CREATE TABLE yellow_taxi_2022_02
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-02-01') TO ('2022-02-28');

CREATE TABLE yellow_taxi_2022_03
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-03-01') TO ('2022-03-31');

CREATE TABLE yellow_taxi_2022_04
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-04-01') TO ('2022-04-30');

CREATE TABLE yellow_taxi_2022_05
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-05-01') TO ('2022-05-31');

CREATE TABLE yellow_taxi_2022_06
PARTITION OF yellow_taxi
FOR VALUES FROM ('2022-06-01') TO ('2022-06-30');
BEGIN;

CREATE SCHEMA IF NOT EXISTS sea_aff_housing;

CREATE TABLE IF NOT EXISTS sea_aff_housing.seattle_income_restricted_housing (
	property_name TEXT,
	property_address TEXT,
	zip_code INT,
	num_restricted_units TEXT,
	hud TEXT,
	sha TEXT,
	state_of_wa_or_county TEXT,
	wshfc TEXT,
	city_seattle TEXT,
	year_placed_in_service INT,
	council_distric TEXT
	);

DELETE FROM sea_aff_housing.seattle_income_restricted_housing;

COPY sea_aff_housing.seattle_income_restricted_housing FROM '/Users/modestlyawesome/Downloads/Galvanize/rent_and_income_restricted_housing.csv'
WITH DELIMITER ',' CSV HEADER;

COMMIT;

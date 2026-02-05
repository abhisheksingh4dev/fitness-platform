-- fitnessdb.t_diet_dtl definition

-- Drop table

-- DROP TABLE fitnessdb.t_diet_dtl;

CREATE TABLE fitnessdb.t_diet_dtl (
	diet_id int8 NOT NULL,
	user_id int8 NOT NULL,
	calorie_intake int4 NULL,
	protein_intake int4 NULL,
	carbs_intake int4 NULL,
	created_by varchar(10) NOT NULL,
	created_on timestamp NOT NULL,
	deleted_flag bool NOT NULL,
	CONSTRAINT t_diet_dtl_pkey PRIMARY KEY (diet_id)
);

-- fitnessdb.t_fitness_activity definition

-- Drop table

-- DROP TABLE fitnessdb.t_fitness_activity;

CREATE TABLE fitnessdb.t_fitness_activity (
	activity_id int8 NOT NULL,
	user_id int8 NOT NULL,
	activity_category varchar(20) NOT NULL,
	activity_type varchar(30) NOT NULL,
	activity_date date NOT NULL,
	duration_minutes int4 NULL,
	calories_burned int4 NULL,
	trainer_id int8 NULL,
	weight_kg int8 NULL,
	created_on timestamp NULL,
	created_by varchar(15) NULL,
	deleted_flag bool NULL,
	CONSTRAINT t_fitness_activity_pkey PRIMARY KEY (activity_id)
);

-- fitnessdb.t_user definition

-- Drop table

-- DROP TABLE fitnessdb.t_user;

CREATE TABLE fitnessdb.t_user (
	user_id bigserial NOT NULL,
	user_name varchar(10) NOT NULL,
	"password" varchar(30) NOT NULL,
	email varchar(30) NULL,
	phone_no varchar(10) NULL,
	user_status varchar(10) NOT NULL,
	created_by varchar(10) NOT NULL,
	created_on timestamp NOT NULL,
	updated_by varchar(10) NULL,
	update_on timestamp NULL,
	deleted_flag bool NOT NULL,
	CONSTRAINT t_user_pkey PRIMARY KEY (user_id)
);

-- fitnessdb.t_user_dtl definition

-- Drop table

-- DROP TABLE fitnessdb.t_user_dtl;

CREATE TABLE fitnessdb.t_user_dtl (
	user_dtl_id bigserial NOT NULL,
	user_id bigserial NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	gender varchar(15) NOT NULL,
	dob date NOT NULL,
	height_cm int4 NOT NULL,
	weight_kg int4 NOT NULL,
	city varchar(20) NULL,
	country varchar(20) NOT NULL,
	zipcode varchar(20) NOT NULL,
	address text NOT NULL,
	fitness_level varchar(10) NOT NULL,
	committed_workout_hours int4 NOT NULL,
	smoker_status bool NULL,
	blood_pressure varchar(20) NULL,
	pre_existing_conditions text NULL,
	diet_type varchar(15) NOT NULL,
	created_by varchar(10) NOT NULL,
	created_on timestamp NOT NULL,
	updated_by varchar(10) NULL,
	update_on timestamp NULL,
	deleted_flag bool NOT NULL,
	fitness_goal varchar(20) NULL,
	CONSTRAINT t_user_dtl_pkey PRIMARY KEY (user_dtl_id)
);


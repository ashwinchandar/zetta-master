CREATE TABLE public.admin_register
(
  admin_id integer NOT NULL DEFAULT nextval('admin_register_admin_id_seq'::regclass),
  admin_card_no character varying(10) NOT NULL,
  admin_name character(30),
  dob date,
  department character varying(50),
  designation character varying(50),
  email character varying(50),
  mobile numeric(20,0),
  location character varying(50),
  role character(20),
  password1 character varying(50),
  CONSTRAINT admin_register_pkey PRIMARY KEY (admin_id),
  CONSTRAINT admin_register_admin_card_no_key UNIQUE (admin_card_no),
  CONSTRAINT admin_register_email_key UNIQUE (email)
);

CREATE TABLE public.zemployees
(
  employeeid integer NOT NULL DEFAULT nextval('emp_seq'::regclass),
  name character varying(30) NOT NULL,
  gender character(10) NOT NULL,
  dob date NOT NULL,
  department character varying(30) NOT NULL,
  designation character varying(30) NOT NULL,
  extention numeric(10,0) NOT NULL,
  email character varying(30) NOT NULL,
  skype character varying(30) NOT NULL,
  location character varying(30) NOT NULL,
  password character varying(30) NOT NULL,
  mobile numeric(20,0),
  emp_card_no character varying(40),
  role character varying(15),
  CONSTRAINT empconstraint UNIQUE (employeeid)
);

CREATE TABLE public.employee_register
(
  employee_id integer NOT NULL DEFAULT nextval('employee_register_employee_id_seq'::regclass),
  emp_card_no character varying(10) NOT NULL,
  name character(30),
  dob date,
  department character varying(50),
  designation character varying(50),
  email character varying(50),
  mobile numeric(20,0),
  location character varying(50),
  CONSTRAINT employee_register_pkey PRIMARY KEY (employee_id),
  CONSTRAINT employee_register_email_key UNIQUE (email),
  CONSTRAINT employee_register_emp_card_no_key UNIQUE (emp_card_no)
);

CREATE TABLE org_chart(
org_id serial PRIMARY KEY,
title CHARACTER(30),
org_file bytea
);

CREATE TABLE announcement(
announce_id serial PRIMARY KEY,
title CHARACTER VARYING(30),
announcement CHARACTER VARYING(200),
date TIMESTAMP WITH TIME ZONE
);

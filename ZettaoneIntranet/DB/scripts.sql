CREATE TABLE public.admin_register
(
  admin_id integer NOT NULL DEFAULT nextval('admin_register_admin_id_seq'::regclass),
  admin_card_no character varying(10) NOT NULL,
  admin_name character(30) NOT NULL,
  dob date NOT NULL,
  department character varying(50) NOT NULL,
  designation character varying(50) NOT NULL,
  email character varying(50) NOT NULL,
  mobile numeric(20,0) NOT NULL,
  location character varying(50) NOT NULL,
  role character(20) NOT NULL,
  password1 character varying(50) NOT NULL,
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
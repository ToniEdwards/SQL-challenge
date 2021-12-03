-- SQLEmployee
CREATE TABLE "departments" (
    "dept_no" character varying(50) NOT NULL,
    "dept_name" character varying(50) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_managers" (
    "dept_no" character varying(50) NOT NULL,    
	"emp_no" integer NOT NULL
);
	 

CREATE TABLE "dept_employees" (
    "emp_no" integer  NOT NULL,
    "dept_no" character varying(50) NOT NULL
);

CREATE TABLE "titles" (
    "title_id" character varying(10) NOT NULL,
    "title" character varying(50) NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" integer NOT NULL,
    "emp_title" character varying(50) NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" character varying(50) NOT NULL,
    "last_name" character varying(50) NOT NULL,
    "sex" character varying(50) NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" integer   NOT NULL,
    "salary" integer   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "dept_managers" ADD CONSTRAINT "fk_dept_managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_employees" ADD CONSTRAINT "fk_dept_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employees" ("emp_no");



CREATE TABLE departments(
          dept_no VARCHAR NOT NULL PRIMARY KEY,
		  dept_name VARCHAR NOT NULL
		  
		 
);

CREATE TABLE dept_emp(
           emp_no INT NOT NULL,
		   dept_no VARCHAR NOT NULL
		   	 
);

CREATE TABLE dept_manager(
             dept_no VARCHAR NOT NULL,
			 emp_no INT NOT NULL PRIMARY KEY
		     			 
);

CREATE TABLE employees(
             emp_no INT NOT NULL PRIMARY KEY,
			 emp_title_id VARCHAR NOT NULL,
			 birth_date TEXT,
			 first_name VARCHAR NOT NULL,
			 last_name VARCHAR NOT NULL,
			 sex VARCHAR NOT NULL,
			 hire_date TEXT,
			 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
			 
);

CREATE TABLE salaries(
            emp_no INT NOT NULL PRIMARY KEY,
			salary INT NOT NULL	
);

CREATE TABLE titles(
             title_id VARCHAR NOT NULL PRIMARY KEY,
			 title VARCHAR NOT NULL
			 
);



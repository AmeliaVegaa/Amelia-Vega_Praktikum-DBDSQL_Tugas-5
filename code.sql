select concat(' ',dept_name, building) as PROFIL
from sampel_university.department;

select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
from sampel_university.department;

select substr(dept_name,1,3) as KARAKTER
from sampel_university.department;

select title,length(title) as TOTAL_CHAR
from sampel_university.course;

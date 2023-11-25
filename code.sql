# 1. FUNGSI SKALAR
select concat(ID,name) as profil
from sampel_university.student;

select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
from sampel_university.department;

select substr(dept_name,1,3) as KARAKTER
from sampel_university.department;

select title,length (title) as TOTAL_CHAR
from sampel_university.course;

select name, replace (name,'JONO','BUDI') as NAMA_BARU
from akademik.mahasiswa ;


# 2. FUNGSI AGGREGASI
select i.dept_name, sum(i.salary) "Salary Sum" from sampel_university.instructor i group by i.dept_name;

select count(c.course_id) "Jumlah course yang ada" from sampel_university.course c;

select i.dept_name, avg(i.salary) 'avg salary' from sampel_university.instructor i group by i.dept_name;

select i.name, min(i.salary) from sampel_university.instructor i;

select c.title, max(c.credits) "max cred" from sampel_university.course c;

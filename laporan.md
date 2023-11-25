# SCALAR AND AGGREGATE FUNCTIONS IN SQL
Praktikum 5 - Amelia Vega - 225150600111021 - DBDSQL Kelas A

(Pada SQL terdapat perintah ``` JOIN ``` untuk mengambil data dari beberapa tabel menjadi satu query baru).
#
#
### SCALAR FUNCTIONS
1. CONCAT
   ```
   select concat(ID,name) as profil
   from sampel_university.student;
   ````

2. SUBSTR_INDEX
    ```
    select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
    from sampel_university.department;
    ```

3. Substr.
    ```
    select substr(dept_name,1,3) as KARAKTER
    from sampel_university.department;
    ```
4. TOTAL_CHAR.
    ```
    select title,length (title) as TOTAL_CHAR
    from sampel_university.course;
    ```
5. REPLACE.
    ```
    select name, replace (name,'JONO','BUDI') as NAMA_BARU
    from akademik.mahasiswa ;
    ```
#
#
### AGGREGATE FUNCTIONS
1.  SUM
    ```
    select i.dept_name, sum(i.salary) "Salary Sum" from sampel_university.instructor i group by i.dept_name;
    ```

2.  COUNT
    ```
    select count(c.course_id) "Jumlah course yang ada" from sampel_university.course c;
    ```

3.  AVG
    ```
    select i.dept_name, avg(i.salary) 'avg salary' from sampel_university.instructor i group by i.dept_name;
    ```

4.  MIN
    ```
    select i.name, min(i.salary) from sampel_university.instructor i;
    ```

5.  MAX
    ```
    select c.title, max(c.credits) from sampel_university.course c;
    ```

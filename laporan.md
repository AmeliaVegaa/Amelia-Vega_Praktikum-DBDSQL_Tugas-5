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
   ![Screenshot 2023-11-29 150055](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/f6725263-51bf-4125-b194-24e31ae48940)

2. SUBSTR_INDEX
    ```
    select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
    from sampel_university.department;
    ```
    ![Screenshot 2023-11-29 150125](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/9e1844aa-bcba-4f23-86e9-769aebf31f22)

3. Substr.
    ```
    select substr(dept_name,1,3) as KARAKTER
    from sampel_university.department;
    ```
    ![Screenshot 2023-11-29 150207](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/e95e6d02-8d71-4b46-a71a-649a703b3860)

4. TOTAL_CHAR.
    ```
    select title,length (title) as TOTAL_CHAR
    from sampel_university.course;
    ```
    ![Screenshot 2023-11-29 150348](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/133226be-cffc-40cd-8360-2e5cf0adc67a)

5. REPLACE.
    ```
    select distinct replace(s.dept_name, ' ', "[tadinya space]") from sampel_university.student s;
    ```
    ![Screenshot 2023-11-29 151520](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/8dd99290-f543-4313-bce0-b5efff10da6e)

#
#
### AGGREGATE FUNCTIONS
1.  SUM
    ```
    select i.dept_name, sum(i.salary) "Salary Sum" from sampel_university.instructor i group by i.dept_name;
    ```
    ![Screenshot 2023-11-29 150808](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/498a7fe4-8165-41ba-9696-e9a722605a14)

2.  COUNT
    ```
    select count(c.course_id) "Jumlah course yang ada" from sampel_university.course c;
    ```
    ![Screenshot 2023-11-29 150848](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/7d8d29a0-4593-42d1-88d6-02cb2b8aee1a)

3.  AVG
    ```
    select i.dept_name, avg(i.salary) 'avg salary' from sampel_university.instructor i group by i.dept_name;
    ```
    ![Screenshot 2023-11-29 150921](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/d8cf5bf7-0f0d-4fd3-9ec7-03e1cb295e76)

4.  MIN
    ```
    select i.name, min(i.salary) from sampel_university.instructor i;
    ```
    ![Screenshot 2023-11-29 151010](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/53409a7e-541a-46f0-a105-fa6e963c0fe1)

5.  MAX
    ```
    select c.title, max(c.credits) from sampel_university.course c;
    ```
    ![Screenshot 2023-11-29 151052](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-5/assets/133181467/789f6ceb-7e45-45c9-b447-7c6133770cf7)

    

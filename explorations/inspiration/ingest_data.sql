INSTALL spatial;
LOAD spatial;

CREATE TABLE IF NOT EXISTS students AS (
    SELECT * FROM st_read('student_data.xlsx', layer='Blad1', open_options = ['HEADERS=FORCE'])
    );
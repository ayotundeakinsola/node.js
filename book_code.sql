# # Select CONCAT(substring(title, 1, 10),'...') AS 'short title' from books; 

# Select concat(substr(replace(reverse(title), 'e', '3'), 1, 10), '....') As 'Short Title' from books; 

# # Select substr(title, 1, 10) from books; 

# # replace(title, 'e', '3') from books; 

Select concat (author_fname, ' is ', char_length(author_fname), ' characters long. ') as 'Length' from books; 


CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);
CREATE TABLE papers(
    title VARCHAR(100),
    grade DECIMAL(4,2),
    student_id INT
);


INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


select first_name, ifnull(avg(grade), '0') as average, case 
WHEN avg(grade) >= 89 THEN 'PASSING'
ELSE 'FAILING'
END as passing_status
from students left join papers on students.id=papers.student_id group by first_name order by average desc;
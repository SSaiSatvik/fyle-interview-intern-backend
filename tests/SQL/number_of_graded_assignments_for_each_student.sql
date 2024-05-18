-- Write query to get number of graded assignments for each student:

SELECT st.id as student_id, COUNT(ass.state ) as number_of_graded
FROM students as st
LEFT JOIN assignments as ass
ON st.id==ass.student_id
WHERE ass.state=='GRADED'
GROUP BY st.id
ORDER BY st.id;

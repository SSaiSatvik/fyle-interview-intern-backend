-- Write query to find the number of grade A's given by the teacher who has graded the most assignments


SELECT COUNT(*) as num_grade_A
FROM assignments as ass
WHERE ass.grade=='A' and ass.teacher_id = (
    SELECT teacher_id
    FROM (
        SELECT ass.teacher_id, COUNT(*) as number_of_graded
        FROM assignments as ass
        WHERE ass.state=='GRADED'
        GROUP BY ass.teacher_id
        ORDER BY number_of_graded DESC
        LIMIT 1
    )
);

    

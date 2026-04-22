FROM (
    SELECT student_id, SUM(amount) as total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
)
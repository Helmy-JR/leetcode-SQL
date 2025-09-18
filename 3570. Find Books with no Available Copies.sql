# Write your MySQL query statement below
SELECT l.book_id , title , author, genre , publication_year , total_copies AS current_borrowers
FROM library_books l
JOIN borrowing_records b
ON l.book_id = b.book_id
GROUP BY  l.book_id
HAVING COUNT(*) - COUNT(return_date) = total_copies
ORDER BY total_copies DESC , title ASC

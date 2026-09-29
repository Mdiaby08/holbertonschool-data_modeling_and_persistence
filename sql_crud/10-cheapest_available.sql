SELECT title, price, stock
FROM books
WHERE stock > 0
ORDER BY price ASC
LIMIT 4;
SELECT genre, stock SUM(stock) FROM books
GROUP BY genre;
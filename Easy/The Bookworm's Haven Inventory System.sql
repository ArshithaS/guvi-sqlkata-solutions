/*
Problem: The Bookworm's Haven Inventory System
Difficulty: Easy
Platform: HCL GUVI SQLKata

Q1: Calculate the total inventory value of all books.
Q2: Display unique genres and the number of books in each genre.
Q3: Apply a 10% discount to books published before 1950 and display original and updated prices.
Q4: List books that are either in the Fiction genre or priced below $12.
Q5: Find books with stock greater than 10, calculate days to sell all copies, and sort by days in descending order.
*/
-- Q1
... select sum(price*stock) as total_value
from books;

-- Q2
... select genre,count(genre) as total_genre
from books
group by genre
order by total_genre desc;

-- Q3
...  Select title, price*0.90 as new_price, price AS price FROM books
WHERE publication_year < 1950;
 
-- Q4
... select title, author,genre,price
from books
where genre='Fiction' or price< 12;

-- Q5
... select title, stock as current_stock, stock as days_to_sell
from books 
where stock>10
order by days_to_sell desc;

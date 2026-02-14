# Library Database SQL Practice

## Database Schema

- **authors** (`author_id`, `first_name`, `last_name`, `birth_date`, `biography`, `created_at`)
- **books** (`book_id`, `title`, `author_id`, `description`, `created_at`)
- **genres** (`genre_id`, `name`, `description`, `created_at`)
- **book_genres** (`book_id`, `genre_id`) — junction table for many-to-many relationship

---

## Level 1

### Task 1: Basic SELECT
**Write a query to display all books with their title and description, ordered by title alphabetically.**

<details>
<summary>Expected columns</summary>

`title`, `description`
</details>

---

### Task 2: Simple JOIN
**List all books along with their author's first and last name. Include the book title and author name only.**

<details>
<summary>Expected columns</summary>

`book_title`, `author_first_name`, `author_last_name`
</details>

---

### Task 3: Aggregation with COUNT
**Count how many books each author has written. Show the author's full name and the number of books. Include authors who haven't written any books (if any).**

<details>
<summary>Expected columns</summary>

`author_name`, `book_count`
</details>

---

### Task 4: Filtering with WHERE
**Find all books that belong to the 'Fiction' genre. Display the book title, author name, and genre name.**

<details>
<summary>Expected columns</summary>

`book_title`, `author_name`, `genre_name`
</details>

---

### Task 5: Multiple JOINs with Aggregation
**For each genre, show the genre name and the number of books in that genre. Sort by the count in descending order.**

<details>
<summary>Expected columns</summary>

`genre_name`, `book_count`
</details>

---

## Level 2

### Task 6: Subquery
**Find authors who have written more books than the average number of books per author. Show author name and their book count.**

<details>
<summary>Expected columns</summary>

`author_name`, `book_count`
</details>

<details>
<summary>Hint</summary>

Calculate the average books per author in a subquery, then compare each author's count against it.
</details>

---

### Task 7: Advanced Filtering with HAVING
**Find books that belong to at least 3 different genres. Display the book title, author name, and the number of genres they belong to.**

<details>
<summary>Expected columns</summary>

`book_title`, `author_name`, `genre_count`
</details>

<details>
<summary>Hint</summary>

Use `GROUP BY` with `HAVING COUNT(DISTINCT genre_id) >= 3`
</details>

---

### Task 8: Complex JOIN with HAVING
**Find genres that have at least 2 books written by British authors. Show genre name and the count of such books.**

<details>
<summary>Expected columns</summary>

`genre_name`, `british_books_count`
</details>

<details>
<summary>Hint</summary>

British authors are those with nationality containing 'British' (you may need to add this column or infer from authors like Orwell, Austen, Christie, Tolkien)
</details>

---

### Task 9: Window Function
**Rank authors by their number of books. Show author name, book count, and their rank (1 for most books, 2 for second most, etc.).**

<details>
<summary>Expected columns</summary>

`author_name`, `book_count`, `rank`
</details>

<details>
<summary>Hint</summary>

Use `RANK()` or `DENSE_RANK()` window function with `ORDER BY book_count DESC`
</details>

---

### Task 10: Multi-level Aggregation
**Find the top genre for each author (the genre they've written most books in). Show author name, genre name, and how many books they've written in that genre.**

<details>
<summary>Expected columns</summary>

`author_name`, `top_genre`, `books_in_genre`
</details>

<details>
<summary>Hint</summary>

This is a classic "find the maximum per group" problem. Consider using `DISTINCT ON`, window functions with `ROW_NUMBER()`, or a correlated subquery.
</details>


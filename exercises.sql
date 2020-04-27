select reverse ('Why does my cat look at me with such hatred?');


select replace (title, ' ', '->') as title from books;

select author_lname as forwards, reverse(author_lname) as backwards from books;

select upper(concat(author_fname, ' ', author_lname)) as 'full name in caps' from books;

select concat(title, ' was released in ', released_year) as blurb from books;

select title, char_length(title)as 'character count' from books;

select concat(substr(title, 1, 10), '...')as 'short title',  concat(author_lname, ',', author_fname) as 'author',  concat(stock_quantity, 'in stock') as 'quantity' from books;

select title, pages from books where title like '%Amazing%';

select concat(title, ' - ', released_year) as summary from books order by released_year desc limit 3;

select title, author_lname from books where author_lname like '______ _______';

select upper(concat('my favorite author is', author_fname, ' ', author_lname, ' !')) AS yell from books order by author_lname;

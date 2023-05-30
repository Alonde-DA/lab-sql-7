-- In the table actor, which are the actors whose last names are not repeated? 

select last_name, count(*)
from actor
group by last_name
having count(*) = 1;

-- last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once

select last_name, count(*)
from actor
Group by last_name
order by count(*) desc;

-- Using the rental table, find out how many rentals were processed by each employee.

select staff_id, count(rental_id) as total_rentals
from rental
Group by staff_id;

-- Using the film table, find out how many films were released each year

select release_year, count(*) as films_per_year
from film
group by release_year;

-- Using the film table, find out for each rating how many films were there.

select rating, count(*)
from film
group by rating;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select rating, round(avg(length), 2)
from film
Group by rating;

-- Which kind of movies (rating) have a mean duration of more than two hours?

select rating, round(avg(length), 2) as mean_length
from film
Group by rating
having mean_length > 120; 


use dvdrental;

-- Anonimous function

do $$
  <<first_block>>
declare
  film_count integer := 0;
begin
  -- get the number of films
  select count(*) into film_count from film;
  -- display a message
  raise notice 'The number of films is %', film_count;
end
$$

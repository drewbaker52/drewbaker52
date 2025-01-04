-- 1. Selecting the first 10 rows
SELECT * 
FROM "yelp_restaurants_cleaned" 
LIMIT 10;

-- 2. 10 Most Popular Restaurants by Review Count
SELECT name, review_count
FROM "yelp_restaurants_cleaned"
ORDER BY review_count DESC
LIMIT 10;

-- 3. All Italian Restaurants with a 5 star rating
SELECT name, primary_category, stars
FROM "yelp_restaurants_cleaned"
WHERE primary_category = 'Italian' AND stars = 5;

-- 4. All Cafes or Breakfast spots in Zip code 19107
SELECT name, primary_category, stars, postal_code
FROM "yelp_restaurants_cleaned"
WHERE (primary_category = 'Cafe' OR primary_category = 'Breakfast & Brunch')
AND postal_code = '19107'
ORDER BY stars DESC;


-- 5. The average rating of each restaurant category
SELECT primary_category, AVG(stars) AS average_rating
FROM "yelp_restaurants_cleaned"
GROUP BY primary_category
ORDER BY average_rating DESC;

-- 6. Finding the Number of Restaurants in each zip code
SELECT postal_code, COUNT(*) AS restaurant_count
FROM "yelp_restaurants_cleaned"
GROUP BY postal_code
ORDER BY restaurant_count DESC;

-- 7. All Restaurants with a rating of 4.5 or higher
SELECT name, stars
FROM "yelp_restaurants_cleaned"
WHERE stars >= 4.5
ORDER BY stars DESC;

-- 8. Finding the number of restaurants in each category 
SELECT primary_category, COUNT(*) AS restaurant_count
FROM "yelp_restaurants_cleaned"
GROUP BY primary_category
ORDER BY restaurant_count DESC;


Use data;
-- VIEWING MODES
SELECT @@GLOBAL.sql_mode;
SELECT @@session.sql_mode;

SELECT 3/0;
SHOW WARNINGS;

SET SESSION sql_mode='IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

SELECT 3/0;
SHOW WARNINGS;

DESC reviews;
INSERT INTO reviews(rating) values('hi');
SELECT *FROM reviews;
SHOW WARNINGS;
SET SESSION sql_mode= 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

INSERT INTO reviews(rating) values('hi');
SHOW WARNINGS;
DELETE FROM reviews where rating=0;

SET SESSION sql_mode= 'IGNORE_SPACE,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

SELECT title,rating from series
INNER JOIN reviews ON series.id=reviews.series_id GROUP BY title;
--Just takes the first rating of each group

SELECT DATE('2010-10-00')

SET SESSION sql_mode= 'IGNORE_SPACE,NO_ENGINE_SUBSTITUTION';
SELECT DATE('2010-10-00');
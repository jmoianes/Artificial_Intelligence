SELECT SUM(hospitalizedIncrease) FROM all_states_history WHERE state = 'NY' AND date LIKE '2020-10%';
SELECT SUM(hospitalizedIncrease) FROM all_states_history WHERE date LIKE '2020-10%';

SELECT
  SUM(CASE WHEN state = 'TX' THEN "hospitalizedIncrease" ELSE 0 END) AS texas_hospitalized_increase,
  SUM("hospitalizedIncrease") AS total_hospitalized_increase
FROM all_states_history
WHERE date LIKE '2020-07%'
LIMIT 30;


-- 180. Consecutive Numbers

-- Table: Logs

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | num         | varchar |
-- +-------------+---------+
-- id is the primary key for this table.
-- id is an autoincrement column.
 

-- Write an SQL query to find all numbers that appear at least three times consecutively.

-- Return the result table in any order.

-- The query result format is in the following example.

 

-- Example 1:

-- Input: 
-- Logs table:
-- +----+-----+
-- | id | num |
-- +----+-----+
-- | 1  | 1   |
-- | 2  | 1   |
-- | 3  | 1   |
-- | 4  | 2   |
-- | 5  | 1   |
-- | 6  | 2   |
-- | 7  | 2   |
-- +----+-----+
-- Output: 
-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+
-- Explanation: 1 is the only number that appears consecutively for at least three times.



-- Solution:

# Write your MySQL query statement below

SELECT
    num AS ConsecutiveNums
FROM
    Logs l
WHERE 
    (
        (id + 1, num) 
        IN
        (
            SELECT * FROM Logs
        )
    )
    AND
    (
        (id + 2, num) 
        IN
        (
            SELECT * FROM Logs
        )
    )
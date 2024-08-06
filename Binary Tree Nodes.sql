SELECT N as node,
CASE
    WHEN P IS NULL THEN 'Root'
    WHEN (SELECT COUNT(N) FROM BST WHERE P = node) > 0 THEN 'Inner'
    ELSE 'Leaf'
END as node_type
FROM BST
ORDER BY N;

-- the following renders error
-- SELECT N,
-- CASE
--     WHEN P IS NULL THEN 'Root'
--     WHEN (SELECT COUNT(N) FROM BST WHERE P = N) > 0 THEN 'Inner'
--     ELSE 'Leaf'
-- END as node_type
-- FROM BST
-- ORDER BY N;
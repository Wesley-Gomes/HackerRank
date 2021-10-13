SELECT  w.id, wp.age, w.coins_needed, w.power
FROM    WANDS w, WANDS_PROPERTY wp
WHERE   w.code         = wp.code
AND     wp.is_evil     = 0
AND     w.coins_needed = (SELECT MIN(coins_needed) FROM Wands WHERE code = w.code AND power = w.power)
ORDER BY w.power DESC, wp.age DESC;
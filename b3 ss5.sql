SELECT driver_id, status, trust_score, distance_km
FROM Drivers
WHERE status = 'AVAILABLE'
AND trust_score >= 80
ORDER BY distance_km ASC, trust_score DESC;
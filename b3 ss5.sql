-- 1. Phân tích bài toán (I/O)
-- INPUT: min_trust_score, restaurant_id
-- Kiểm tra đầu vào TRƯỚC KHI gọi SQL:
-- IF min_trust_score < 0
-- -> SET min_trust_score = 0 
-- -> Log cảnh báo Admin nhập sai
-- 	ELSE → tiếp tục bình thường
-- 2 thực hiện
SELECT driver_id, status, trust_score, distance_km
FROM Drivers
WHERE status = 'AVAILABLE'
AND trust_score >= 80
ORDER BY distance_km ASC, trust_score DESC;

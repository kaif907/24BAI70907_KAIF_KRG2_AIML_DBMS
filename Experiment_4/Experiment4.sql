-- =====================================
-- Problem Statement 1
-- =====================================
DO $$
DECLARE
    num INTEGER := 5;
BEGIN
    IF num > 0 THEN
        RAISE NOTICE 'The number is positive.';
    ELSE
        RAISE NOTICE 'The number is non-positive.';
    END IF;
END $$;



-- =====================================
-- Problem Statement 2
-- =====================================
DO $$
DECLARE
    marks INTEGER := 78;
BEGIN
    IF marks >= 90 THEN
        RAISE NOTICE 'Grade: A';
    ELSIF marks >= 75 THEN
        RAISE NOTICE 'Grade: B';
    ELSIF marks >= 60 THEN
        RAISE NOTICE 'Grade: C';
    ELSIF marks >= 40 THEN
        RAISE NOTICE 'Grade: D';
    ELSE
        RAISE NOTICE 'Grade: F (Fail)';
    END IF;
END $$;



-- =====================================
-- Problem Statement 3
-- =====================================
DO $$
DECLARE
    marks INTEGER := 78;
BEGIN
    IF marks >= 90 THEN
        RAISE NOTICE 'Performance: Outstanding';
    ELSIF marks >= 75 THEN
        RAISE NOTICE 'Performance: Very Good';
    ELSIF marks >= 60 THEN
        RAISE NOTICE 'Performance: Good';
    ELSIF marks >= 40 THEN
        RAISE NOTICE 'Performance: Average';
    ELSE
        RAISE NOTICE 'Performance: Poor';
    END IF;
END $$;

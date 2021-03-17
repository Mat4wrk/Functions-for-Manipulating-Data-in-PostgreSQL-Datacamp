# Select the current timestamp without timezone and alias it as right_now.
--Select the current timestamp without timezone
SELECT CURRENT_TIMESTAMP::timestamp AS right_now;

# Now select a timestamp five days from now and alias it as five_days_from_now.
SELECT
	CURRENT_TIMESTAMP::timestamp AS right_now,
    INTERVAL '5 days' + CURRENT_TIMESTAMP AS five_days_from_now;
    
# Finally, let's use a second-level precision with no fractional digits for both the right_now and five_days_from_now fields.
SELECT
	CURRENT_TIMESTAMP(2)::timestamp AS right_now,
    interval '5 days' + CURRENT_TIMESTAMP(2) AS five_days_from_now;

-- check date format on my sql developer
SELECT 
    value
FROM V$NLS_PARAMETERS
WHERE
    parameter = 'NLS_DATE_FORMAT';
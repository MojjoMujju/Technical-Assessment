SELECT
	crmcallogs."rand client",
    crmevents.product,
	crmevents.issue,
    AVG(CAST(crmcallogs.ser_time AS INTERVAL HOUR TO SECOND)) AS avg_time
FROM
	crmcallogs
LEFT JOIN
	crmevents ON crmcallogs."Complaint ID" = crmevents."Complaint ID"
GROUP BY 
	crmcallogs."rand client", crmevents.product, crmevents.issue;
	
	
select ser_time from crmcallogs;
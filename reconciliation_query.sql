SELECT 
    p.Campaign_Name,
    p.Platform_Spend,
    f.Approved_Invoice,
    ROUND(p.Platform_Spend - f.Approved_Invoice, 2) AS Discrepancy_Amount,
    CASE 
        WHEN ABS(p.Platform_Spend - f.Approved_Invoice) > 100 THEN 'Investigation Required'
        ELSE 'Matched'
    END AS Audit_Status
FROM platform_data p
JOIN internal_finance f ON p.Campaign_ID = f.Campaign_ID;

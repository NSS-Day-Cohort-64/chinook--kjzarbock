SELECT COUNT(*) as InvoiceCount, strftime('%Y', InvoiceDate) as Year
FROM Invoice
WHERE strftime('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY Year;

SELECT COUNT(*) AS InvoiceCount, '2009' AS Year
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
UNION
SELECT COUNT(*) AS InvoiceCount, '2011' AS Year
FROM Invoice
WHERE InvoiceDate LIKE '2011%'
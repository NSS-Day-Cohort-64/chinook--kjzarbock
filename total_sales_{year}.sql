SELECT SUM(Total) AS TotalSales2009
FROM Invoice
WHERE InvoiceDate LIKE '2009%';

SELECT SUM(Total) AS TotalSales2011
FROM Invoice
WHERE InvoiceDate LIKE '2011%';

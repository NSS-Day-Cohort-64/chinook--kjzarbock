SELECT InvoiceId, COUNT(*) AS LineItemCount
FROM InvoiceLine
GROUP BY InvoiceId;

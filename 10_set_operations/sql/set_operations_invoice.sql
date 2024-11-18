
SELECT
	COUNT(*)
FROM
	staging.invoice_202408


SELECT
	COUNT(*)
FROM
	(
	SELECT
		*
	FROM
		staging.invoice_202408
UNION
	SELECT
		*
	FROM
		staging.invoice_202410) AS combined_invoices;
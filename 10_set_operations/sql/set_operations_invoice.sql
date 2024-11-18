
SELECT
	COUNT(*)
FROM
	staging.invoice_202408


-- total number of rows in 202408 and 202410 combined removing duplicates 
SELECT
	COUNT(*) AS combined_number_rows 
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
		
-- combines all rows in 202408 and 202410 and removing duplicates
SELECT
	*
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
	
	

SELECT
	COUNT(*) AS number_common_supplier
FROM
	(
	SELECT
		Leverantör
	FROM
		staging.invoice_202408
INTERSECT
	SELECT
		Leverantör
	FROM
		staging.invoice_202410) AS combined_invoices;
		
	
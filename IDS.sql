SET lc_monetary = 'en_US';

SELECT * FROM public."International Debt  Statistics"
LIMIT 10;

SELECT
	COUNT(DISTINCT "Country Name") AS "Total Distinct Countries"
FROM public."International Debt  Statistics";

SELECT DISTINCT "Series Code" AS "Distinct Series Code"
FROM public."International Debt  Statistics"
ORDER BY "Distinct Series Code";

SELECT
	SUM("DEBT") AS "Total Debt"
FROM public."International Debt  Statistics";

SELECT
	"Country Name",
	SUM ("DEBT") AS "Total Debt"
FROM public."International Debt  Statistics"
GROUP BY "Country Name"
ORDER BY "Total Debt" DESC
LIMIT 3;

ALTER TABLE public."International Debt  Statistics"
ALTER COLUMN "DEBT" TYPE bigint
USING "DEBT"::numeric;

SELECT
	"Series Name"  AS "Debt Code",
	"Series Name",
	AVG("DEBT") AS "Average Debt"
FROM public."International Debt  Statistics"
GROUP BY "Debt Code","Series Name"
ORDER BY "Average Debt" DESC
LIMIT 10;

ALTER TABLE public."International Debt  Statistics"
ALTER COLUMN "DEBT" TYPE money;

SELECT 
	"Series Code",
	COUNT("Series Code") AS "Series Count"
FROM public."International Debt  Statistics"
GROUP BY "Series Code"
ORDER BY "Series Count" DESC, "Series Code" DESC
LIMIT 25;

SELECT
	"Country Name",
	"Series Name",
	MAX("DEBT") AS "Maximum Debt"
FROM public."International Debt  Statistics"
GROUP BY "Country Name","Series Name"
ORDER BY "Maximum Debt" DESC
LIMIT 10;



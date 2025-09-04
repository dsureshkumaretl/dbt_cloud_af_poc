WITH sample_af_pocs AS (
    SELECT
        count(*) AS tbl_count,
        'PHARMACY_CLAIM' AS table_name
    FROM {{ source('raw_data', 'pharmacy_claim') }}
    UNION DISTINCT
    SELECT
        count(*) AS tbl_count,
        'PHARMACY_CLAIM_PARTD' AS table_name
    FROM {{ source('raw_data', 'pharmacy_claim_partd') }}
)

SELECT *
FROM
    sample_af_pocs
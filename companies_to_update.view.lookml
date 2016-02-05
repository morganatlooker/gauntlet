- view: companies_to_update
  fields:

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: []


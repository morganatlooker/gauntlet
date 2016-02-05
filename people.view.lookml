- view: people
  fields:

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension: permalink
    sql: ${TABLE}.permalink
    primary_key: TRUE

  - measure: count
    type: count
    drill_fields: [last_name, first_name]


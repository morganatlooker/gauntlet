- view: competitions
  fields:

  - dimension: competitor_permalink
    sql: ${TABLE}.competitor_permalink

  - dimension: permalink
    sql: ${TABLE}.permalink

  - measure: count
    type: count
    drill_fields: []


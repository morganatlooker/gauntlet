- view: offices
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: city
    sql: ${TABLE}.city

  - dimension: company_permalink
    sql: ${TABLE}.company_permalink

  - dimension: country_code
    sql: ${TABLE}.country_code

  - dimension: state_code
    sql: ${TABLE}.state_code

  - measure: count
    type: count
    drill_fields: [id]


- view: employment
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: company_permalink
    sql: ${TABLE}.company_permalink

  - dimension: is_past
    type: yesno
    sql: ${TABLE}.is_past

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: title
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: [id]


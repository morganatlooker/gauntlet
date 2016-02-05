- view: investments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: funding_id
    type: int
    # hidden: true
    sql: ${TABLE}.funding_id

  - dimension: investor_permalink
    sql: ${TABLE}.investor_permalink

  - dimension: is_company
    type: yesno
    sql: ${TABLE}.is_company

  - measure: count
    type: count
    drill_fields: [id, funding.id]


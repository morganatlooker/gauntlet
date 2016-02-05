- view: tags
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: tag
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: [id]


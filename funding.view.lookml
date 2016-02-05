- view: funding
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: funded
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.funded_at

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: raised_amount
    type: number
    sql: ${TABLE}.raised_amount

  - dimension: raised_currency_code
    sql: ${TABLE}.raised_currency_code

  - dimension: round_code
    sql: ${TABLE}.round_code

  - dimension: source_description
    sql: ${TABLE}.source_description

  - measure: count
    type: count
    drill_fields: [id, investments.count]


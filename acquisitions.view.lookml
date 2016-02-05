- view: acquisitions
  fields:

  - dimension_group: acquired
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.acquired_at

  - dimension: acquired_by_permalink
    sql: ${TABLE}.acquired_by_permalink

  - dimension: acquired_permalink
    sql: ${TABLE}.acquired_permalink
    primary_key: TRUE

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: price_amount
    type: number
    sql: ${TABLE}.price_amount

  - measure: count
    type: count
    drill_fields: []


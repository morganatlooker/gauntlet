- view: ipo
  fields:

  - dimension: company_permalink
    sql: ${TABLE}.company_permalink

  - dimension_group: public
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.public_date

  - dimension: stock_symbol
    sql: ${TABLE}.stock_symbol

  - dimension: valuation_amount
    type: number
    sql: ${TABLE}.valuation_amount

  - measure: count
    type: count
    drill_fields: []


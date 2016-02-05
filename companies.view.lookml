- view: companies
  fields:

  - dimension: blog_url
    sql: ${TABLE}.blog_url

  - dimension: category_code
    sql: ${TABLE}.category_code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: crunchbase_url
    sql: ${TABLE}.crunchbase_url

  - dimension: description
    sql: ${TABLE}.description

  - dimension: email_address
    sql: ${TABLE}.email_address

  - dimension_group: founded
    type: time
    timeframes: [date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.founded_at

  - dimension: full_record
    type: yesno
    sql: ${TABLE}.full_record

  - dimension: homepage_url
    sql: ${TABLE}.homepage_url

  - dimension: name
    sql: ${TABLE}.name

  - dimension: number_of_employees
    type: int
    sql: ${TABLE}.number_of_employees

  - dimension: overview
    sql: ${TABLE}.overview

  - dimension: permalink
    sql: ${TABLE}.permalink
    primary_key: TRUE

  - dimension: phone_number
    sql: ${TABLE}.phone_number

  - dimension: twitter_username
    sql: ${TABLE}.twitter_username

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [name, twitter_username]

  - measure: count_distinct
    type: count_distinct
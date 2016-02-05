- connection: crunchbase

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: acquisitions
  joins:
    - join: company_acquired
      from: companies
      sql_on: ${acquisitions.acquired_permalink} = ${company_acquired.permalink}
      relationship: one_to_one
    - join: company_acquiring
      from: companies
      sql_on: ${acquisitions.acquired_by_permalink} = ${company_acquiring.permalink}
      relationship: many_to_one

- explore: companies

# - explore: companies_to_update

# - explore: competitions

# - explore: employment

# - explore: funding

- explore: investments
  joins:
    - join: funding
      sql_on: ${investments.funding_id} = ${funding.id}
      relationship: many_to_one
    - join: investor_company
      from: companies
      sql_on: ${investments.investor_permalink} = ${investor_company.permalink}
      relationship: many_to_one
    - join: investor_individual
      from: people
      sql_on: ${investments.investor_permalink} = ${investor_individual.permalink}
      relationship: many_to_one
    - join: recipient
      from: companies
      sql_on: ${funding.permalink} = ${recipient.permalink}
      relationship: many_to_one

# - explore: ipo

# - explore: offices

# - explore: people

# - explore: runs

# - explore: tags


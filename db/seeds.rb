require 'csv'

CSV.foreach("#{Rails.root}/lib/data/Countries.csv") do |row|
  Country.create!(
    id:                   row[0],
    name:                 row[1],
    fips104:              row[2],
    iso2:                 row[3],
    iso3:                 row[4],
    ison:                 row[5],
    internet:             row[6],
    capital:              row[7],
    map_reference:        row[8],
    nationality_singular: row[9],
    nationality_plural:   row[10],
    currency:             row[11],
    currency_code:        row[12],
    population:           row[13],
    title:                row[14],
    comment:              row[15]
  )
end

CSV.foreach("#{Rails.root}/lib/data/Regions.csv") do |row|
  Region.create!(
     id:       row[0], 
     country_id:  row[1],
     name:     row[2],
     code:     row[3],
     adm1code: row[4]
    )
end

CSV.foreach("#{Rails.root}/lib/data/Cities.csv") do |row|
  City.create!(
    id:        row[0],
    country_id:   row[1],
    region_id:    row[2],
    name:      row[3],
    latitude:  row[4],
    longitude: row[5],
    timezone:  row[6],
    dma_id:    row[7],
    code:      row[8]
  )
end
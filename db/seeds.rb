# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read("places-2013-07-10.csv")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  row = row.to_hash.with_indifferent_access
  p =Place.create(row)
  if p
    print ("added " + p.name + "\n")
  else
    print ("ERROR: could not add " + row["name"] + "\n")
  end
end

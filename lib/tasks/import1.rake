#lib/tasks/import.rake
require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :import, [:filename] => :environment do
CSV.foreach('app/assets/alim/trips.csv', :headers => true) do |row|
Trips.create(row.to_hash)
end
end
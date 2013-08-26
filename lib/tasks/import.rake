require 'csv'

desc "Import teams from csv file"
task :import => [:environment] do

  file = "app/assets/alim/trips.csv"

  CSV.foreach(file, :headers => true) do |row|
    Trips.create {
      row.to_hash
    }
  end

end
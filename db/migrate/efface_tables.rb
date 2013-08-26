class EffaceTables < ActiveRecord::Migration

def droppe_moi(table)
puts "Dropping table(s) #{table} Migre"
drop_table(table)
end

enddroppe_moi
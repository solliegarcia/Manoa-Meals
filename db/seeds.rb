#read csv into database
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'test-data.csv'))
puts csv_text
#read csv into database
require 'csv'


csv_text = File.read(Rails.root.join('lib', 'seeds', 'test-data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  d = Dish.new
  d.name = row['NAME']
  d.calories = row[' CALORIES']
  d.total_fat = row[' TOTAL_FAT']
  d.cholesterol = row[' CHOLESTEROL']
  d.sodium = row[' SODIUM']
  d.carbs = row[' CARBOHYDRATE']
  #sugar not suger, change later
  d.suger = row[' SUGAR']
  d.protein = row[' PROTEIN']
  d.location = row[' LOCATION']
  d.course = row[' COURSE']


  if Dish.find_by(name: d.name).nil?
  	d.save
end

end

puts "There are now #{Dish.count} rows in the transactions table"

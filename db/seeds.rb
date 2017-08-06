# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Running db:seed"

if Section.count == 0
  puts "No sections! Let's create some"
  ["breakfast", "lunch", "snack", "dinner"].each do |name|
    section = Section.create(name: name)
    if section.persisted?
      puts "Saved section with name = #{name}"
    end


    # create some food_items for each section

  end
else
  puts "Looks like you already have some sections!"
end

@country_list = [
  "Vietnam" ,
   "China" ,
   "France",
   "Italy",
   "Netherlands"]
if FoodItem.count == 0
  sections = Section.all
  30.times do
    FoodItem.create(
      name: Faker::Food.dish,
      description: "#{Faker::DragonBall.character} eat this food at #{Faker::Hobbit.location} when he says #{Faker::Hobbit.quote}",
      section: sections.sample,
      cuisine: @country_list.sample, 
      view: 0,
      price: rand(10..200) * 1000 # price is between 10,000 VND and 200,000 VND
    )  
  end
end  
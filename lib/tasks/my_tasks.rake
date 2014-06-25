namespace :my_tasks do

  desc "Generates 10 entries in the user and fruits tables for testing"
  task :test_db => :environment do
  	no = 0
  	price = 100.00
  	stock = 40
  	fruit_name = "fruit_"
  	f_name = "user_"
  	l_name = "last_name_"
  	mobile = 9999000000
  	10.times do
  		user = User.create(:first_name => f_name + no.to_s, :last_name => l_name + no.to_s, :mobile_no => mobile.to_s)
  		fruit = Fruit.create(:name => fruit_name + no.to_s, :price => price, :stock => stock)
  		no += 1
  		price += 10.50
  		stock += 2
  		mobile += 10
  	end
  end

  desc "Add fruits to table"
  task :add_fruits => :environment do
    fruits = ["apple","banana","custard_apple","grapes","kiwi","mango","orange","papaya","pear","pineapple","plum","pomegranate","strawberry","tamarind","watermelon"]
    price = 50.00
    stock = 40
    
    fruits.each do |fruit|
      Fruit.create(:name => fruit, :price => price, :stock => stock)
      price += 10.50
      stock += 2
    end
  end

end

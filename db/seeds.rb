# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create(first_name: 'John', last_name: 'Smith', email: 'johnsmith@email.com', password: 'johnsmith')
clothing = Category.create(name: 'Clothing')
food = Category.create(name: 'Food')
shirts = Subcategory.create(name: 'Shirts', category_id: clothing)
pants = Subcategory.create(name: 'Pants', category_id: clothing)
fruit = Subcategory.create(name: 'Fruit',category_id: food)
vegetables = Subcategory.create(name: 'Vegetables',category_id: food)
Item.create(name: "Striped Shirt", 
	description: 
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user_id: john.id,
	subcategory_id: shirts.id
	)
Item.create(name: "Dotted Shirt", 
	description: 
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user_id: john.id,
	subcategory_id: shirts.id
	)
Item.create(name: "Plain Shirt", 
	description: 
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user_id: john.id,
	subcategory_id: shirts.id
	)
Item.create(name: "Grey Jeans", 
	description: 
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user_id: john.id,
	subcategory_id: pants.id
	)
Item.create(name: "Carrot", 
	description: 
	'Organic!',
	price: 15.73,
	user_id: john.id,
	subcategory_id: vegetables.id
	)
Item.create(name: "Apple", 
	description: 
	'Crisp and Juicy!',
	price: 15.73,
	user_id: john.id,
	subcategory_id: fruit.id
	)
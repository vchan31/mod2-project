# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 

Khan.create(name: 'Mike Cheng', gold: 10000, experience: 30, bio: 'From a far....', rating_star: 8)
Khan.create(name: 'Dick', gold: 10000, experience: 10, bio: 'From a far....', rating_star: 5)
Khan.create(name: 'Chris', gold: 10000, experience: 10, bio: 'From a far....', rating_star: 5)
Khan.create(name: 'Evans Wang', gold: 10000, experience: 20, bio: 'From a far....', rating_star: 7)
Khan.create(name: 'Steven', gold: 10000, experience: 20, bio: 'From a far....', rating_star: 7)

Player.create(name: 'Joe Bang', bio: 'From some where ....', age: 25, vocation: "black smith", exp: 10, gender: 'male', gold: 200, khan_id: 4)
Player.create(name: 'Philip 3rd', bio: 'From some where ....', age: 30, vocation: "Wanderer", exp: 25, gender: 'male', gold: 1000, khan_id: 1)
Player.create(name: 'Harrison W.', bio: 'From some where ....', age: 25, vocation: "swordmen", exp: 30, gender: 'male', gold: 400, khan_id: 3)
Player.create(name: 'Grandpa Simpson', bio: 'From some where ....', age: 65, vocation: "trainer", exp: 50, gender: 'male', gold: 650, khan_id: 2)
Player.create(name: 'Laura Croft', bio: 'From some where ....', age: 22, vocation: "archer", exp: 20, gender: 'female', gold: 250, khan_id: 4)
Player.create(name: 'Bane', bio: 'From some where ....', age: 35, vocation: "barbarian", exp: 34, gender: 'male', gold: 500, khan_id: 1)	

City.create(khan_id: 3, wealth: 90000, population: 20000, defenders: 600, bio: 'This city is...', name: 'Georgetown') 
City.create(khan_id: 2, wealth: 100000, population: 15000, defenders: 700, bio: 'This city is...', name: 'Murray Land') 
City.create(khan_id: 1, wealth: 5000000, population: 85000, defenders: 5000, bio: 'This city is...', name: 'Promtheus') 
City.create(khan_id: 4, wealth: 65000, population: 20000, defenders: 860, bio: 'This city is...', name: 'New Halsteld') 
City.create(khan_id: 1, wealth: 250000, population: 90000, defenders: 2500, bio: 'This city is...', name: 'Orgrim-Dom') 
City.create(khan_id: 5, wealth: 103000, population: 30000, defenders: 1000, bio: 'This city is...', name: 'Kamenstan') 
City.create(khan_id: 1, wealth: 85000, population: 15000, defenders: 600, bio: 'This city is...', name: 'QingMing') 


 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ole_recipe = Recipe.create(video_url: "https://i.ytimg.com/vi/ny9QFscbt7I/maxresdefault.jpg", title: "Parmegani", 
  description:
 "1. Preheat oven to 400ºF/200ºC.
2. In a medium bowl mix together ricotta, pesto, salt, pepper, parmesan, breadcrumbs, and the egg.
3. Butterfly fillet the 2 center cuts of salmon.
4. Stuff the mixture into the salmon, pushing edges of stuffing in as much as possible.
5. Spray a medium size baking sheet and lay stuffed salmon it.
6. Cook in the oven for 12-15 minutes or until stuffing begins to brown.", tag_list: "Amuse")
dumbaya = Recipe.create(video_url: "https://antiguanvegan.files.wordpress.com/2012/02/fried-plantain.jpg", title: "Plantain", description: "Fried Bananas", tag_list: "fried")
comozone = Recipe.create(video_url: "http://cuisinedecheznous.net/wp-content/uploads/2015/12/ttttttttt.jpg", title: "Tchep", description: "Senegalese Dish", tag_list: "Fish")
comozone2 = Recipe.create(video_url: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg", title: "The Meats", description: "All types of meaty food", tag_list: "Meat")
comozone3 = Recipe.create(video_url: "https://upload.wikimedia.org/wikipedia/commons/6/64/Foods_(cropped).jpg", title: "Fruits", description: "Entertain guests", tag_list: "Amuse")
comozone4 = Recipe.create(video_url: "http://easyscienceforkids.com/wp-content/uploads/2014/02/All-about-Crepes-and-Other-French-Foods-Fun-Facts-for-Kids-image-of-French-Banana-Crepes.jpeg", title: "Crepe Banane", description: "Sucree", tag_list: "Desert")
comozone6 = Recipe.create(video_url: "https://dianeyoon.files.wordpress.com/2012/11/dsc05509.jpg", title: "Steak Tartar", description: "Delecious rate meet", tag_list: "Meat")
comozone7 = Recipe.create(video_url: "http://www.stethnews.com/wp-content/uploads/2015/02/Paris-France-Food-Health.jpg", title: "La tourr", description: "Perfect French desert", tag_list: "desert")
comozonee = Recipe.create(video_url: "https://i.ytimg.com/vi/dWagwI7Z_Hw/maxresdefault.jpg", title: "Poisson", description: "Cremed sauce", tag_list: "Fish,Seafood")
comozoner = Recipe.create(video_url: "https://omgsohungry.files.wordpress.com/2012/06/img_13501.jpg", title: "Pasta di maggie", description: "perfect pasta", tag_list: "Wheat")
comozonet = Recipe.create(video_url: "http://img1.10bestmedia.com/Images/Photos/242906/Bistro-Bis-Facebook_54_990x660_201406012338.jpg", title: "Coquelette", description: "Un truc de ouf", tag_list: "seafood")
comozoney = Recipe.create(video_url: "http://cdn.vkool.com/wp-content/uploads/2015/01/chicken-cordon-bleu-II.jpg", title: "Fish", description: "Mais c bon", tag_list: "Fish")
comozoneu = Recipe.create(video_url: "http://img1.10bestmedia.com/Images/Photos/69933/maximilien-restaurant-oysters-seattle_54_990x660_201405311608.jpg", title: "Jambon", description: "Bou dien", tag_list: "seafood")
comozonei = Recipe.create(video_url: "http://www.organicauthority.com/wp-content/uploads/2014/06/5493212723_fd599dc479_z.jpg", title: "Oysters", description: "Bou dien", tag_list: "seafood")

mario = User.create(username: "Mario", name: "Mario Mario", email: "mario@mario.com", password_digest: "beef", image_url: "https://upload.wikimedia.org/wikipedia/en/9/99/MarioSMBW.png")
luigi = User.create(username: "Luigi", name: "Luigi Mario", email: "luigi@luigi.com", password_digest: "beef", image_url: "https://upload.wikimedia.org/wikipedia/en/f/f1/LuigiNSMBW.png")

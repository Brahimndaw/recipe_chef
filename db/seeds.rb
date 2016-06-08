# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ole_recipe = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1760948114157830%2F&show_text=0&width=560", title: "Banana Cake",
  description: "", tag_list: "Desert", time: "45 minutes", length:"Fast")
dumbaya = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedpropertasty%2Fvideos%2F1791781734367832%2F&show_text=0&width=560", title: "Mallow Doughnut", description: "", tag_list: "Snack", time: "50 minutes", length:"Fast")
comozone = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1760899044162737%2F&show_text=0&width=560", title: "Shrimp Pasta", description:
  "3 gousses d’ail, 2 piments rouges, 4 c. à soupe de purée de tomate, 5 cl d’huile d’arachide,2 verres d'eau tiéde sel, poivre", tag_list: "Seafodd", time: "1H25 minutes", length: "Medium" )
comozone2 = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1760006490918659%2F&show_text=0&width=560", title: "Chicken Alfredo", description: "", tag_list: "Chicken", time: "1H45", length: "Medium")
comozone3 = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759998300919478%2F&show_text=0&width=560", title: "Pasta Parmigiano", description: "", tag_list: "Chicken", time: "1H35", length: "Medium")
comozone4 = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759980170921291%2F&show_text=0&width=560", title: "Pomgrenade Salad",
 description: "]", tag_list: "Healthy", time: "25 minutes")
comozone6 = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759975584255083%2F&show_text=0&width=560", title: "Four Way Crepe", description: "", tag_list: "Snack", time: "35 minutes", length:"Fast")
comozone7 = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759538474298794%2F&show_text=0&width=560", title: "Pesto Salmon", description: "", tag_list: "Fish", time: "55 minutes", length:"Fast"
  )
comozonee = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedpropertasty%2Fvideos%2F1791137911098881%2F&show_text=0&width=560", title: "Lamb Kofta", description: "", tag_list: "Lamb", time: "75 minutes", length: "Medium")
comozoner = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759124257673549%2F&show_text=0&width=560", title: "Carrot Roses", description: "", tag_list: "Healthy", time: "1H05 minutes", length: "Medium")
comozonet = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1759094511009857%2F&show_text=0&width=560", title: "Choco Star Bread", description: "", tag_list: "Dessert", time: "45 minutes", length: "Fast")
comozoney = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1758790521040256%2F&show_text=0&width=560", title: "Pizza Bomb", description: "", tag_list: "Meat", time: "35 minutes", length: "Fast")
comozoneu = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1758761067709868%2F&show_text=0&width=560", title: "Puff Pastry", description: "", tag_list: "Dessert", time:"40 minutes", length: "Fast")
comozonei = Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1758404151078893%2F&show_text=0&width=560", title: "Balsamic Chicken", description: "", tag_list: "Chicken", time: "1H55 minutes", length: "Medium")
cosmopo =   Recipe.create(video_url: "https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fbuzzfeedtasty%2Fvideos%2F1756889384563703%2F&show_text=0&width=560", title: "Chicken & Rice", description: "", tag_list: "Chicken", time: "1H35 minutes", length: "Medium")


luigi = User.create(username: "Luigi Mario",name: "Luigi", email: "luigi@luigi.com", password_digest: "beef", image_url: "https://sickr.files.wordpress.com/2013/11/luigi-circle.jpg")
anthony = User.create(username:"Abourdain" , name:"Anthony Bourdain", email: "abourdain@cnn.com", password_digest: "beef", image_url: "http://comicsalliance.com/files/2012/06/bordainnoshadow.jpg")
stella = User.create(username:"Stella", name: "Stella Morevecci", email: "stella@torino.com", password_digest:"beef", image_url:"http://classroomclipart.com/images/gallery/Clipart/Culinary/TN_lady-with-a-covered-food-tray-clipart-5122.jpg")
dominec = User.create(username:"Dominec", name: "dominec Glasgow", email: "domi@gmail.com", password_digest: "beef", image_url: "https://www.fivesquid.com/pics/t2/1440941227-44593-3-1.png")
mario = User.create(username: "Mario", name: "Mario Mario", email: "mario@mario.com", password_digest: "beef", image_url: "http://i0.kym-cdn.com/entries/icons/original/000/008/585/super-mario.jpeg")
michelle = User.create(username:"Mich", name:"Michelle Pfeiffer", email: "mich@yahoo.com", password_digest: "beef", image_url:"http://www.toonpool.com/user/10854/files/michelle_pfeiffer_portrait_1285995.jpg")
coolio = User.create(username: "Coolio", name: "Coolio Budz", email: "Coolio@yahoo.com", password_digest:"beef", image_url:"http://orig09.deviantart.net/1035/f/2014/269/0/5/lord_wilhelm_cartoon_self_portrait_by_lordwilhelm-d80kmo4.jpg")
allez = User.create(username: "Van", name: "Vancoci Doningo", email: "vamos@cnn.com", password_digest: "beef", image_url: "https://www.fivesquid.com/pics/t2/1440941227-44593-4-1.png")
cainfri = User.create(username: "koidio", name: "Yapi Yapa", email: "garcon@abidjan.net", password_digest: "poulet", image_url:"https://ehotelier.com/wp-content/uploads/2016/05/Chef-Francis-Chong-Wui-Choong-.jpg")

mario.recipes << ole_recipe
mario.recipes << dumbaya
luigi.recipes << comozone
luigi.recipes << comozone2
anthony.recipes << comozone3
stella.recipes << comozone6
stella.recipes << comozone7
stella.recipes << comozonee
stella.recipes << comozoner
anthony.recipes << comozone4
dominec.recipes << comozonet
dominec.recipes << comozoneu
coolio.recipes << comozonei
coolio.recipes << cosmopo


mario.save
luigi.save
anthony.save
stella.save
dominec.save
michelle.save
coolio.save
allez.save
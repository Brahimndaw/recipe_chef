module Adapter

  class FoodAPIWrapper

    @@base_url = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/"

    def initialize(search_term)
      key = ENV["mashape_key"]
      response = JSON.parse(RestClient.get(@@base_url + "search?query=#{search_term}", {:'X-Mashape-Key' => key}))
      recipe_details_array = []
      response["results"].each do |fields|
        fields.each do |field, value|
          if field == "id"
            recipe_details_array << JSON.parse(RestClient.get(@@base_url + value.to_s + "/information", {:'X-Mashape-Key' => key}))
          end
        end
      end
      recipe_details_array.each do |recipe_info|
        binding.pry
        add_recipe_to_database(recipe_info) if recipe_not_in_database(recipe_info["title"].strip)
      end
    end

    def recipe_not_in_database(title)
      Recipe.find_by(title: title).nil?
    end

    def add_recipe_to_database(recipe_info)
      title = recipe_info["title"].strip
      image_url = recipe_info["image"]
      source_url = recipe_info["spoonacularSourceUrl"]
      new_recipe = Recipe.create(title: title, image_url: image_url, source_url: source_url)
      add_ingredients_to_recipe(recipe_info, new_recipe.id)
    end

    def add_ingredients_to_recipe(recipe_info, recipe_id)
      recipe_info["extendedIngredients"].each do |ingredient_info|
        ingredient_id = Ingredient.find_or_create_by(name: ingredient_info["name"]).id
        RecipeAmount.create(recipe_id: recipe_id, ingredient_id: ingredient_id, \
                            amount: ingredient_info["amount"], unit: ingredient_info["unit"])
      end
    end
  end
end

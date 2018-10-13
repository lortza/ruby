class Recipe
  attr_reader :title, :servings, :url
  def initialize(title:, servings:, url:)
    @title = title
    @servings = servings
    @url = url
  end
end

class RecipeScheduler
  def initialize(qty_people:, recipe:, start_date:)
    @recipe = recipe
    @qty_people = qty_people
    @start_date = start_date
    @recipe_queue = []
  end

  # delegate :servings, to: :recipe

  def qty_meals
    @qty_meals = @recipe.servings / @qty_people
  end

  def add_to_calendar_url(date)
    [
      'http://www.google.com/calendar/event?action=TEMPLATE',
      "&text=#{@recipe.title}",
      "&dates=20180823/#{date}",
      "&details=#{@recipe.url}",
      '&trp=false',
      '&sprop=',
      '&sprop=name:'
    ].join
  end

  def enqueue_recipes
    qty_meals.times do
      @recipe_queue << add_to_calendar_url(@start_date)
    end
    @recipe_queue.count
  end

end

recipe = Recipe.new(
  title: 'Sample Recipe',
  servings: 6,
  url: 'https://www.google.com'
)

recipe_scheduler = RecipeScheduler.new(
  qty_people: 2,
  recipe: recipe,
  start_date: '20180823'
)

p recipe_scheduler.enqueue_recipes

# https://www.google.com/calendar/render?action=TEMPLATE&text=test+title&details=http%3A%2F%2Fwww.testurl.com&dates=20180824T023500Z%2F20180824T023700Z


# <a href="" target="_blank" rel="nofollow">Add to my calendar</a>

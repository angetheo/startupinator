# for testing:
# require_relative '../../config/config'
require 'faker'

class Controller
  attr_reader :all_ideas
  def initialize
    @companies = Company.all
    @categories = Category.all
    @audiences = Audience.all
    @all_ideas = []
  end

  def rand_idea
    company_name = @companies.sample.name
    audience_name = @audiences.sample.name
    idea = "It's like #{company_name}, but for #{audience_name}"
    store_ideas(idea)
    idea
  end

  def tweet_idea
    company_name = @companies.sample.name
    audience_name = @audiences.sample.name
    idea = "It's like #{company_name}, but for #{audience_name}"
    until tweet_length_check(idea) do
      idea = "It's like #{company_name}, but for #{audience_name}"
    end
    store_ideas(idea)
    idea
  end

  # need to make more associations between companies and categories
  def idea_by_category(category)
    category_obj = Category.where(name: category).first
    company_name = category_obj.companies.sample.name
    audience_name = @audiences.sample.name
    idea = "It's like #{company_name} but for #{audience_name}"
    store_ideas(idea)
    idea
  end

  def tweet_by_category(category)
    category_obj = Category.where(name: category).first
    company_name = category_obj.companies.sample.name
    audience_name = @audiences.sample.name
    idea = "It's like #{company_name} but for #{audience_name}"
    until tweet_length_check(idea) do
      idea = "It's like #{company_name}, but for #{audience_name}"
    end
    store_ideas(idea)
    idea
  end

  def tweet_length_check(string)
    string.length < 130
  end

  def store_ideas(idea)
    @all_ideas << idea
  end

end

controller = Controller.new

1000.times do
  controller.rand_idea
  # controller.all_ideas
end

p controller.all_ideas

# p new_controller.idea_by_category('transportation')
# tweet = new_controller.tweet_idea
# p tweet
# p tweet.size

# tweet_category = new_controller.tweet_by_category('transportation')
# p tweet_category
# p tweet_category.size
# for testing:
require_relative '../../config/config'
require 'faker'

class Controller
  attr_reader :all_ideas
  def initialize
    @companies = Company.all
    @categories = Category.all
    @audiences = Audience.all
    @all_ideas = []
    @company_name = ""
    @audience_name = ""
    @idea = "It's like #{@company_name}, but for #{@audience_name}"
  end

  def rand_idea
    sample
    store_ideas(@idea)
    @idea
  end

  def tweet_idea
    sample
    until tweet_length_check(@idea) do
      sample
    end
    store_ideas(@idea)
    @idea
  end

  def idea_by_category(category)
    category_obj = Category.where(name: category).first
    company_name = category_obj.companies.sample.name
    @idea = "It's like #{company_name} but for #{@audience_name}"
    store_ideas(@idea)
    @idea
  end

  def tweet_by_category(category)
    category_obj = Category.where(name: category).first
    company_name = category_obj.companies.sample.name
    until tweet_length_check(idea) do
      @idea = "It's like #{company_name}, but for #{@audience_name}"
    end
    store_ideas(@idea)
    @idea
  end

  private

  def store_ideas(idea)
    @all_ideas << idea
  end

  def sample
    @company_name = @companies.sample.name
    @audience_name = @audiences.sample.name
    @idea = "It's like #{@company_name}, but for #{@audience_name}"
  end

  def tweet_length_check(string)
    string.length < 130
  end
end

controller = Controller.new

1000.times do
  controller.rand_idea
end
# for testing:
# require_relative '../../config/config'

class Controller
  def initialize
    @companies = Company.all
    @categories = Category.all
    @audiences = Audience.all
  end

  def rand_idea
    company_name = @companies.sample.name
    audience_name = @audiences.sample.name
    "It's like #{company_name} for #{audience_name}"
  end

  # need to make more associations between companies and categories
  def idea_by_category(category)
    category_obj = Category.where(name: category).first
    company_name = category_obj.companies.sample.name
    audience_name = @audiences.sample.name
    "It's like #{company_name} for #{audience_name}"
  end
end



# new_controller = Controller.new
# p new_controller.rand_idea
# p new_controller.idea_by_category('transportation')
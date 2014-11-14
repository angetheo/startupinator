require 'csv'


audiences = CSV.read('csv/audiences.csv')
audiences.flatten!
audiences.each {|name| Audience.create(name: name)}

companies = CSV.read('csv/startups.csv')
companies.flatten!
companies.each {|startup| Company.create(name: name)}

categories = CSV.read('csv/categories.csv')
categories.flatten!
categories.each {|startup| Category.create(name: name)}







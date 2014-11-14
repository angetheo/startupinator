require 'csv'
#require_relative '../config/config'

audiences = CSV.read('csv/audiences.csv')
audiences.flatten!
audiences.each {|name| Audience.create(name: name)}

companies = CSV.read('csv/startups.csv')
companies.flatten!
companies.each {|startup| Company.create(name: startup)}

categories = CSV.read('csv/categories.csv')
categories.flatten!
categories.each {|cat| Category.create(name: cat)}







# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.destroy_all
Department.destroy_all
Month.destroy_all

# create the last 12 months
12.times do | n |
  start_day = (Date.today - (31 * n).days).beginning_of_month
  Month.create(start_day: start_day)
end

# create departments
5.times do
  FactoryGirl.create(:department)
end

# create 70 employees of various departments
70.times do
  rand_dept = Department.all.sample
  FactoryGirl.create(:employee, department: rand_dept)
end

# create coffee dats for employees for past 12 months
Month.all.each do | month |
  pairing_service = PairingService.new(month)
  pairing_service.pair_everyone_up
end

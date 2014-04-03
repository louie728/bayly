namespace :create_customers do
  desc "create customers from Southware File"
  task :create, [:filename] => :environment do |task, args|

    require 'csv'

    field_map = {cusnumber: 0,name: 1,address: 2,address1: 3,
                 city: 4,state: 5,zip: 6,phone: 7, email: 8
    }
    lines = CSV.open(args.filename)
    row = lines.shift
    while !row.to_s.blank?
      Customer.create!(
          cusnumber: row[field_map[:cusnumber]],
          name: row[field_map[:name]],
          address: row[field_map[:address]],
          address1: row[field_map[:address1]],
          city: row[field_map[:city]],
          state: row[field_map[:state]],
          zip: row[field_map[:zip]],
          phone: row[field_map[:phone]],
          email: row[field_map[:email]],
      )
      row = lines.shift
    end
  end
end
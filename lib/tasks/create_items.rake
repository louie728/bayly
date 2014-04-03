namespace :create_items do
  desc "create Items for web"
  task :create, [:filename] => :environment do |task, args|

    require 'csv'

    field_map = {
        item_no: 0,
        desc: 1,
        add_desc: 2,
        price: 3
    }

    lines = CSV.open(args.filename)
    row = lines.shift
    while !row.to_s.blank?
      Item.create!(
          item_no: row[field_map[:item_no]],
          desc: row[field_map[:desc]],
          add_desc: row[field_map[:add_desc]],
          price: row[field_map[:price]]
      )
      row = lines.shift
    end


  end
end
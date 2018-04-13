table_names = %w(staff_menbers)
table_names.each do |table_name|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{table_name}.rb")
  if File.exits?(path)
    puts "Creating #{table_name}...."
    require(path)
  end
end
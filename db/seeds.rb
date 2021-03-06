# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title:"Topic #{topic}"
    )
end
puts "3 topics created"

10.times do |blogg|
  Blogg.create!(
    title: "My Blogg Post #{blogg}",
    body: "Sed ut perspiciatis unde omnis iste natus 
    error sit voluptatem accusantium doloremque 
    laudantium, totam rem aperiam, eaque ipsa quae ab 
    llo inventore veritatis et quasi architecto beatae 
    vitae dicta sunt explicabo. Nemo enim ipsam voluptatem 
    quia voluptas sit aspernatur aut odit aut fugit, 
    sed quia consequuntur magni dolores eos qui ratione 
    voluptatem sequi nesciunt. Neque porro quisquam est, 
    qui dolorem ipsum quia dolor sit amet, consectetur, 
    adipisci velit, sed quia non numquam eius modi tempora 
    incidunt ut labore et dolore magnam aliquam quaerat 
    voluptatem. Ut enim ad minima veniam, quis nostrum 
    exercitationem ullam corporis suscipit laboriosam, 
    nisi ut aliquid ex ea commodi consequatur? Quis autem 
    vel eum iure reprehenderit qui in ea voluptate velit 
    esse quam nihil molestiae consequatur, vel illum qui 
    dolorem eum fugiat quo voluptas nulla pariatur?
    ",
    topic_id: Topic.last.id
  )
end

puts "10 Blogg Posts Created"

5.times do |skill|
  Skill.create!(
    title:"Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 Skills Created"

8.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio Title: #{portfolio_item}",
    subtitle:"Ruby on Rails",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing 
    elit, sed do eiusmod tempor incididunt ut labore et dolore
    magna aliqua. Ut enim ad minim veniam, quis nostrud 
    exercitation ullamco laboris nisi ut aliquip ex ea commodo 
    consequat. Duis aute irure dolor in reprehenderit in 
    voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
    Excepteur sint occaecat cupidatat non proident, sunt in culpa 
    qui officia deserunt mollit anim id est laborum.",
    main_image:"https://place-hold.it/600x400?",
    thumb_image:"https://place-hold.it/300x200?"
  )
end

8.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio Title: #{portfolio_item}",
    subtitle:"Angular",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing 
    elit, sed do eiusmod tempor incididunt ut labore et dolore
    magna aliqua. Ut enim ad minim veniam, quis nostrud 
    exercitation ullamco laboris nisi ut aliquip ex ea commodo 
    consequat. Duis aute irure dolor in reprehenderit in 
    voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
    Excepteur sint occaecat cupidatat non proident, sunt in culpa 
    qui officia deserunt mollit anim id est laborum.",
    main_image:"https://place-hold.it/600x400?",
    thumb_image:"https://place-hold.it/300x200?"
  )
end

puts "9 Portfolio Items Created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name:"technology#{technology}"
    )
end

puts "3 technologies created"
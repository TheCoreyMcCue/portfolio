# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog + 1}",
    body: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Suscipit possimus, hic delectus omnis magnam assumenda asperiores sequi eum corporis, blanditiis iste sapiente rerum, dolore. Corrupti asperiores explicabo cupiditate voluptatum porro.
      Rerum quidem maiores repellendus ullam animi, excepturi omnis temporibus deleniti itaque architecto nisi nihil officia quod repellat, unde voluptatibus cum non voluptates sequi. Ipsum temporibus, ullam laboriosam neque quidem quam?
      Magni harum velit cum blanditiis incidunt vitae fugit numquam, maiores amet? Commodi, enim tenetur aspernatur eveniet pariatur sint dolorum nam expedita maxime voluptatibus quaerat ipsam illo dignissimos quae cum, beatae."
  )
end

puts 'created blog posts'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill + 1}",
    percent_utilized: 15
  )
end

3.times do |portfolio_item|
  Portfolio.create!(
    title: "Project #{portfolio_item + 1}",
    subtitle: 'Project I worked on',
    body: 'Magni harum velit cum blanditiis incidunt vitae fugit numquam, maiores amet? Commodi, enim tenetur aspernatur eveniet pariatur sint dolorum nam expedita maxime voluptatibus quaerat ipsam illo dignissimos quae cum, beatae.',
    main_image: 'https://picsum.photos/600/400',
    thumb_image: 'https://picsum.photos/350/200'
  )
end

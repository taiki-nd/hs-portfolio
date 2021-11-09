# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
11.times do
  Post.create!(
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/profile.jpg")),filename: 'profile.jpg'),
    title: "title",
    category_id: 3,
    name: "user",
    url: "https://google.com",
    text: "texttexttexttext texttexttexttext texttext texttext texttexttexttexttexttext texttexttexttext texttext"
  )
end
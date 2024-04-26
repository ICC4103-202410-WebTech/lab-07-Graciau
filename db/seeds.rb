# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

User.create!(
    name: 'Juan Pérez',
    email: 'jperez@example.com',
    password: '123456789'
)

User.create!(
    name: 'Roberto González',
    email: 'rgonzalez@example.com',
    password: '123456789'
)

User.create!(
    name: 'Magdalena Rodríguez',
    email: 'mrodriguez@example.com',
    password: '123456789'
)
User.create!(
    name: 'Juan gonzalez',
    email: 'jgonzalez@example.com',
    password: '123456789'
)

User.create!(
    name: 'Pedro Garcia',
    email: 'pgarcia@example.com',
    password: '123456789'
)

Tag.create!(
    name: "Tag1"
)

Tag.create!(
    name: "Tag2"
)

Tag.create!(
    name: "Tag3"
)


Post.create!(
    user_id: 1,
    title: "Post 1",
    content: "Content 1",
    answers_count: 1,
    likes_count: 1,
    published_at: Time.now
)


Post.create!(
    user_id: 2,
    title: "Post 2",
    content: "Content 2",
    answers_count: 2,
    likes_count: 2,
    published_at: Time.now
)



Post.create!(
    user_id: 3,
    title: "Post 3",
    content: "Content 3",
    answers_count: 1,
    likes_count: 3,
    published_at: Time.now
)


Post.create!(
    user_id: 4,
    title: "Post 4",
    content: "Content 4",
    answers_count: 4,
    likes_count: 1,
    published_at: Time.now
)


Post.create!(
    user_id: 5,
    title: "Post 5",
    content: "Content 5",
    answers_count: 5,
    likes_count: 1,
    published_at: Time.now
)



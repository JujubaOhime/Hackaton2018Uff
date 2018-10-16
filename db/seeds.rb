# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    Quiz.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph
    )
end

20.times do |i|
    Question.create(
        title: Faker::Lorem.sentence,
        answer_explanation: Faker::Lorem.sentence,
        quiz_id: rand(1..9)
    )
end

50.times do |i|
    Answer.create(
        content: Faker::Lorem.sentence,
        question_id: rand(1..19)
    )
end

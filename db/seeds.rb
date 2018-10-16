# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = Student.create!(
    name: "teste",
    email: "teste@email.com",
    password: "111111",
    birth: "01/01/2001"
)

25.times do |i|
    Quiz.create!(
        title: Faker::LeagueOfLegends.champion,
        description: Faker::LeagueOfLegends.rank,
        quantity_questions: 0
    )
end

25.times do |i|
    StudentQuiz.create(student_id: s.id, quiz_id: (i+1))
end

20.times do |i|
    Question.create!(
        title: Faker::LeagueOfLegends.masteries,
        explanation: Faker::Lorem.sentence,
        quantity_answers: 0,
        quiz_id: rand(1..24)
    )
end

50.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: rand(1..19)
    )
end

Question.all.each do |q|
    next if q.answers.second.nil?
    q.answer_id = q.answers.second.id
    q.save!
end

40.times do |i|
    Achievement.create!(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.sentence,
        image: Faker::Lorem.sentence
    )
end

40.times do |i|
    if i < 20
        AchievementScore.create!(
            achievement_id: (i+1),
            score: 10*(i+1)
        )
    else
        QuizQtyAchievement.create(
            quiz_qty: i,
            achievement_id: (i+1)
        )
    end
end

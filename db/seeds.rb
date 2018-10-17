# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    name: "teste",
    email: "teste@email.com",
    password: "111111",
    birth: "01/01/2001"
)

s = User.create!(
    name: "teste2",
    email: "teste2@email.com",
    password: "111111",
    birth: "01/01/2001"
)

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

q = Quiz.create!(
    title: Faker::LeagueOfLegends.champion,
    description: Faker::LeagueOfLegends.rank,
    quantity_questions: 0
)

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

qs = Question.create!(
    title: Faker::LeagueOfLegends.masteries,
    explanation: Faker::Lorem.sentence,
    quantity_answers: 0,
    quiz_id: q.id
)

4.times do |i|
    Answer.create!(
        content: Faker::LeagueOfLegends.quote,
        question_id: qs.id
    )
end

ans = Answer.create!(
    content: Faker::LeagueOfLegends.quote,
    question_id: qs.id
)

qs.answer_id = ans.id
qs.save

40.times do |i|
    Achievement.create!(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.sentence,
        image: Faker::Lorem.sentence
    )
end

20.times do |i|
    AchievementScore.create!(
        achievement_id: (i+1),
        score: (i+1)
    )
end

20.times do |i|
    QuizQtyAchievement.create(
        quiz_qty: (i+1),
        achievement_id: 20+(i+1)
    )
end

module QuestionsHelper

    def answer_options
        @question.answers.collect { |answer| [answer.content, answer.id] }
    end
end

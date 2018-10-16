class Quiz < ApplicationRecord
    has_many :questions


    def question_added
        quantity_questions += 1
    end

    def question_removed
        quantity_questions -= 1
    end
end

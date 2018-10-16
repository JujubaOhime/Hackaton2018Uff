class Quiz < ApplicationRecord
    has_many :questions


    def question_added
        self.quantity_questions += 1
    end

    def question_removed
        self.quantity_questions -= 1
    end
end

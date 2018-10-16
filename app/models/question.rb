class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  
  def answer_added
    quantity_answers += 1
  end

  def answer_removed
    quantity_answers -= 1
  end
end

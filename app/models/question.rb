class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers # Opções
  belongs_to :answer, optional: true # Resposta correta

  
  def answer_added
    self.quantity_answers += 1
  end

  def answer_removed
    self.quantity_answers -= 1
  end
end

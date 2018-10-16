class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]

    def new
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        @question.quantity_answers = 0

        respond_to do |format|
            if @question.save
                @question.quiz.question_added
                format.html { redirect_to @question.quiz, notice: 'Pergunta criada com sucesso.' }
                format.json { render :show, status: :created, location: @question }
            else
                format.html { render :new }
                format.json { render json: @question.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @question.update(question_params)
              format.html { redirect_to @question.quiz, notice: 'Pergunta atualizada com sucesso.' }
              format.json { render :show, status: :ok, location: @question }
            else
              format.html { render :edit }
              format.json { render json: @question.errors, status: :unprocessable_entity }
            end
          end
    end

    def destroy
        @question.destroy
        @question.quiz.question_removed
        respond_to do |format|
            format.html { redirect_to @question.quiz, notice: 'Pergunta removida com sucesso.' }
            format.json { head :no_content }
        end
    end

    private
        def set_question
            @question = Question.find(params[:id])
        end

        def question_params
            params.require(:question).permit(:title, :answer_explanation, :quiz_id, :answer_id)
          end
end

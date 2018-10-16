class QuestionsController < ApplicationController
    before_action :set_question, only: [:show, :edit, :update, :destroy]
    
    
    def show
        @answers = @question.answers
    end

    def new
        @question = Question.new
    end

    def edit
    end

    def create
        @question = Question.new(question_params)

        respond_to do |format|
        if @question.save
            format.html { redirect_to @question, notice: 'Pergunta criada com sucesso.' }
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
              format.html { redirect_to @question, notice: 'Pergunta atualizada com sucesso.' }
              format.json { render :show, status: :ok, location: @question }
            else
              format.html { render :edit }
              format.json { render json: @question.errors, status: :unprocessable_entity }
            end
          end
    end

    def destroy
        @question.destroy
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
            params.require(:question).permit(:title, :answer_explanation, :answer_id)
          end
end

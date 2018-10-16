class AnswersController < ApplicationController


  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
        if @answer.save
            @answer.question.answer_added
            format.html { redirect_to @answer.question.quiz, notice: 'Pergunta criada com sucesso.' }
            format.json { render :show, status: :created, location: @answer }
        else
            format.html { render :new }
            format.json { render json: @answer.errors, status: :unprocessable_entity }
        end
    end
  end

  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer.question.quiz, notice: 'Resposta atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer.destroy
    @answer.question.answer_removed
    respond_to do |format|
        format.html { redirect_to @answer.question.quiz, notice: 'Resposta removida com sucesso.' }
        format.json { head :no_content }
    end
  end
end

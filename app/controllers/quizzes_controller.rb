class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :quiz_finished]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    @questions = @quiz.questions
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.quantity_questions = 0

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz criado com sucesso.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  # POST quizzes/:questions_correct/:id
  def quiz_finished
    reward_score = false
    reward_quiz = false
    if current_user.achievement_score_unlocked?
      reward_score = true
    end
    if params[:questions_correct].to_i > (@quiz.questions.count / 2) && current_user.achievement_quiz_qty_unlocked?
      reward_score = true
    end
    if reward_quiz || reward_score
      flash[:notice] = "Você ganhou novas recompensas!"
    end
    redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :description)
    end
end

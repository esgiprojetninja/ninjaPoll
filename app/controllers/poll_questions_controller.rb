class PollQuestionsController < ApplicationController
  before_action :set_poll_question, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_admin

  # GET /poll_questions
  # GET /poll_questions.json
  def index
    @poll_questions = PollQuestion.all
  end

  # GET /poll_questions/1
  # GET /poll_questions/1.json
  def show
  end

  # GET /poll_questions/new
  def new
    @poll_question = PollQuestion.new
    @polls = Poll.all
  end

  # GET /poll_questions/1/edit
  def edit
    @polls = Poll.all
  end

  # POST /poll_questions
  # POST /poll_questions.json
  def create
    @poll_question = PollQuestion.new(poll_question_params)

    respond_to do |format|
      if @poll_question.save
        format.html { redirect_to @poll_question, notice: 'Poll question was successfully created.' }
        format.json { render :show, status: :created, location: @poll_question }
      else
        format.html { render :new }
        format.json { render json: @poll_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poll_questions/1
  # PATCH/PUT /poll_questions/1.json
  def update
    respond_to do |format|
      if @poll_question.update(poll_question_params)
        format.html { redirect_to @poll_question, notice: 'Poll question was successfully updated.' }
        format.json { render :show, status: :ok, location: @poll_question }
      else
        @polls = Poll.all
        format.html { render :edit }
        format.json { render json: @poll_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_questions/1
  # DELETE /poll_questions/1.json
  def destroy
    @poll_question.destroy
    respond_to do |format|
      format.html { redirect_to poll_questions_url, notice: 'Poll question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_question
      @poll_question = PollQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poll_question_params
      params.require(:poll_question).permit(:text, :question_type, :poll_ids => [])
    end
end

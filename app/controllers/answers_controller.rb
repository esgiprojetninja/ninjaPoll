class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_admin, except: [:save_all]

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
    @poll_questions = PollQuestion.all
  end

  # GET /answers/1/edit
  def edit
      @poll_questions = PollQuestion.all
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    @poll_questions = PollQuestion.all

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /answer/save-all
  def save_all
    saved = true
    poll_id = params.require(:poll_id)
    answers = []
    if params.has_key?(:text_value)
        params.require(:text_value).tap do |whitelisted|
            whitelisted.each do |id, value|
                answers.push({
                        text_value: value,
                        poll_question_id: id
                })
            end
        end
    end
    if params.has_key?(:int_value)
        params.require(:int_value).tap do |whitelisted|
            whitelisted.each do |id, value|
                answers.push({
                        int_value: value,
                        poll_question_id: id
                })
            end
        end
    end
    answers.each do |a|
        @answer = Answer.new({
            poll_question_id: a[:poll_question_id],
            poll_id: poll_id,
            text_value: a.key?(:text_value) ? a[:text_value] : "",
            int_value: a.key?(:int_value) ? a[:int_value] : 0
        })
        saved = @answer.save
    end
    if saved
      redirect_to(root_path)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:value, :poll_question_id, :poll_id)
    end
end

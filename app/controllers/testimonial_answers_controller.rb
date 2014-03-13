class TestimonialAnswersController < ApplicationController
  before_action :set_testimonial_answer, only: [:show, :edit, :update, :destroy]

  # GET /testimonial_answers
  # GET /testimonial_answers.json
  def index
    @testimonial_answers = TestimonialAnswer.all
  end

  # GET /testimonial_answers/1
  # GET /testimonial_answers/1.json
  def show
  end

  # GET /testimonial_answers/new
  def new
    @testimonial_answer = TestimonialAnswer.new
  end

  # GET /testimonial_answers/1/edit
  def edit
  end

  # POST /testimonial_answers
  # POST /testimonial_answers.json
  def create
    @testimonial_answer = TestimonialAnswer.new(testimonial_answer_params)

    respond_to do |format|
      if @testimonial_answer.save
        format.html { redirect_to @testimonial_answer, notice: 'Testimonial answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testimonial_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @testimonial_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonial_answers/1
  # PATCH/PUT /testimonial_answers/1.json
  def update
    respond_to do |format|
      if @testimonial_answer.update(testimonial_answer_params)
        format.html { redirect_to @testimonial_answer, notice: 'Testimonial answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testimonial_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonial_answers/1
  # DELETE /testimonial_answers/1.json
  def destroy
    @testimonial_answer.destroy
    respond_to do |format|
      format.html { redirect_to testimonial_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial_answer
      @testimonial_answer = TestimonialAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonial_answer_params
      params.require(:testimonial_answer).permit(:testimonial_question_id, :testimonial_id, :answer)
    end
end

class TestimonialQuestionsController < ApplicationController
  before_action :set_testimonial_question, only: [:show, :edit, :update, :destroy]

  # GET /testimonial_questions
  # GET /testimonial_questions.json
  def index
    @testimonial_questions = TestimonialQuestion.all
  end

  # GET /testimonial_questions/1
  # GET /testimonial_questions/1.json
  def show
  end

  # GET /testimonial_questions/new
  def new
    @testimonial_question = TestimonialQuestion.new
  end

  # GET /testimonial_questions/1/edit
  def edit
  end

  # POST /testimonial_questions
  # POST /testimonial_questions.json
  def create
    @testimonial_question = TestimonialQuestion.new(testimonial_question_params)

    respond_to do |format|
      if @testimonial_question.save
        format.html { redirect_to @testimonial_question, notice: 'Testimonial question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testimonial_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @testimonial_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonial_questions/1
  # PATCH/PUT /testimonial_questions/1.json
  def update
    respond_to do |format|
      if @testimonial_question.update(testimonial_question_params)
        format.html { redirect_to @testimonial_question, notice: 'Testimonial question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testimonial_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonial_questions/1
  # DELETE /testimonial_questions/1.json
  def destroy
    @testimonial_question.destroy
    respond_to do |format|
      format.html { redirect_to testimonial_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial_question
      @testimonial_question = TestimonialQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonial_question_params
      params.require(:testimonial_question).permit(:question, :priority)
    end
end

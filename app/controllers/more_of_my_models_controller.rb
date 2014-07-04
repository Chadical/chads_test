class MoreOfMyModelsController < ApplicationController
  before_action :set_more_of_my_model, only: [:show, :edit, :update, :destroy]

  # GET /more_of_my_models
  # GET /more_of_my_models.json
  def index
    @more_of_my_models = MoreOfMyModel.all
  end

  # GET /more_of_my_models/1
  # GET /more_of_my_models/1.json
  def show
  end

  # GET /more_of_my_models/new
  def new
    @more_of_my_model = MoreOfMyModel.new
  end

  # GET /more_of_my_models/1/edit
  def edit
  end

  # POST /more_of_my_models
  # POST /more_of_my_models.json
  def create
    @more_of_my_model = MoreOfMyModel.new(more_of_my_model_params)

    respond_to do |format|
      if @more_of_my_model.save
        format.html { redirect_to @more_of_my_model, notice: 'More of my model was successfully created.' }
        format.json { render :show, status: :created, location: @more_of_my_model }
      else
        format.html { render :new }
        format.json { render json: @more_of_my_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /more_of_my_models/1
  # PATCH/PUT /more_of_my_models/1.json
  def update
    respond_to do |format|
      if @more_of_my_model.update(more_of_my_model_params)
        format.html { redirect_to @more_of_my_model, notice: 'More of my model was successfully updated.' }
        format.json { render :show, status: :ok, location: @more_of_my_model }
      else
        format.html { render :edit }
        format.json { render json: @more_of_my_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /more_of_my_models/1
  # DELETE /more_of_my_models/1.json
  def destroy
    @more_of_my_model.destroy
    respond_to do |format|
      format.html { redirect_to more_of_my_models_url, notice: 'More of my model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @more_of_my_model.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_more_of_my_model
      @more_of_my_model = MoreOfMyModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def more_of_my_model_params
      params.require(:more_of_my_model).permit(:you_betcha, :how_many, :my_model_id)
    end
end

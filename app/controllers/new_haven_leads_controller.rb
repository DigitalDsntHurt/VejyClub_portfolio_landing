class NewHavenLeadsController < ApplicationController
  before_action :set_new_haven_lead, only: [:show, :edit, :update, :destroy]

  # GET /new_haven_leads
  # GET /new_haven_leads.json
  def index
    @new_haven_leads = NewHavenLead.all
  end

  # GET /new_haven_leads/1
  # GET /new_haven_leads/1.json
  def show
  end

  # GET /new_haven_leads/new
  def new
    @new_haven_lead = NewHavenLead.new
  end

  # GET /new_haven_leads/1/edit
  def edit
  end

  # POST /new_haven_leads
  # POST /new_haven_leads.json
  def create
    @new_haven_lead = NewHavenLead.new(new_haven_lead_params)

    respond_to do |format|
      if @new_haven_lead.save
        format.html { redirect_to @new_haven_lead, notice: 'New haven lead was successfully created.' }
        format.json { render :show, status: :created, location: @new_haven_lead }
      else
        format.html { render :new }
        format.json { render json: @new_haven_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_haven_leads/1
  # PATCH/PUT /new_haven_leads/1.json
  def update
    respond_to do |format|
      if @new_haven_lead.update(new_haven_lead_params)
        format.html { redirect_to @new_haven_lead, notice: 'New haven lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_haven_lead }
      else
        format.html { render :edit }
        format.json { render json: @new_haven_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_haven_leads/1
  # DELETE /new_haven_leads/1.json
  def destroy
    @new_haven_lead.destroy
    respond_to do |format|
      format.html { redirect_to new_haven_leads_url, notice: 'New haven lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_haven_lead
      @new_haven_lead = NewHavenLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_haven_lead_params
      params.require(:new_haven_lead).permit(:name, :fav_veg, :email, :phone, :zip, :space)
    end
end

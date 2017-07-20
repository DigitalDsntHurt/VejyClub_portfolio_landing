class SimpleLeadsController < ApplicationController
  before_action :set_simple_lead, only: [:show, :edit, :update, :destroy]

  # GET /simple_leads
  # GET /simple_leads.json
  def index
    @simple_leads = SimpleLead.all
  end

  # GET /simple_leads/1
  # GET /simple_leads/1.json
  def show
  end

  # GET /simple_leads/new
  def new
    @simple_lead = SimpleLead.new
  end

  # GET /simple_leads/1/edit
  def edit
  end

  # POST /simple_leads
  # POST /simple_leads.json
  def create
    @simple_lead = SimpleLead.new(simple_lead_params)

    respond_to do |format|
      if @simple_lead.save
        format.html { redirect_to @simple_lead, notice: 'Simple lead was successfully created.' }
        format.json { render :show, status: :created, location: @simple_lead }
      else
        format.html { render :new }
        format.json { render json: @simple_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_leads/1
  # PATCH/PUT /simple_leads/1.json
  def update
    respond_to do |format|
      if @simple_lead.update(simple_lead_params)
        format.html { redirect_to @simple_lead, notice: 'Simple lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_lead }
      else
        format.html { render :edit }
        format.json { render json: @simple_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_leads/1
  # DELETE /simple_leads/1.json
  def destroy
    @simple_lead.destroy
    respond_to do |format|
      format.html { redirect_to simple_leads_url, notice: 'Simple lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_lead
      @simple_lead = SimpleLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_lead_params
      params.fetch(:simple_lead, {})
    end
end

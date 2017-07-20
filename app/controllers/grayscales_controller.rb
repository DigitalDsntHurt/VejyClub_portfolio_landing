class GrayscalesController < ApplicationController
  layout "grayscale"
    def index
    end

    def form_land
    	@lead = Lead.new
    	@new_haven_lead = NewHavenLead.new
    end
end
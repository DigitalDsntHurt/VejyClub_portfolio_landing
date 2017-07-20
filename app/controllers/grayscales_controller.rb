class GrayscalesController < ApplicationController
  layout "grayscale"
    def index
    end

    def form_land
    	@lead = Lead.new
    end
end
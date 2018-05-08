class BitesController < ApplicationController
  def index
    species = params[:species]
    @bites = Bite.search(species)
    json_response(@bites)
  end

  def show
    @bite = Bite.find(params[:id])
    json_response(@bite)
  end
end

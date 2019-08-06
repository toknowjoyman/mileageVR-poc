class VegGuidesController < ApplicationController

  def index
    # @test = VegGuide.find(1)
    @test = params[:query]
  end

end

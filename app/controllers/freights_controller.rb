class FreightsController < ApplicationController
  before_action :set_freights, only: [:index]

  def index
    respond_with(@freights)
  rescue StandardError => e
    render_rescue(e)
  end

  def create
    Freight.transaction do
      @freight = Freight.new(freight_params)
      raise ActiveRecord::RecordNotUnique unless @freight.valid?

      @freight.save
    end
    respond_with(@freight)
  rescue ActiveRecord::RecordNotUnique => e
    render_rescue(e)
  end

  private

  def set_freights
    @freights ||= Freight.all
  end

  def freight_params
    params.require(:freight).permit(Freight.allowed_attributes)
  end
end

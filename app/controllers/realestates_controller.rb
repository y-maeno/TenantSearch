class RealestatesController < ApplicationController
  def index
    @q = Tenant.ransack(params[:q])
    @tenants = @q.result(distinct: true)
    # @q = Realestate.new(params.require(:realestate))
  end

  def search
    # @q = Realestate.new
    @q = Tenant.search(search_params)
    @tenants = @q.result(distinct: true)
  end

  private
    def search_params
      params.require(:q).permit(:min_size_lt, :max_size_gt, :floor_eq, :restaurant_eq)
    end
end

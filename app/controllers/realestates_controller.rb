class RealestatesController < ApplicationController
  def index
    @q = Tenant.ransack(params[:q])
    @tenants = @q.result(distinct: true)
  end

  def search
    @q = Tenant.search(search_params)
    @tenants = @q.result(distinct: true)
  end

  private
    def search_params
      params.require(:q).permit(:min_size_lteq, :max_size_gteq, :floor_eq, :restaurant_eq)
    end
end

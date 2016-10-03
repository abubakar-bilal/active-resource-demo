class OwnersController < ApplicationController
  before_action :set_owner, only: [:show]

  def index
    @owners = Owner.all
  end

  def show
  end

  private

    def set_owner
      @owner = Owner.find_by_name(params[:name])
      render json: "Owner not found with name #{params[:name]}".to_json, status: :not_found unless @owner
    end
end

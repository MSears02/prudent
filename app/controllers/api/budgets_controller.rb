module Api
  class BudgetsController < ApplicationController
    respond_to :json

    def index
      respond_with Budget.all
    end
    def show
      respond_with Budget.find(params[:id])
    end

    def create
      respond_with Budget.create(params[:product])
    end

    def update
      respond_with Budget.update(params[:id], params[:product])
    end

    def destroy
      respond_with Budget.destroy(params[:id])
    end
  end
end

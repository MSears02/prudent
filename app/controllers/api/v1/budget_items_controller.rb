module Api
  module V1
    class BudgetItemsController < ApplicationController
      before_action :set_budget, only: [:show, :edit, :update, :destroy]
      respond_to :json
    
      # GET /budget_items
      # GET /budget_items.json
      def index
        resond_with BudgetItem.all
      end
    
      # GET /budget_items/1
      # GET /budget_items/1.json
      def show
      end
    
      # GET /budget_items/new
      def new
        @budget_item = BudgetItem.new
        @BCats = BudgetCategory.all.map{|bc| [bc.Name, bc.id]}
      end
      
      # GET /budget_items/1/edit
      def edit
        @BCats = BudgetCategory.all.map{|bc| [bc.Name, bc.id]}
      end
    
      # POST /budget_items
      # POST /budget_items.json
      def create
        @budget_item = BudgetItem.new(budget_item_params)
    
    
        respond_to do |format|
          if @budget_item.save
            format.html { redirect_to @budget_item, notice: 'Budget item was successfully created.' }
            format.json { render :show, status: :created, location: @budget_item }
          else
            format.html { render :new }
            format.json { render json: @budget_item.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /budget_items/1
      # PATCH/PUT /budget_items/1.json
      def update
        respond_to do |format|
          if @budget_item.update(budget_item_params)
            format.html { redirect_to @budget_item, notice: 'Budget item was successfully updated.' }
            format.json { render :show, status: :ok, location: @budget_item }
          else
            format.html { render :edit }
            format.json { render json: @budget_item.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /budget_items/1
      # DELETE /budget_items/1.json
      def destroy
        @budget_item.destroy
        respond_to do |format|
          format.html { redirect_to budget_items_url, notice: 'Budget item was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_budget_item
          @budget_item = BudgetItem.find(params[:id])
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def budget_item_params
          params.fetch(:budget_item, {}).permit(:amount, :BudgetCategory_id, :DueDate, :StartDate, :EndDate, :IsReocurring, :IsCollection)
        end
    end
  end
end

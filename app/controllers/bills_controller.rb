class BillsController < ApplicationController

  respond_to :json, :html

  def create
    debugger
    @bill = Bill.create!(bill_params)
    respond_with @bill
  end

  def show
    @bill = Bill.where(:code => params[:id]).first
    raise 'not_found' if @bill.nil?
  end

  private

  def bill_params
    params.require(:bill).permit(:total, :receipt)
  end

end
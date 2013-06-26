class BillsController < ApplicationController

  respond_to :json, :html

  def create
    @bill = Bill.create!(bill_params)
    redirect_to bill_path(@bill, name: params[:name])
  end

  def show
    redirect_to root_path if params[:name].blank?
    @bill = Bill.where(:code => params[:id]).first
    @claim = @bill.claims.find_or_create_by_name(params[:name])
    raise 'not_found' if @bill.nil?
  end

  private

  def bill_params
    params.require(:bill).permit(:total, :receipt)
  end

end

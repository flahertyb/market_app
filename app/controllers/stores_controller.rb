class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
  end

  def create
    Store.create(params.select { |k, v| Store.accessible_attributes.include?(k) })
    redirect_to controller: 'stores', action: 'index'
  end

  def edit
    @store = Store.find(params[:id])
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
  end
end

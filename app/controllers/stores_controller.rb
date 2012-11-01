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
  end

  def edit
    @store = Store.find(params[:id])
  end

  def destroy
  end
end

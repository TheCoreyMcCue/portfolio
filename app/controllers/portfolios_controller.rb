# frozen_string_literal: true

class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item Added.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    set_portfolio
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
        format.json { render :edit, status: :ok, location: @portfolio_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolios.errors, status: :unprocessable_entity }
      end
    end
  end
end

private

def portfolio_params
  params.require(:portfolio).permit(:title, :body, :subtitle)
end

def set_portfolio
  @portfolio_item = Portfolio.find(params[:id])
end

class NumbersController < ApplicationController

  include NumbersHelper

  def index
    numbers = Number.pluck(:number)
    render json: {phones: numbers}
  end

  def create
    number = params[:number].to_i
    loop do
      number ||= random_number_generator
      if Number.exists?(number: number) || Number.not_in_range(number)
        number = nil
      else
        number = Number.create(number: number)
        break
      end
    end
    render json: { phone: number, message: "Number successfully alloted." }
  end

end

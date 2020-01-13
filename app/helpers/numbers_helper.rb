module NumbersHelper

  def random_number_generator
    rand(Number::START_RANGE..Number::END_RANGE)
  end
  
end

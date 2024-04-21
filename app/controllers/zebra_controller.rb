class ZebraController < ApplicationController
  def home_page
    render(:template => "game_templates/home")
  end

  def square_new
    render(:template => "game_templates/square")
  end

  def square_results
    @the_num = params.fetch("number").to_f

    @the_square = @the_num ** 2

    render(:template => "game_templates/square_results")
  end

  def square_root_new
    render(:template => "game_templates/square_root")
  end

  def square_root_results
    @input = params.fetch("number").to_f

    @root = @input ** 0.5

    render(:template => "game_templates/square_root_results")
  end

  def payment_new
    render(:template => "game_templates/payment")
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    period_rate = @apr / 1200
    periods = @years * 12

    numerator = period_rate * @principal
    denominator = 1 - (1 + period_rate) ** (-1 * periods)

    @monthly_payment = (numerator / denominator).to_fs(:currency)

    render(:template => "game_templates/payment_results")
  end

  def random_new
    render(:template => "game_templates/random")
  end

  def random_results
  @minimum = params.fetch("user_min").to_f
  @maximum = params.fetch("user_max").to_f

  @random_number = rand(@minimum..@maximum).to_f

  render(:template => "game_templates/random_results")
  end
end

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
end

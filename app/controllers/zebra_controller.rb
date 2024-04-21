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
end

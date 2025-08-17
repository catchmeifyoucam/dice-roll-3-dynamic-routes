class DiceController < ApplicationController
  def render_homepage
    render({ :template => "dice_templates/homepage" })
  end

  #---flexible----

  def roll_flexible
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("number_of_sides").to_i

    @rolls = []

    @num_dice.times do 
      dice = rand(1..@sides)
      @rolls.push(dice)
    end
    render({ :template => "dice_templates/result_flexible"})
  end
end

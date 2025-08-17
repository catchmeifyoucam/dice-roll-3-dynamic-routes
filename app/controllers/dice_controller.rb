class DiceController < ApplicationController
  def render_homepage
    render({ :template => "dice_templates/homepage" })
  end

  #---dice/50/6----

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

  def roll_two_six
    @rolls = []

    2.times do
      dice = rand(1..6)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/result_two_six" })
  end

  def roll_two_ten
    @rolls = []

    2.times do
      dice = rand(1..10)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/result_two_ten" })
  end

  def roll_one_twenty
    @rolls = []

    1.times do
      dice = rand(1..20)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/result_one_twenty" })
  end

  def roll_five_four
    @rolls = []

    5.times do
      dice = rand(1..4)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/result_five_four" })
  end
end

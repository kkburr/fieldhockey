class StaticPagesController < ApplicationController
  def home
    @players = Player.all
  	@programs = Program.all
  end

  def about
  end
end

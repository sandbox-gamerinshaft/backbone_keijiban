class ApplicationsController < ApplicationController
  def index
    @boards = Board.all
  end
end

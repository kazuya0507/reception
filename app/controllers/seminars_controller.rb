class SeminarsController < ApplicationController
  def new
    @seminer = Seminar.new
  end
end

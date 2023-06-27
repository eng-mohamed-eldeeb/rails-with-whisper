class WhispersController < ApplicationController
  before_action :set_whisper, only: %i[ show update destroy ]

  # GET /whispers
  def index
    @whispers = `python3 app/controllers/whispers.py`
    render json: @whispers
  end
end

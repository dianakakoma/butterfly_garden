class Api::ButterfliesController < ApplicationController
  def index
    @butterflies = Butterfly.all
    render "index.json.jb"
  end

  def create
    @butterfly = Butterfly.new(
      name: params[:name],
      region: params[:region]
    )
    @butterfly.save
    render "show.json.jb"
  end

  def show
    @butterfly = Butterfly.find_by(id: params[:id])
    render "show.json.jb"
  end
end

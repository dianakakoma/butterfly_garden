class Api::ButterfliesController < ApplicationController
  def index
    @butterflies = Butterfly.all
    render "index.json.jb"
  end

  def create
    @butterfly = Butterfly.new(
      name: params[:name],
      region: params[:region]
      attach_main_pic(item) if admin_params[:picture].present?
    )
  end
    @butterfly.save
    render "show.json.jb"
  end

  private
  
  def attach_main_pic(item)
    item.picture.attach(admin_params[:picture])
  end

  def item_params
    {
      name: admin_params[:name],
      region: admin_params[:region],
    }
  end

def admin_params
  params.permit(
    :name,
    :region,
    :picture
  )

end
  def show
    @butterfly = Butterfly.find_by(id: params[:id])
    render "show.json.jb"
  end
end

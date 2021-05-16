class ProjectsController < ApplicationController
  /http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard/

  def index
    @projects = Project.all
  end

  def create
    /Se pasa la base de datos de Projects a la variable de instancia/
    @projects = Project.create(name: params[:name], description: params[:description], start_date: params[:start_date], end_date: params[:end_date], estadopr:params[:estadopr] )
  end

  def dashboard
    @projects = Project.all.order(created_at: :desc)

    if params[:name].present?
      @projects = Project.where('name = ?', params[:name])
    else
      @projects = Project.find_each
    end
  end
  
end

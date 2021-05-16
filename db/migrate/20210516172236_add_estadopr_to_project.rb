class AddEstadoprToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :estadopr, :string
  end
end

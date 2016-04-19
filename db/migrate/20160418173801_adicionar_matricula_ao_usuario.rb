class AdicionarMatriculaAoUsuario < ActiveRecord::Migration
  def change
    add_column :users, :matricula, :string
  end
end

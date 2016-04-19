class MudarMatriculaParaCpf < ActiveRecord::Migration
  def change
    rename_column :users, :matricula, :cpf
  end
end

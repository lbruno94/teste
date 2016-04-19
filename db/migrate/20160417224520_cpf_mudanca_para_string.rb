class CpfMudancaParaString < ActiveRecord::Migration
  def change
    change_column :users, :cpf, :string
  end
end

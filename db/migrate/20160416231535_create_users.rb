class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :matricula
      t.string :nome
      t.string :email
      t.integer :nivel_conta

      t.timestamps null: false
    end
  end
end

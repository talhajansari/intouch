class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :first_name
      t.string :last_name
      t.string :firm
      t.string :last_contacted
      t.text :other_info

      t.timestamps
    end
  end
end

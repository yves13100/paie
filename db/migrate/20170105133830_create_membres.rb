class CreateMembres < ActiveRecord::Migration[5.0]
  def change
    create_table :membres do |t|
      t.string :nom
      t.string :tel

      t.timestamps
    end
  end
end

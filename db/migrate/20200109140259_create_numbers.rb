class CreateNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :numbers do |t|
      t.bigint :number, unique: true

      t.timestamps
    end
  end
end

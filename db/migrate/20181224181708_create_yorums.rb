class CreateYorums < ActiveRecord::Migration[5.2]
  def change
    create_table :yorums do |t|
      t.string :mesaj

      t.timestamps
    end
  end
end

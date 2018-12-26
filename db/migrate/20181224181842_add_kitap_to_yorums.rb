class AddKitapToYorums < ActiveRecord::Migration[5.2]
  def change
    add_reference :yorums, :kitap, foreign_key: true
  end
end

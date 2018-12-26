class AddUserToYorums < ActiveRecord::Migration[5.2]
  def change
    add_reference :yorums, :user, foreign_key: true
  end
end

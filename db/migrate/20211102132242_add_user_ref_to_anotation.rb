class AddUserRefToAnotation < ActiveRecord::Migration[6.1]
  def change
    add_reference :anotations, :user, foreign_key: true
  end
end

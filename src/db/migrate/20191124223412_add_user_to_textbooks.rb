class AddUserToTextbooks < ActiveRecord::Migration[5.2]
  def change
    add_column :textbooks, :user, :string
  end
end

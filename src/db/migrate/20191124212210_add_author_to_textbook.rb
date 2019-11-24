class AddAuthorToTextbook < ActiveRecord::Migration[5.2]
  def change
    add_column :textbooks, :author, :string
  end
end

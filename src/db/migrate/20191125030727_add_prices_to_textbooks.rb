class AddPricesToTextbooks < ActiveRecord::Migration[5.2]
  def change
    add_column :textbooks, :price, :decimal
    add_column :textbooks, :offer, :message
  end
end

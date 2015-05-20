class AddWebsiteToShops < ActiveRecord::Migration
  def change
    add_column :shops, :website, :string
  end
end

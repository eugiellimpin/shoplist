class AddSocialMediaAccountsToShops < ActiveRecord::Migration
  def change
    add_column :shops, :facebook, :string
    add_column :shops, :instagram, :string
  end
end

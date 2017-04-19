class AddAdminToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :admin, :boolean, default: false
  end
end

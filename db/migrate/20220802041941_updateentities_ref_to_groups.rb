class UpdateentitiesRefToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :group, foreign_key: { to_table: :groups }
  end
end

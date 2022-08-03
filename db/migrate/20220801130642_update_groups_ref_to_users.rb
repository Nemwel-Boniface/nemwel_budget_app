# frozen_string_literal: true

class UpdateGroupsRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, foreign_key: { to_table: :users }
  end
end

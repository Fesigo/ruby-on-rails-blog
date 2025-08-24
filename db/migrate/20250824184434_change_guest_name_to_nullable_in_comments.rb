class ChangeGuestNameToNullableInComments < ActiveRecord::Migration[8.0]
  def change
    change_column_null :comments, :guest_name, true
  end
end

class ChangeBooleanToString < ActiveRecord::Migration[5.1]
  def change
    change_column :people, :alive, :string
  end
end

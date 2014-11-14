class AddColumnToAudiences < ActiveRecord::Migration
  def change
    add_column :audiences, :basic_type , :string
  end
end

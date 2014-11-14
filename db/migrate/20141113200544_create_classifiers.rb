class CreateClassifiers < ActiveRecord::Migration
  def change
    create_table :classifiers do |t|
      t.belongs_to :category
      t.belongs_to :company

      t.timestamps
    end
  end
end
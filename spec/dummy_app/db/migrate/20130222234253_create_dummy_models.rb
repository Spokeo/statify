class CreateDummyModels < ActiveRecord::Migration
  def change
    create_table :dummy_models do |t|
      t.string :foo
      t.string :bar

      t.timestamps
    end
  end
end

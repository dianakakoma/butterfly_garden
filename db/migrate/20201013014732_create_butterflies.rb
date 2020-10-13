class CreateButterflies < ActiveRecord::Migration[6.0]
  def change
    create_table :butterflies do |t|
      t.string :name
      t.string :region

      t.timestamps
    end
  end
end

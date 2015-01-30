class AddBandTable < ActiveRecord::Migration
  def change
    create_table(:band) { |t|
      t.column(:name, :string)

      t.timestamps
    }
  end
end

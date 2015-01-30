class AddVenueTable < ActiveRecord::Migration
    def change
      create_table(:venue) { |t|
        t.column(:name, :string)

        t.timestamps
      }
  end
end

class AddBandVenueTable < ActiveRecord::Migration
  def change
      create_table(:band_venue) { |t|
        t.column(:band_id, :integer)
        t.column(:venue_id, :integer)

        t.timestamps
      }
  end
end

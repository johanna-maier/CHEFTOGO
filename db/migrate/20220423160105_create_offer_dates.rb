class CreateOfferDates < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_dates do |t|
      t.datetime :datetime
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

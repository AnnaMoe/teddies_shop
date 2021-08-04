class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :teddy_sku
      # by default saves currency in db, we don't need that aswe have only one currency - so then less data in our db
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :teddy, null: false, foreign_key: true

      t.timestamps
    end
  end
end

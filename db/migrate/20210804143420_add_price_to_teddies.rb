class AddPriceToTeddies < ActiveRecord::Migration[6.0]
  def change
    # currency: { present: false } means: in db not stored which currency it is; if you can pay in two different currencies, then this line needs to be removed
    add_monetize :teddies, :price, currency: { present: false }
  end
end

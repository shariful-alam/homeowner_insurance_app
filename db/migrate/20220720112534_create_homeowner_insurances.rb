class CreateHomeownerInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :homeowner_insurances do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.integer :assessment, null: false
      t.string :address, null: false
      t.string :zip, null: false
      t.string :city, null: false
      t.string :province, null: false
      t.string :language, null: false
      t.string :homeowner_names, array: true, null: false
      t.integer :type_of_property, null: false
      t.string :existing_homeowner
      t.string :purchase_date, null: false
      t.string :lot_numbers, null: false
      t.string :property_address, null: false
      t.string :property_city, null: false
      t.string :property_zip, null: false
      t.boolean :bound_by_water, null: false
      t.boolean :on_municipal_water, null: false
      t.boolean :title_insurance_already_issued, null: false
      t.boolean :denied_for_insurance, null: false
      t.text :notes
      t.string :referral_agent_name
      t.string :referral_agent_email
      t.string :request_a_callback_phone, null: false
      t.integer :request_a_callback_best_moment, null: false
      t.timestamps
    end
  end
end

class AddDetailsToSeminars < ActiveRecord::Migration[5.2]
  def change
    add_column :seminars, :company_address, :string
    add_column :seminars, :birth_date, :date
    add_column :seminars, :phone_number, :integer
  end
end

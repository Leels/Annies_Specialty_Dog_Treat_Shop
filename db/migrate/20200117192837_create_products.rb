class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column(:name, :string)
      t.column(:year, :integer)
      t.column(:country_of_origin, :string)

      t.timestamps()
    end
  end
end

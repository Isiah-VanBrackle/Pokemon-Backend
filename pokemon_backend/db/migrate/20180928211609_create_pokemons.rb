class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :sprite_image
      t.string :battle_type_1 # re-migrate to fix this error, can't use type
      t.string :battle_type_2
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end

class CreateEnoCards < ActiveRecord::Migration[5.0]
  def change
    create_table :eno_cards do |t|
      t.string :text

      t.timestamps
    end
  end
end

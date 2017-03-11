class AddCounterCacheToEnocards < ActiveRecord::Migration[5.0]
  def change
    add_column :eno_cards, :impressions_count, :integer, default: 0
  end
end

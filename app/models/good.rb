class Good < ApplicationRecord
  belongs_to :brand, counter_cache: :goods_count
  belongs_to :developer
end

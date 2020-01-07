class Nice < ApplicationRecord
  belongs_to :space, counter_cache: :nices_count
  belongs_to :tenant
  validates_uniqueness_of :space_id, scope: :tenant_id
end

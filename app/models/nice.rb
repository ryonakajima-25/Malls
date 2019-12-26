class Nice < ApplicationRecord
  belongs_to :space
  belongs_to :tenant
  validates_uniqueness_of :space_id, scope: :tenant_id
end

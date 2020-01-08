class Brand < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :tenant
  has_many :goods, dependent: :destroy

  # def target_age=(value)
  #   str = ''
  #   value.each do |val|
  #     str += val.to_s + ','
  #   end

  #   result = str.empty? ? nil : (',' + str)

  #   write_attribute(:target_age ,result)
  # end

  # def facilities
  #   read_attribute(:target_age).to_s.split(';')
  # end


  def good_developer(developer_id)
    goods.find_by(developer_id: developer_id)
  end
end

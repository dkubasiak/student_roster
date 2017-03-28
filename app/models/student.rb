class Student < ApplicationRecord
  validates :first_name, :last_name, :email, :cell_phone, :home_phone, :work_phone, presence: true
  validates :email, format: {with: /.+@.+\..+/i}
  validates :cell_phone, :home_phone, :work_phone, format: {with: /\d{3}-\d{3}-\d{4}/}
end

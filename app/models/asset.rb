class Asset < ApplicationRecord
  validates_presence_of :comment,
    :end_date,
    :name,
    :order,
    :start_date,
    :source
end

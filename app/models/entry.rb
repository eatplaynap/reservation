class Entry < ApplicationRecord
  scope :least_entries, -> (date) {
    where( "reserved_date >= ? and reserved_date <= ?",
          date.to_date - 7.days, date.to_date + 7.days )
  }
end

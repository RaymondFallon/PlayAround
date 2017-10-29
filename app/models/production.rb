class Production < ApplicationRecord
  belongs_to :play
  validates :theater, :zipcode, presence: true
  validates_length_of :zipcode, maximum: 5
  validates :zipcode, format: { with: /\d{5}/, message: "Zip Code should be in standard 5-digit format, eg '60652'"}
  validate :close_after_open

  def close_after_open
    if :opening > :closing
      errors.add(:closing, '-- Show cannot close before it has opened, no matter how bad it is.')
    end
  end

end

class Task < ApplicationRecord
    validates :name, presence: true, length: {maximum: 30}
    validate :valdate_name_not_including_comma

    private

    def valdate_name_not_including_comma
        errors.add(:name, 'にカンマを加えることはできません') if name&.include?(',')
    end

end

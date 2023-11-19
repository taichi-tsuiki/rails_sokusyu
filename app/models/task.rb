class Task < ApplicationRecord
    before_validation :set_nameless_name
    validates :name, presence: true, length: {maximum: 30}
    validate :valdate_name_not_including_comma

    private

    def valdate_name_not_including_comma
        errors.add(:name, 'にカンマを加えることはできません') if name&.include?(',')
    end

    def set_nameless_name
        self.name = '名前なし' if name.blank?
    end

end

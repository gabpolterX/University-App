class Student < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { minimum: 5, maximum: 50 }
    validates(:email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 105 },
            # Verify email with ruby's standard library regex.
            format: { with: URI::MailTo::EMAIL_REGEXP })
end
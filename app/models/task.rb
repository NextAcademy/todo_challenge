class Task < ActiveRecord::Base
  validates :status, format: { with: /\A(done|undone)\z/i,
      message: "Your status must either be 'Done' or 'Undone'" }
  validates :desc, presence: true
end

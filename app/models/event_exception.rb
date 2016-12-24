class EventException < Application::Base

  belongs_to :event

  validates: time, presence: true

end

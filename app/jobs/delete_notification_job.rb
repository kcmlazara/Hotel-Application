class DeleteNotificationJob
  include Sidekiq::Job
  queue_as :default

  def perform(hotel_name,country_name)
    title = "Hotel as been deleted"
    description = "Hotel: #{hotel_name} in #{country_name}"

    Notification.create(
      title: title,
      description: description,
      opened: false
    )
  end
end
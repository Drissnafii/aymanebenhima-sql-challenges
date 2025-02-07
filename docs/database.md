sequenceDiagram
  actor Organizer as Organizer
  participant Frontend as Frontend
  participant EventController as EventController
  participant EventValidator as EventValidator
  participant EventModel as EventModel
  participant AdminNotification as AdminNotification
  participant Database as Database

  Organizer ->> Frontend: Fill event details form
  Frontend ->> EventController: submitEventData()
  EventController ->> EventValidator: validateEventData()
  alt Invalid Data
    EventValidator -->> EventController: Return validation errors
    EventController -->> Frontend: Display errors
    Frontend -->> Organizer: Show error messages
  else Valid Data
    EventValidator -->> EventController: Data validated
    EventController ->> EventModel: createEvent()
    EventModel ->> Database: insert event data
    Database -->> EventModel: Confirm insertion
    EventModel -->> EventController: Event created
    EventController ->> AdminNotification: notifyNewEvent()
    AdminNotification ->> Database: Store notification
    EventController -->> Frontend: Return success
    Frontend -->> Organizer: Display success message
  end

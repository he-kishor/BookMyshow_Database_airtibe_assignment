# BookMyshow_Database_airtibe_assignment
Database Architecture of Book My Show
![image](https://github.com/user-attachments/assets/4dcdb522-fefa-4b3e-af0f-3f4d8711b3e7)

# movie_ticket_booking_platform:
  ## description: >
    This schema represents a database system for managing movie ticket bookings. 
    It includes entities like cities, theaters, halls, movies, schedules, users, and bookings, 
    with structured relationships to ensure efficient management and data integrity.
  ## entities:
    - City:
        description: Stores information about cities.
        attributes:
          - ID: Unique identifier for the city.
          - state: State where the city is located.
          - city_name: Name of the city.
        relationships:
          - Theater: one_to_many

    - Theater:
        description: Represents theaters in a city.
        attributes:
          - id: Unique identifier for the theater.
          - t_name: Name of the theater.
          - t_address: Address of the theater.
          - city_id: Foreign key linking to the city.
          - Hall_count: Number of halls in the theater.
        relationships:
          - City: many_to_one
          - Hall: one_to_many
          - Scheduling: one_to_many

    - Hall:
        description: Represents individual halls within a theater.
        attributes:
          - id: Unique identifier for the hall.
          - hall_name: Name of the hall.
          - theater_id: Foreign key linking to the theater.
          - capacity: Seating capacity of the hall.
        relationships:
          - Theater: many_to_one
          - Scheduling: one_to_many

    - Movie:
        description: Stores information about movies.
        attributes:
          - id: Unique identifier for the movie.
          - movie_name: Name of the movie.
          - imdb_rating: IMDb rating of the movie.
        relationships:
          - Scheduling: one_to_many

    - Scheduling:
        description: Manages schedules of movies for theaters and halls.
        attributes:
          - id: Unique identifier for the schedule.
          - theater_id: Foreign key linking to the theater.
          - hall_id: Foreign key linking to the hall.
          - movie_id: Foreign key linking to the movie.
          - fees: Ticket fees for the schedule.
          - start_time: Schedule start time.
          - end_time: Schedule end time.
        relationships:
          - Theater: many_to_one
          - Hall: many_to_one
          - Movie: many_to_one
          - Booking: one_to_many

    - Users:
        description: Stores information about platform users.
        attributes:
          - id: Unique identifier for the user.
          - name: Name of the user.
          - gender: Gender of the user.
          - age: Age of the user.
        relationships:
          - Booking: one_to_many

    - Booking:
        description: Represents user bookings for schedules.
        attributes:
          - id: Unique identifier for the booking.
          - u_id: Foreign key linking to the user.
          - sched_id: Foreign key linking to the schedule.
        relationships:
          - Users: many_to_one
          - Scheduling: many_to_one

  ## workflow:
    - City_and_Theater_Management: >
        The platform assigns theaters to cities. Each theater has multiple halls where movies are scheduled.
    - Scheduling: >
        Each movie is assigned a schedule with fees and timings for a specific hall and theater.
    - User_and_Booking_Management: >
        Users browse schedules and make bookings by selecting a schedule ID.


# General Information

Appointment scheduling allows a user to view available appointments on schedules for different coaches, then schedule appointments in 30 minute increments depending on the remaining availability of a coaches particular schedule.

# Technologies
- Ruby - Version 2.6.6
- Rails - Version 6.1.4
- Bootstrap - Version 5.1.0
- SQLite3 - Version 1.4
- Simple Calendar - Version 2.4
- Nested Scaffold
- Devise (Authentication)

# Demo

[Add Demo Video Here]

# Setup

To clone this repository to your local system, enter the following command:
```
git clone git@github.com:hydroflux/appointment-scheduling.git
```

then run the following commands

```

bundle init
bundle install
rails s

```

# Challenges
- Having never used 'Views' in a Rails application, only building out API applications and then hitting from a separate front-end repository, it was difficult to learn .erb file syntax & how Rails views interacted with the MVC model. I attempted to overcome this challenge by familiarizing myself with the Rails documentation around 'Views', as well as following a tutorial in order to build a companion application alongside the 'Appointment Scheduling' application, but ultimately ran out of time before I was able to hit my MVP
- The 'Scaffold' generator is certainly a powerful resource, and it was interesting learning about the additional files that were generated as opposed to using the 'Model' and 'Resource' generators
- Integrating Bootstrap into rails views was much more manageable than I originally anticipated, which I worked into the companion application but wasn't able to use on the applicaiton
- Next steps will be re-reading Rails documentation around the MVC model & looking for a Rails tutorial series in order to further familiarize myself with integrating 'Views' into my rails application.

# Code Examples

<!-- Add Code Examples upon MVP Completion -->

# Features
- As a User, I can see which coaches I can schedule with
- As a User, I can see what 30 minute timeslots are available to schedule with a particular coach
- As a User, I can book an appointment with a coach at one of their available times

<!--  Update features after hitting mvp -->


# To Do List
- MVP
- Add simple_calendar calendar
- Update UX/UI with Bootstrap


# Contact Information
- Created by [Jack Hubert](github.com/hydroflux)
- Please contact me if you have any questions!

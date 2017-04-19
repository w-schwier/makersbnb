[![Stories in Ready](https://badge.waffle.io/w-schwier/makersbnb.png?label=ready&title=Ready)](http://waffle.io/w-schwier/makersbnb)


### MakersBnB specification

We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

## Headline specifications

Any signed-up user can list a new space.
Users can list multiple spaces.
Users should be able to name their space, provide a short description of the space, and a price per night.
Users should be able to offer a range of dates where their space is available.
Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
Nights for which a space has already been booked should not be available for users to book that space.
Until a user has confirmed a booking request, that space can still be booked for that night.

## Nice-to-haves

Users should receive an email whenever one of the following happens:
They sign up
They create a space
They update a space
A user requests to book their space
They confirm a request
They request to book a space
Their request to book a space is confirmed
Their request to book a space is denied
Users should receive a text message to a provided number whenever one of the following happens:
A user requests to book their space
Their request to book a space is confirmed
Their request to book a space is denied
A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space
Basic payment implementation though Stripe.
Mockups

Mockups for MakersBnB are available here.

## User Stories:

1.  As a user,
    so that I can use Air B'n'B,
    I want to be able to sign up.

2.  As a user,
    So that I can rent out my space,
    I can list a new space.

3.  As a user,
    so that I can rent out multiple properties,
    I can list multiple spaces.

4.  As a user,
    so that I can make my listing clear,
    I can name my property.

5.  As a user,
    so that I can market my property,
    I can give my property a description.

6.  As a user,
    So that guests can see how much to pay,
    I can set a price-per-night.

7.  As a user,
    So that a property can't be doubled-booked,
    guests can't request booked properties.

8.  As a user,
    So I can select when to rent out my property,
    I can offer a range of available dates.

9.  As a user,
    so that I can indicate my interest in a space,
    I can request to hire the space.

10. As a user,
    So that I can confirm the booking,
    I can approve the booking.

11. As a user,
    to increase my chances of renting out my property,
    guests can still book dates for spaces that are pending confirmation.

12. As a user,
    So that I can access my personal account,
    I want to be able to sign in.

13. As a user,
    So that I can stop using my account,
    I want to be able to sign out.

# Project 2 API

## Overview
API for the WanderList application. Allows users to register and
create a list of cities.

## Technologies Used
-   Ruby
-   Rails

## Entity Relationship Diagram
[Imgur](http://i.imgur.com/JOvIbe0.jpg)

## API Endpoints

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| GET    | `/cities`              | `cities#index`    |
| POST   | `/cities`              | `cities#create`   |
| GET    | `/cities/:id`          | `cities#show`     |
| PATCH  | `/cities/:id`          | `cities#update`   |
| DELETE | `/cities/:id`          | `cities#destroy`  |


## Link to client repository
https://github.com/vanduong28/project-2-trip-list-client

## Link to deployed API
https://secure-lowlands-17816.herokuapp.com/

## Installation
1. Install with 'bundle install'.
2. Start with 'bin/rails server'.

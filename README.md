[![Travis CI       ](https://travis-ci.org/nuncostans/rails_yevtushenko.svg)           ](https://travis-ci.org/nuncostans/rails_yevtushenko)
[![Coverage Status](https://coveralls.io/repos/github/nuncostans/rails_yevtushenko/badge.svg?branch=master)](https://coveralls.io/github/nuncostans/rails_yevtushenko?branch=master)
[On heroku](rails-yevtushenko.herokuapp.com)

# README

- [x] Add locales:
  - [x] Pl.
  - [x] UA.
- [x] Add emails.
- [ ] Add gems:
  - [x] Add devise to your project through User model
    - [x] Add relation one-to-one between User and Account models (User must have one account).
    - [x] Change logic for ordering products, you should send email about order to registered user’s email. (current_user.email).
    - [ ] add smt like *admin*, one who can edit products and images.
  - [x] Add paperclip to product model.
    - [x] Provide ability to upload image(s) to product.
    - [ ] If you add ability to add many images to product you will get a bonus) 
  - [x] Integrate devise and omniauth with google (bonus task, not required).


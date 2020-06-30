# README

This project user ruby '2.6.5'

After cloning the repository run
```
bundle install
```
To initialize the database
```
rails db:create
rails db:migrate
rails db:seed
```
You will need a Cloudinary key to store images from https://cloudinary.com/ and you can store it in an .env file with the variable name *CLOUDINARY_URL*

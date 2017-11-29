# README

## Welcome to Contacter!

- Getting Started: 
- Note:This service requires [httpie](https://httpie.org/doc). Go there to install it. If you have homebrew, enter `brew install httpie` in your terminal.

1. Clone this repo.

```
git clone http://github.com/seanrparker/contacter
```

2. Go to your command line and enter: 
```
cd contacter
bundle install
rake db:migrate
rails s -p 3000
```
- Note: if the server won't start, you might need to free that port and shut down other projects running it.

3. Open a browser and navigate to `localhost:3000/contacts`

### You are now ready to modify your contacts!

Following is a list of actions along with their commands.

Add a contact 
- Note: first_name and last_name are required

```
http POST :3000/contacts first_name=John last_name=Doe phone=555-555-5555 email=fake@email.com
```

Edit a contact
```
http PUT :3000/contacts/3 first_name=Jane
```

See all contacts:

```
http :3000/contacts
```

See one contact (with id 3):

```
http :3000/contacts/3
```

Delete a contact (with id 3):

```
http DELETE :3000/contacts/7
```
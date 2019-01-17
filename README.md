Writer's Block
=====================
Writer's Block is an online platform to create and read stories. In it,  writers can easily create and share their stories and readers can read, like and comment stories. It is built in React and Ruby on Rails.


### Contributors
[Kamylla Almeida](https://github.com/KamyllaAlmeida) |
[Mark Barlescu](https://github.com/mBarlescu)


### Demo

#### Reading a story
![demo video of writer's block](https://github.com/KamyllaAlmeida/writers-block-project/blob/master/docs/read.gif?raw=true)

#### Creating a story
![demo video of writer's block](https://github.com/KamyllaAlmeida/writers-block-project/blob/master/docs/create.gif?raw=true)

- Logged in users are able to create and edit a new story. They are also able to like, and comment stories and paragraphs.
- Users without an account can read stories and comments, they can also see authors page.



### Dependencies

* rails: "5.2.2"
* react: "^16.7.0"
* jbuilder: "2.5"
* axios: "^0.18.0"
* bootstrap: "^4.2.1"
* filepond: "^3.7.4"
* react-bootstrap: "^0.32.4"
* react-dom: "^16.7.0"
* react-filepond: "^5.0.0"
* react-router-dom: "^4.3.1"
* react-scripts: "^2.1.3"
* reactstrap: "^6.5.0"
* bcrypt: "3.1.7"
* pg 

### Usage

Clone the project and create your own git repo. 

Start the client.

```
cd client
npm install
npm start
```

Start the server.

```
cd server
bundle install
bin/rails s -b 0.0.0.0 -p 3001
```
Then open the system in your browser.

```
open http://localhost:3000
```

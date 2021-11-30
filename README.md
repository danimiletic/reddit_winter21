# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Objects in your in db

Objects -> Model 

Model -> Controller 

Controller actions -> View / Component

Repeat for each object

Sub, Topic, Comment
Sub Model 
  Subs Controller 
    actions ->
    Index View = Subs 
    Show View = Sub 
    New View = SubNew
    Edit View = SubEdit
    create, update, destroy - model, no views but do handle in one of the above. 
Topic model 
  Topics Controller
  actions ->
    Index View = Topics 
    Show View = Topic 
    New View = TopicNew
    Edit View = TopicEdit
    create, update, destroy - model, no views but do handle in one of the above. 
comment Model 
  Comments Controller
  actions ->
    Index View = Comments 
    Show View = Comment 
    New View = CommentNew
    Edit View = CommentEdit
    create, update, destroy - model, no views but do handle in one of the above. 

View -> pages 

* Make sure the parent for all MVC Routes all done in
order to move on the the child, or else error and unfinished code.

Billboard 
  model
  controller 
  each views 

Artist 
  model 
  controller
  each views

Song
  model 
  controller
  each views


Billboard 
name - Top Nov Hits 
desc - popping music for nov.
image - url to image online
  id - 1

Artist 
name - Maroon 5 
rank - 20th 
billboard_id - 1
  id - 6

Song 
  title - Payphone 
  duration - 3.45
  album - Cell 
  artist_id - 6

# js Obj Destruction
<!-- const person = {id: 12, name:'John', age:34}
  const id = person.id
  const name = person.name
  const age = person.age -->
const {id, name, age, notOnPerson} = person
console.log(id) //=> 12
console.log(name) //=> 'John'
console.log(age) //=> 34
console.log(notOnPerson) //=>  undefined (but not an ERROR *import distinction*)


Views, Components 
Return 
JSX 
HTML + JS 
{ able to run js in {} }
<h1 class="title"> -> <h1 className="title">
Need to have in a grouping elements
<>

</>

<h1>title</h1>
<p>para</p>
this will give you an error

<>
  <h1>title</h1>
  <p>para</p>
</>




# Ruby Objects Has Many Lab

## Objectives

1. Build out the has many/belongs to relationship between two classes. 
2. Build methods that use the has many/belongs to relationship between two classes. 
3. Use a class variable to track data about a class. 
4. Build a class method to expose data stored in a class variable. 

## Instructions

In this lab, we'll be dealing with two sets of classes. The `Artist` and `Song` class and the `Author` and `Post` class. An artist should have many songs and a song should belong to an artist. An author should have many posts and a post should belong to an author. 

Because of the has many/belongs to relationship between your classes, the `Artist` tests, i.e. the tests in `spec/artist_spec.rb`, rely on some code in the `Song` class and vice versa. The same is true of the tests for the `Author` and `Post` classes. So, as you proceed through solving this lab, you will go back and forth between coding in `Artist` and `Song` and between coding in `Author` and `Post`. 

We recommend starting out by getting some of the initial `Song` tests passing and switching to write code in the `Artist` class as directed by the test output. Then, once your `Artist` and `Song` tests are passing, do the same for `Author` and `Post`. 

This lab is primarily test-driven. So run the test suite with the `learn` command to get started. Read the test output very carefully to help guide you through. First, read through the guidelines below and refer back to them as you complete the lab. 

### Building the has many/belongs to relationship

#### Artists and Songs
How can an artist have many songs and a song belong to an artist? 

An individual song will need to be able to be initialized with an `artist` object -- which can be passed in as an argument to the Song.new method -- and should have an `#artist` getter method to reveal the artist. The Song class itself should have a class variable `@@all` equal to an array which will contain each created Song, the songs should be added to that array when they are created. It should be able to reveal that array of songs with an `.all` class method.

An individual artist will need to have a `#songs` method that will run a `select` iteration on the return value of the Song class' `all` method (the array of songs contained in its `@@all` class variable), and select the songs whose artist is equal to `self`.


#### Authors and Posts

How can an author have many posts and a post belong to an author? Well by using the same exact logic we used for our Song and Artist classes! The Post class will keep track of all created posts in an `@@all` class variable, exposed by it's `all` getter method. And each instance of post will hold on to it's author. An author will be able to find it's posts by calling the Post classes `all` method, and running a `select` iteration on that array to capture each post with an author equal to self.

### Building on our Associations

Now that we have our classes and associations successfuly set up, we can focus on building some cool methods that utilize our associations to add some convenient functionality:

#### The `Song#add_song_by_name` and `Post#add_post_by_title` Methods

To get the tests on these methods passing, you'll need to define methods that accept an argument of a name (or title), and use that argument to create a new song (or post) passing in `self` as the artist (or author) which will create that new instance and associate the objects to each other.

#### The `Song#artist_name` and `Post#author_name` Methods

Build these methods to return the names of the artist and author of the given song and post respectively.

These methods should use, or extend, the has many/belongs to relationship you're building out. If a song has an artist, you can call: `some_song.artist` and return an actual instance of the `Artist` class. Since every artist has a name, `some_song.artist.name` should return the name of a the `Artist` instance associated with the given song. Your `#artist_name` method should utilize this relationship. 

**Note:** We like our code to be robust, i.e. not easily breakable. Make sure your `#artist_name` and `#author_name` methods will not break if the given song or post does not have an artist or author. In this case, your methods should return `nil`. (Think about how you'd prevent the code from breaking in a cese where we create a song or post without passing in the artist or author argument)


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ruby-objects-has-many-lab' title='Ruby Objects Has Many Lab'>Ruby Objects Has Many Lab</a> on Learn.co and start learning to code for free.</p>

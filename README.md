## netguru RoR workshop - test blog

Hello stranger! You have just taken your first step on your adventure with programming in Ruby. We are proud of you! Now, we challenge you to complete the following task. Ready, steady...

Follow the instructions:

1. Clone the repository: `git clone git@github.com:netguru/testblog.git`
2. Install an appropriate Ruby (2.1) - we recommend using [RVM](https://rvm.io/) - and run the command `bundle`
3. Launch the app and take a look around (`bundle exec rails s`)
4. Your job is to:
    * add a simple comment system
    * add a simple voting system (vote_up / vote_down is enough)
    * in the post view the date should be formatted like so – `21/07/2013 : 14:10`
    * after receiving three negative votes the comemnt should be marked as abusive and hidden from the user
    * that comment should still be visible to the author of the post on the comments list, the author should be able to cancel the 'abusive' state
    * user can't vote twice for the same comment
    * all those actions should be accessible through the app interface (you need to add/modify views - fixing the unit tests is not enough)
    * :exclamation: all specs should be green :green_heart:
5. General rules:
    * don't fork the repository. Clone it and make a new one – we want all of you to have equal chances
    * try writing small, self-containing commits
    * do not modify the specs, only the application code
6. If you run into any difficulties you can always talk about them with other participants or one of the coaches on our [open channel](https://www.hipchat.com/gElgOYCSJ)
7. I see that you're doing great! When all tasks are done and the specs are green:
    * put the project on [Heroku](https://www.heroku.com/) (starter guide available [here](https://devcenter.heroku.com/articles/rails3))
    * fill out the [registration form](https://docs.google.com/forms/d/12o5KZJfFZMgnKOPiDhiFl94K74yDIdbVlxpGhk3-ecM/viewform)
8. Splendid! You've finished the task. We will soon let you know about the result.

Remember – there is a lmited number of attendees, so the sooner you complete the task the better your chances are.

## Here are some great resources to help you with kicking off your adventure with Rails:

* [http://www.codeschool.com/paths/ruby](http://www.codeschool.com/paths/ruby) - free Ruby and Rails courses available at the elementary level
* you want to be sure your Rails basis are solid? Check out the Ruby Koans - [http://rubykoans.com/](http://rubykoans.com/)
* [http://guides.rubyonrails.org/](http://guides.rubyonrails.org/) - sooner or later this one will come in handy
* not feeling comfortable with JavaScript / jQuery? CodeSchool can help you with this one too - [http://www.codeschool.com/courses/try-jquery](http://www.codeschool.com/courses/try-jquery)

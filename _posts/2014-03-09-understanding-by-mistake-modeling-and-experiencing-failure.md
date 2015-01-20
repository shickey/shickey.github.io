---
layout: post
title: "Understanding By Mistake: Modeling and Experiencing Failure"
subtitle: "Failure is an Option"
date: 2014-03-09 12:00:00
---

I teach computer science. Specifically, I teach introductory CS at the 9-12 level, though most of my students are 11th and 12th graders. For many/most of my students, my course is their first experience with reading and writing code and having to think in algorithmic ways.

Learning to write code is a messy process. While I think there are ways to accelerate one’s learning, I also think that writing good code requires one to first spend a lot of time writing bad code. Like, a _lot_ of time. Furthermore, every programmer I’ve ever known, no matter where they are in their career has moments of banging their head against the wall, spinning in circles, and designing solutions that ultimately fail. In light of this, I think it’s only fair that I design my course in such a way that not only allows for failure, but encourages it in my students. This idea has a variety of structural and pedagogical implications (project-based learning, encouraging collaboration at all times, utilizing standards-based grading, etc.) but also social implications — i.e., intentionally building a culture in the classroom that views failure not as a road block, but instead as a road sign for where to go next.

I truly believe that part of building that culture is modeling a learning process for my students (which I also think is simply an effective teaching method). In light of this, I try to always be working on a coding project myself and/or learning a new language or framework. In case you haven’t heard, MV* JavaScript frameworks are all the rage these days in web development so I figured I should see what all the fuss is about. Coming from a background in iOS and Rails, I decided Ember was the likely candidate.

I figured, as is the convention at this point, I’d start by putting together a simple to-do app. And in the spirit of being a Good Developer™, I wanted to do it in a truly test-driven environment. It took me the better part of a week to getting the Ember testing stack up and working the way I wanted (which is a post for another time), but I was finally ready to start the red, green, refactor process. I wrote the following test for adding new list items:

{% highlight coffeescript %}
it "should allow the user to add new items to the list", ->
  selector = '#input-list-item'
  andThen ->
    $(selector).should.exist
  fillIn(selector, "hello world")
  keyEvent(selector, 'keypress', 13)
  andThen ->
    $('.list-item').length.should.equal 3
    $('.list-item:eq(2)').text().should.contain "hello world"
{% endhighlight %}

Sure enough, the test failed at first, but after implementing the right functionality, it still failed over and over again. I spent hours pouring through my code, rewriting the test, checking to see if key presses were being bound correctly, scouring the Ember documentation, reading question after question on stackoverflow, etc. Finally, at long last, I found the culprit. Here’s the correct, updated test:

{% highlight coffeescript %}
it "should allow the user to add new items to the list", ->
  selector = '#input-list-item'
  andThen ->
    $(selector).should.exist
  fillIn(selector, "hello world")
  keyEvent(selector, 'keyup', 13)
  andThen ->
    $('.list-item').length.should.equal 3
    $('.list-item:eq(2)').text().should.contain "hello world"
{% endhighlight %}

Can you spot the difference*? Yeah, that took me 3 hours.

I realized that working on my own projects not only helps my students by providing a model of learning, but helps me remember how frustrating writing code can be when you don’t know what you are doing wrong. Learning really is a series of mistakes and sometimes that is hard to remember when we, as educators, know our content area so well that we forget what it feels like to fail.

<hr />

\*Hint: check the keyEvent function

<small>\[Cross-posted from [Medium](https://medium.com/@seanhic/a27332a8524b)\]</small>
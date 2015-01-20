---
layout: post
title: "A Minimal Gmail Snooze"
subtitle: "8 Lines of Code + A Hashtag"
date: 2014-05-11 12:00:00
---

The annual MN Google Summit took place this weekend at Edina High School courtesy of [Flipped Education](http://www.flippededucation.com/). I was invited to participate in the demo slam at the end of the conference and I took the opportunity to show how one can create a fully automated snooze system for Gmail with 8 lines of code. The result is so short, it can be minified down to fit in a single tweet:

<div class="tweet">
  <div class="tweet-embed">
    <blockquote class="twitter-tweet" lang="en"><p>function us(){var e=GmailApp.getUserLabelByName(&quot;Snooze&quot;);var t=e.getThreads();t.map(function(t){t.removeLabel(e);t.moveToInbox()})} <a href="https://twitter.com/hashtag/mngs?src=hash">#mngs</a></p>&mdash; Sean Hickey (@seanhic) <a href="https://twitter.com/seanhic/status/465238759949094912">May 10, 2014</a></blockquote>
    <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
  </div>
  <div class="tweet-caption">
    <div class="tweet-caption-content">
      With room to spare for a hashtag!
    </div>
  </div>
</div>

The system works by setting up a label for snoozed messages, then creating a script to run at a specified time interval to “unsnooze” the messages by removing the snooze label and moving them back to the inbox. In this way, snoozing an email is as simple as dragging it into the snooze label.

### The Nitty-Gritty

Setting up the system takes only a few minutes (and probably less if you’ve already installed Apps Script into your Google Drive). If you’re a scripter already, here’s the un-minified code you can use to unsnooze your messages. Set up a time-based trigger to run the script automatically.

{% highlight javascript %}
function unsnooze(){
  var label = GmailApp.getUserLabelByName("Snooze");
  var messages = label.getThreads();
  messages.map(function(m){
    m.removeLabel(label);
    m.moveToInbox();
  });
}
{% endhighlight %}

If you want to use a different label name for your snoozed messages, be sure to change the “Snooze” string on the second line to match.

For detailed instructions, [check out this document](https://docs.google.com/document/d/1KJHgzK4irpQOXlFhlJp-pPHsXRQT6Y7-_PXofNnnLEg/edit?usp=sharing).

<hr />

P.S. Coincidentally, as of this morning [it looks like this script may soon be obsolete](http://thenextweb.com/google/2014/05/10/google-trialling-beautiful-new-gmail-layout/?utm_content=bufferab74d&amp;utm_medium=social&amp;utm_source=twitter.com&amp;utm_campaign=buffer) as Google prepares to include snooze as a standard feature!

<small>\[Cross-posted from [Medium](https://medium.com/@seanhic/208cde1ed9ff)\]</small>
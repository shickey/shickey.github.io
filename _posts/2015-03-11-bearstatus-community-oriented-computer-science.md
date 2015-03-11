---
layout: post
title: "BearStatus: Community-Oriented Computer Science"
subtitle: "Careers Are Not The (Only) Goal in CS"
date: 2015-03-11 10:00:00
---

I'm attending SXSWedu this week and have tried to go to as many computer science/coding related events and sessions as possible. My biggest take-away from these events is that the rhetoric with which the education and ed-tech communities talk about "coding" is entirely career-oriented. Some common phrases/sentiments:

- "Right now, there are thousands of unfilled jobs because there are not enough coders to fill them"
- "20 years from now, all professions will need coding skills"
- "We need to prepare our students for jobs that don't exist yet, all of which will require coding skills"
- etc.

Setting aside the difference between "coding" and computer science for a moment (a subject of another post, perhaps), this reminded me that the work we do at Blake in our CS classes takes a significantly different approach. Rather than promote our CS program in the language of career and job prospects, we instead talk about computer science as a set of literacy skills that allow us to solve problems in the communities in which we live. In fact, the essential question of our Intro to CS class is:

**How can we use computers to ask and answer questions about the world?**

This approach results in a markedly different approach to curriculum and instruction. In particular, the focus changes from development of a particular skill set (i.e., "coding"/programming skills) to developing an understanding of how computing systems work, how they affect our lives, and how we can leverage them to dismantle and rebuild the world around us. As a result, we talk not only about programming but also about algorithmic thinking, physical computing and computing hardware, iterative problem-solving, and creative human-oriented design. This culminates in a final project in which students apply their skills to identify and solve real-world problems. One such project is BearStatus.

## BearStatus

Fall 2013 was the first semester in which we offered Intro to CS at Blake. The final project used design-thinking strategies to have students identify a real, human problem in their school community and then design a software solution to that problem.

The result of that effort is [BearStatus](http://bearstatus.blakeschool.org/), a web application written in Python (on top of Google App Engine) that keeps tracks of the daily schedule at our school and also has an administrative backend that allows custom schedules to be added to the calendar (e.g., if we have a special event or a 50-below-zero late start (Minnesota!) that causes a change to the normal schedule).

<div class="tweet">
  <div class="tweet-embed">
<img alt="BearStatus Schedule Page" src="/img/2015-03-11-bearstatus_sched_page.png" >
  </div>
  <div class="tweet-caption">
    <div class="tweet-caption-content">
      The BearStatus schedule page
    </div>
  </div>
</div>

The 16 students in the class worked in teams to collectively build the application over the course of roughly six weeks. Some key aspects to the project that relate to our socially-oriented design:

- *Human-Centered* : We started by identifying the community problem, then designing the software solution in response (not the other way around)
- *Fully collaborative* : All students in the class worked on the same project toward the same goal
- *Open Source* : The entire project was, and is, hosted on a [public GitHub repository](https://github.com/shickey/BearStatus) under an MIT license in an effort to both participate in and give back to the open source culture of sharing
- *Community Engagement* : To give one example, there was a point in the project when the students had to work with our school's network manager to get the final version of the web app hosted on a real live URL under our blakeschool.org domain
- *Authentic Audience* : Our "final exam" was a presentation of the software to our Upper School Director, Assistant Director, Director of Technology, Assisstant Head of School, and a few department chairs and teachers
- *Ongoing Engagement* : After the class was over, a core group of students have continued to work on the project independently and push new versions of the application to the live URL regularly. They have also created [social media](https://twitter.com/Bear__Status) [accounts](https://www.facebook.com/bearstatus) for the application, as well as iOS and Android wrappers to allow student to use it our their mobile devices.

Our analytics show us that BearStatus gets between 500 and 1000 hits per school day (the community is really using it!). BearStatus has been so helpful to one user that they felt inspired to write a rhyme about it via our feedback form.

<div class="tweet">
  <div class="tweet-embed">
<img alt="BearStatus Rhymes" src="/img/2015-03-11-bearstatus_rhyme.png" >
  </div>
  <div class="tweet-caption">
    <div class="tweet-caption-content">
      The BearStatus schedule page
    </div>
  </div>
</div>

This methodology can also work beyond an intro class (even one that has specific content knowledge goals). In a follow-up post, I'll explain how we apply the same community-oriented/human-oriented approach to a higher-level class on object-oriented software design.

To me, computer science is really about solving human problems. As educators, we can shift the narrative to include a lot more than just future career opportunities and instead get students solving real problems right now.

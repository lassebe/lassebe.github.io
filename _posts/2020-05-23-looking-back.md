---
layout: post
title:  "Two year retrospective"
date:   2020-05-24 12:05:20 +0100
categories: work
---

I've been working at Pivotal for about two years now, in that time the company went public, and then got acquired by VMware.
I've worked on five client projects, some internal projects, and spent a few months on a rotation in R&D.
For my own sake I'd like to look back and see what I've learned from each of those experiences.

I think my biggest takeaway from all of this is that I have been extremely fortunate to have been placed in positions 
where I have known very little, and had the trust and support of the people around me to figure things out and learn as I go.
A recurring theme has been me being placed in positions of responsibility by circumstance.
I am very keen to make sure that others are given the same kinds of opportunity, and the same level of understanding 
and support.

### Project A - Mobile Shopping ###

* The product: Refactoring existing Android/iOS applications and get the _"new"_ backend services to production.
* The team: Quite large, something like 8 Pivotal engineers, 2 PMs, and 2 Designers, with the same or slightly fewer clients.
* Timeline: Joined in April 2018, rolled off at the end of the project in July.
* Tech stack: Android, Kotlin, minor work on Go backend services.

This was a really excellent first project, I got the chance to meet and work with tons of people. 
The fact that it was brownfield gave me a chance to work with a larger codebase than I'd been exposed to at university.
We were working on a product that was very much user-facing, and had good opportunities for impact.
In what was to be the first of several occasions, the more senior people in my sub-team ended up rolling off after a while,
leaving me in a position of responsibility that I had no business being in.

I particularly enjoyed the user research that we were able to do on this project. 
The results weren't always given the appropriate weight with stakeholders, which is why we ended up adding CAPTCHAs.
But when it worked, and we were able to test lots of different ideas that then fed back into what we ended up implementing; 
it felt really good. And I don't think there's anything more instructive than observing someone invalidate your assumptions
about how users will interpret your system in real-time.

Technically, I learned a decent amount of Android during the project. 
I also had my first taste of fiddling with Jenkins pipelines. 
Weirdly, in spite of the fact that I hadn't really used any CI systems before it all felt pretty intuitive.
Then again, I've since found that the worst part about CI is the actual set-up.

Another thing I took away was a healthy aversion to flaky tests.
We started out brushing over the intermittent failures of our Espresso tests, 
but eventually this led to our pipeline being completely unable to get a clean run, 
because at least one test would flake.
I still have a preference for tests that are as close to acting on the real system as possible,
but that is now slightly tempered.

In terms of failures, I think I mostly dropped the ball on getting the contractors who joined the team right at the tail
end of the project to buy into our approach.

### Project B - Internal Burndown Tool ###

* The product: An internal tool for reporting/forecasting project budget burndown, major competitor was spreadsheets.
* The team: 3 or 4 engineers, 1 designer, 1 PM. But the actual faces changed a lot over time.
* Timeline: Kicked off in July 2018, fizzled out around September.
* Tech stack: Spring, Kotlin, React with Redux.

My first run-in with both Spring and React, and really my first time writing anything non-trivial in JavaScript.
Would have been pretty intimidating, but the stakes felt fairly low.
Got a good lesson in internal politics and a better sense of how large the org was.

We spent a good chunk of time overhauling the React front-end; changing the setup to be compatible with
Create-React-App, which I still find to be an absolutely baffling name.
In hindsight I really did not grok React or Redux at all at this point.
Spring was also pretty intimidating, especially as we were fiddling with Security config and SAML integrations.
Most of it went over my head, but I eventually got to spend some time poking at it myself and started feeling a bit more comfortable.

We started out with some big ideas on how we were going to make the tool an opinionated product, instead of a hodge-podge
of features that different people had requested and had been bolted on. We quickly got stuck in the quagmire of whether or
not the tool was actually OK'd by Legal. Everyone was really friendly though, and it was nice to get a chance to interact with some folks in the US.


### Project C - Prove out Public Cloud for Payments ###

* The product: Building a proof-of-concept for some card processing systems in the public cloud.
* The team: 8 engineers, 2 PMs. Lots of client Subject Matter Experts.
* Timeline: Joined in September 2018, spun out in December.
* Tech stack: Spring, Java, Scala, AWS.

My first instance of a "not-traditional" Labs engagement. We had no client engineers pairing with us, so it was all Pivots. 
And no representation from designers, as the system was far removed from any humans, and quite fixed in user terms.
It was a really interesting technical challenge, all about scale and speed.
There were definitely some human challenges as well, but I think this was the exception to the rule that they are always bigger.

I think my favourite part of this project was getting some very focused lectures by some excellent cryptographers.
I learned a lot about Spring, and actually started understanding how to fit all the various annotations together.
I got my first taste of Concourse, and got to use AWS for the first time. 

I wish I'd spent more time on the performance testing aspects. We used testable.io and Gatling, and while I didn't love Scala, 
the problems about creating realistic scenarios, and feeding performance results back into the build was really interesting.

### Project C2 - Spinning off to spend ###

* The product: Building a proof-of-concept for some card processing systems in the public cloud.
* The team: 4 engineers, 1 PM, 1 client PO. 
* Timeline: Started in early December, finished at the end of the year.
* Tech stack: Spring, Kotlin, Scala, AWS, C/C++.

Because corporate budgets are... Interesting, we spun off a smaller side-project to see if we could use some of the 
same technologies in a different part of the client's business.
It was a really tightly scoped problem, a short time to work on it, and we had a decent amount of background from the main project.
It was really fun, and it felt like we had a great momentum. 
Then we hit the same brick wall that the main project did in terms of some of the IaaS limitations. Oh well.

I felt like I got my first chance to build some of the skills needed for operating software on this project.
I spent a lot of time in the terminal, SSHing onto containers, and debugging. 
Set up a pipeline for the first time.

I even got to write some C! Not something I'd like to do every day, but when you're trying to replicate some cryptography
issues on a HSM, you sometimes don't have a choice.
This project was the first time I got to really dig in and wrestle with some really gnarly technical stuff, 
and the main outcome was "this won't work because X, Y, and Z". 
It's not as fulfilling as "solving" problems, but I think being able to do this efficiently, and not letting it get you down
is a really important skill.

This was the second time when the anchor of my sub-team had to roll off; leaving me in a position of responsibility by proxy.
This time it was a lot more comfortable though. 


### Beach time ###
Watched a bunch of Spring tutorials, and took the Cloud Foundry Developer certification.

### Rotation - Redistributing Redis Reliably ###

* The product: A packaged distribution of Redis for PCF.
* The team: 4-5 engineers, 1 PM. 
* Timeline: Started in February 2019, rotated back in June.
* Tech stack: Go, Ruby, BOSH.

Probably the team I've been in that has had the most psychological safety. 
I learned a ton, particularly about managing a codebase that has several years of legacy, where the original authors
have left the team or even the company. While I got a bit of that on *Project A*, this was more about maintaining rather 
than rewriting. 

I also got more experience doing operations type work. Given that part of the products user base are platform operators,
we spend a fair amount of time using their tools, and building for them.

Wrote my first bits of professional Ruby. Mostly as part of refactoring a large test suite.
In hindsight I think we removed some patterns that were actually more idiomatic Ruby, but then again, none of the team were
primarily Ruby developers.

I also got a sense of working with Go at a medium scale. I'm not a huge fan of modules, by which I mean I still don't understand them.

During this rotation I pushed my first fairly severe bug to production. 
In short, I'd messed up some configuration (it's code, don't let anyone tell you otherwise) which meant that
customers were unable to upgrade.
I realised quite quickly what I'd done wrong, and the team was extremely supportive, and we ran a really good post mortem afterwards.

There's a lot to be said about the difference of working in an R&D team versus consulting, but that'd be a whole post on its own.
I did find a lot I enjoyed about it though.

### Project D - Actual Metal Containers ###

* The product: A tool for allocation of containers on ships.
* The team: 2-3 engineers, 1 designer, 1 PM. Plus client equivalents.
* Timeline: Started in June 2019, finished in August.
* Tech stack: Spring, Kotlin, Angular, TypeScript.

This was an interesting project. 
Lots of interpersonal conflicts, cultural differences, and a really byzantine domain.

I learned a fair amount though. I got to set up a Jenkins pipeline "from scratch" and maintain it.
I learned more about setting up developer environments and using Docker.
Got more comfortable with Spring, to the point where it started feeling nice and familiar.
Angular was an interesting beast, and it felt like it fit quite well into a similar mental model as Spring.
But I imagine that they are actually subtly and importantly different.
None of us were Angular experts however.

I also learned a bit more about REST, and finally got to spend some time writing SQL.
I still need to work on my database knowledge in general, but I'm glad it didn't go terribly wrong.

In terms of failures; I should have done more to mediate conflicts and taken more stands.
I'm a pretty conflict averse person in general, but I think I could have improved the situation on a few occasions by actually getting involved.



### Project E - Various internal work ###

* The product: Various.
* The team: Very varied.
* Timeline: Started in August 2019, finished in October.
* Tech stack: Spring, Kotlin, React, Typescript, Go.

Spent some time trying to help move a really neat internal static analysis tool forward, 
not so much by writing code, but by helping with user interviews and helping roadmap where it could go next.
This was a slightly weird change of pace, but I appreciated getting to talk to lots of different people across the company.
Another interesting lesson in internal politics, and how everyone can agree on something being good, but refusing to work together to move things forward.

I also helped building a pre-sales demo application over the course of a week and a half.
That was super fun, and a nice refresher on React.
Around the same time I also started on a side-project for the first time, and summarily abandoned it.


### Project F - Electric Vehicle Charging, for you! ###

* The product: Customer onboarding journey, internal and external facing.
* The team: 2-4 engineers, 1 designer, 1 PM. Plus client equivalents.
* Timeline: Joined in October 2019, finished in January 2020.
* Tech stack: PHP, Vue, GraphQL.

We made a lot of jokes about PHP before, during, and after this project.
I think I was pleasantly surprised, but it's definitely not what I'd reach for if I had my own choice.
Vue was fairly comfortable to work with, I'm not completely sold.
Another thing I'm not completely sold on is GraphQL, my main bug bear is the way it deals with errors.
HTTP status codes feel like a pretty nice abstraction and a well-established one at that
Making everything a 200 OK, and stuffing the errors in the response body just doesn't sit right with me.

My favourite part about this project was probably the amazing account team. 
They were extremely involved, and helped out in so many different ways. 
It helps that they're just great people. The whole team was really.

This was the third time the most senior engineer rolled off leaving me in charge,
but this time that was intentional and planned. 



### Project E - Ongoing ###

Not going to talk to much about this here and now.

Suffice to say, it's been a learning experience. Mostly about limitations.





---
title: "Getting in love with the unfamiliar codebase"
date: 2022-10-09
tags: [coding, codebase]
reviewers: [Mukesh, Anon]
---

# Getting in love with the unfamiliar codebase
### Guide to help developers/ code contributors to get familiar with unfamiliar code


![](./images/getting-in-love-with-the-unfamiliar-codebase.avif)

There are many situations a developer or a code contributor comes across a new code base, be it a rise in attrition rate (post-pandemic) or a modern multi-tech stack combination requiring individuals to work on multiple code bases from time to time. This triggers a lack of confidence in taking tasks related to the new codebase (alienation 👽 effect). 

Here I have tried to list some guided steps one can take to get familiar with any new codebase they come across.

### Understanding the background business/domain.
Leave the code aside, and understand the company's or product's core. 
- Having a clear picture of the problem, that a codebase is solving will help in a significant way in creating the mind map around the code structure and flow.
- No need of getting into minute details, just a big-picture overview would be fine.

### Take a tour - as an end user.
> End-users, know the product better than any other stakeholder.  

- Using the product, be it a website, a mobile app, or even an API solution gives you a clear knowledge of the product.
- Empowers you to break down the product into logical modules.
- Observe flow describers like -  
 - Breadcrumbs
 - Menu(s) Items
 - Heading/ Page titles
 - Navigation bars

This will help you to create an imaginary flow in your mind, hence the tour.
 
### Reading the documentation available.
Documentation is primarily divided into high-level ( i.e Architecture and technical documentation) and low-level documentation ( i.e folder structure, naming conventions, and coding standards being used by the team). 

Also, this will help you to clear a lot of doubts that may arise when you actually explore the code or have a code walkthrough.

- Draw a visual representation of the system with your understanding, and get it validated by someone who is already familiar with the code.
- Helps you understand the business use case and architecture.
- Make you aware of the tech stack used.

### Setting up the project on local
Setting up a project will naturally force you to read the documentation.

- Make sure, the APIs are working fine. 
- In turn, you will get to know about external dependencies.
- Will help you to use IDE's features to explore the code faster.
- Setting up, and using debugging to understand the flow will be really helpful.

### Going through unit tests
A properly written unit test/ automation script can elaborate on how the code works, and what to expect from modules/functions.

Not only this, but also one can start diving into actual code through the unit tests, to understand how the particular part of code works and produce the expected results for the test case(s).

- Next step or the other way around could be to find a bug or the case that is not covered in test suits already written.

### Looking at the Pull requests
PR(s) give you an idea of the current work being done, and what to expect in your upcoming tasks.

- Take note of the feature requests and changes made as part of the development.
- Gives you an idea of code standards being used, eg: using **CAPITAL** case for constants. This will enable you to write better and expected code in the future.
- Try to re-write the code after reading someone's PR. You'll see yourself more confident when actually working on your tasks. 


### Spending time with code
>**Love, at first sight!** doesn't work with **code**.

One needs to know the code and spend serious time to be in a relationship with the codebase.
- Little extra time to study the code will help you build a mental map of how things are arranged and how to proceed to the solution of any given problem.
- Document, and make notes of your understanding over time.
- Focusing on small things at a time - Pick smaller bugs/tasks to think of solutions and try to solve them on your own.

### Peer validation
Have validation of your understanding from existing team members.
- Convince for reverse KT sessions in addition to KT sessions.
- Indulge in pair programming if the other person agrees to it.



It was all!
I hope this will this would add some value to your journey of getting familiar with the new code base.

Happy coding! 🧑‍💻 
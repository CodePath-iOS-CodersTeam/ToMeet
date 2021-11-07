# ToMeet

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An app that allows users to connect and network with other professionals based on mutual interests.

### App Evaluation

- **Category:** Communicating, Social Networking
- **Mobile:** Mobile allows users to connect with others with mutual interests. This app allows users to filter and search.
- **Story:** Allows users to connect with professionals working in either similar or different industry and have casual conversations with them through text. It's best for professionals who want to learn more about a particular field or company outside of their network. 
- **Market:** Anyone that wants to connect or network with other professionals.
- **Habit:** Users are constantly looking to network and communicate with others professionals for information from the same and/or different industry. 
- **Scope:** V1 would connect users with mutual interests. V2 users are able to schedule meetings. V3 optimize storage space

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Users can create an account
* Users can log in and log out
* Users can message
* Users can filter
* Users can search

**Optional Nice-to-have Stories**

* Users can edit the display appearance (light/dark screen)

### 2. Screen Archetypes

* Login Screen
   * Users can login 

* Create Account Screen
   * Users can create account

* Message Box Screen (Home Screen)
   * Users can see most recent contacts you have messaged

* Messaging Screen
   * Users can message each other

* Message Request Screen
   * Users can see message requests

* Search Screen
   * Users can search through key words

* Filter Screen
   * Users can filter

* Result Screen
   * Users can view the results from the search 
   
* Profile Screen
   * Users can view others profile

* Account Screen
   * Users can view profile
   * Users can go to settings
   * Users can log out

* Account Edit Screen
   * Users can edit account information 

* Setting Screen
   * Users can view settings

* Setting Edit Screen?
   * Users can edit settings
 
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Messages
* Search
* Account


**Flow Navigation** (Screen to Screen)

* Log-In
   * Log-In -> Message Box
   * Log-In -> Create Account

* Create Account
   * Create Account -> Log-In
   * Create Account -> Message Box

* Message Box
   * Message Box -> Messaging Screen
   * Message Box -> Message Request
   * Message Box -> Search 
   * Message Box -> Account 
 
 * Messaging Screen
   * Messaging Screen -> Message Box
   * Messaging Screen -> Message Request
   * Messaging Screen -> Profile 

* Message Request Screen
   * Message Request -> Message Box
   * Message Request -> Messaging Screen
   * Message Request -> Search 
   * Message Request -> Account

* Search Screen
   * Search Screen -> Message Box
   * Search Screen -> Filter 
   * Search Screen -> Result
   * Search Screen -> Account

* Filter Screen
   * Filter -> Search
   * Filter -> Result 

* Result Screen
   * Result -> Message Box
   * Result -> Search
   * Result -> Filter
   * Result -> Profile
   * Result -> Account

* Profile Screen 
   * Profile -> Messaging Screen
   * Profile -> Result
   
* Account Screen
   * Account -> Message Box
   * Account -> Search
   * Account -> Account Edit
   * Account -> Setting 

* Account Edit Screen
   * Account Edit -> Account

* Setting Screen
   * Setting -> Account
   * Setting -> Setting Edit

* Setting Edit Screen
   * Setting Edit -> Setting


## Wireframes
<img src="https://i.imgur.com/bY93s89.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

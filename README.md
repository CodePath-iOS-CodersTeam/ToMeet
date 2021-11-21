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

* [x] Users can create an account
* [x] Users can log in and log out
* [ ] Users can message
* [ ] Users can search
* [ ] Users can filter
* [ ] Users can edit information

**Optional Nice-to-have Stories**

* Users can edit the display appearance (light/dark screen)

### 2. Screen Archetypes

* Login Screen
   * Users can login 

* Create Account Screen
   * Users can create account

* Message Box Screen (Home Screen)
   * Users can see most recent contacts you have messaged
   * Users can delete conversations

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

* Setting Edit Screen
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

* Message Request Screen
   * Message Request -> Message Box
   * Message Request -> Messaging Screen
   * Message Request -> Search 
   * Message Request -> Profile
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
   * Profile -> Message Request
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
<img src="https://user-images.githubusercontent.com/58193323/142771190-258f6808-d904-4dcf-ba5b-432950cf302e.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

### Models

* Users

| Property | Type | Description |
| -------- | -------- | -------- |
| userID | String | unique ID for the user account |
| email | String | user's email |
| username | String | user's username |
| password | String | user's password |
| firstName | String | user's first name |
| lastName | String | user's last name |
| profilePic | File | image user use as profile picture |
| company | String | company user works at |
| position | Stirng | position user works as |
| education | String | institution user is attending or attended |
| location | String | city user resides or works in |

* Conversation

| Property | Type | Description |
| -------- | -------- | -------- |
| convoID | String | unique ID for the conversation |
| personI | Pointer to User | userID of current user |
| personU | Pointer to User | userID of conversation partner |
| status | Boolean | if personI and personU is connected |
| messages | Array | list of messages |

* Messages

| Property | Type | Description |
| -------- | -------- | -------- |
| messageID | String | unique ID message |
| sender | Pointer to User | sender's ID |
| reciever | Pointer to User | reciever's ID |
| message | String | message body |
| timestamp | DateTime | date and time of when message was sent |

### Networking

* Login Screen
   * (Read/GET) Fetch information from Parse

* Create Account Screen
   * (Creat/POST) Create a new user object

* Message Box Screen
   * (Read/GET) Query recent conversations
   * (Delete) Delete existing conversation

* Messaging Screen
   * (Read/GET) Query recent messages
   * (Create/POST) Create new message
   * (Update/PUT) Update user conversation 

* Message Request Screen
   * (Read/GET) Query recent message requests
   * (Update/PUT) Update user conversation status
   * (Delete) Delete message request

* Result Screen
   * (Read/GET) Query usrer based on search
   
* Profile Screen
   * (Read/GET) Query user object

* Account Screen
   * (Read/GET) Query logged in user object

* Account Edit Screen
   * (Update/PUT) Update user profile 

* Setting Screen
   * (Read/GET) Query logged in user settings

* Setting Edit Screen
   * (Update/PUT) Update settings

## Milestone 1

### User Stories

* [x] Configure Parse Server
* [x] Create an Account
* [x] Log In & Log Out

### Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/6mJ2Ldssi1.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Milestone 2

### User Stories

* [ ] Message Box
* [ ] Messaging
* [ ] Message Request

### Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Milestone 3

### User Stories

* [ ] Profile
* [ ] Accept, Reject, & Request Feature
* [ ] Search Feature

### Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Milestone 4

### User Stories

* [ ] Filter Feature
* [ ] Account Edit
* [ ] Seeting Edit

### Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

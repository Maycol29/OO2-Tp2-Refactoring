Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'answers',
		'username',
		'password',
		'following',
		'interestTopics',
		'userVotes',
		'userQuestions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new
		username: aUsername password: aPassword questionRetriever: aQuestionRetriever
		yourself
]

{ #category : #accessing }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #accessing }
User >> addFollowing: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> addInterestTopic: aTopic [
	interestTopics add: aTopic 

]

{ #category : #accessing }
User >> addUserQuestion: aQuestion [
	userQuestions add: aQuestion
]

{ #category : #accessing }
User >> addVote: aVote [
	userVotes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #accessing }
User >> followingQuestions [
^following flatCollect:[:user | user userQuestions].

]

{ #category : #initialize }
User >> initialize [

	userQuestions := OrderedCollection new.  
	answers := OrderedCollection new. 
	interestTopics := OrderedCollection new. 
	following := OrderedCollection new. 
	userVotes := OrderedCollection new.
]

{ #category : #accessing }
User >> interestTopics [
	^ interestTopics
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieve: self.
]

{ #category : #accessing }
User >> questionsOfInterestTopics [
^interestTopics flatCollect:[:topic |topic questions].


]

{ #category : #accessing }
User >> userQuestions [
	^ userQuestions
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #'instance-creation' }
User >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	username := aUsername.
	password := aPassword.
	questionRetriever := aQuestionRetriever
]

{ #category : #accessing }
User >> votes [
	^ userVotes
]

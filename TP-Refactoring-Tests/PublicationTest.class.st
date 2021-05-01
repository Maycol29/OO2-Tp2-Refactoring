Class {
	#name : #PublicationTest,
	#superclass : #TestCase,
	#instVars : [
		'question',
		'answer'
	],
	#category : #'TP-Refactoring-Tests'
}

{ #category : #running }
PublicationTest >> setUp [
	question := Question  newWithTitle: 'Question  title' description: 'Question description' user: (User new).
	question addVote: (Vote user: (User new) likesPublication: question).	
	question addVote: (Vote user: (User new) dislikesPublication: question).	
	answer := Answer new:'An answer'  user:(User new)  question:(Question new).
	answer addVote: (Vote user: (User new) likesPublication: answer).	
	answer addVote: (Vote user: (User new) dislikesPublication: answer).	

]

{ #category : #testing }
PublicationTest >> testNegativeVotes [
	self assert: (question negativeVotes size) equals: 1.
	self assert: (question votes size) equals: 2.
	self assert: (answer negativeVotes size) equals: 1.
	self assert: (answer votes size) equals: 2.
]

{ #category : #testing }
PublicationTest >> testPositiveVotes [
	self assert: (question positiveVotes size) equals: 1.
	self assert: (question votes size) equals: 2.
	self assert: (answer positiveVotes size) equals: 1.
	self assert: (answer votes size) equals: 2.
]

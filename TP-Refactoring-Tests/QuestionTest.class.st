Class {
	#name : #QuestionTest,
	#superclass : #TestCase,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Tests'
}

{ #category : #setup }
QuestionTest >> setUp [
	question := Question  newWithTitle: 'Question  title' description: 'Question description' user: (User new).
	question addVote: (Vote user: (User new) likesPublication: question).	
	question addVote: (Vote user: (User new) dislikesPublication: question).	

]

{ #category : #testing }
QuestionTest >> testNegativeVotes [		
	self assert: (question negativeVotes size) equals: 1.
	self assert: (question votes size) equals: 2.
]

{ #category : #testing }
QuestionTest >> testPositiveVotes [
	self assert: (question positiveVotes size) equals: 1.
	self assert: (question votes size) equals: 2.
	
]

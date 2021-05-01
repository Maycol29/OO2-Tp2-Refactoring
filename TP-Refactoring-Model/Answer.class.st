Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	|instance| 
	instance:=self newDescription: anAnswer user: aUser.
	instance	question: aQuestion.
	^instance
	
]

{ #category : #initialize }
Answer >> initialize [
	super initialize .
]

{ #category : #accessing }
Answer >> isTopAnswer [
	.
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]

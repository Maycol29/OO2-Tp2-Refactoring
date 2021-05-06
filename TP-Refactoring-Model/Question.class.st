Class {
	#name : #Question,
	#superclass : #Publication,
	#instVars : [
		'title',
		'answers',
		'topicsQuestion'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
|instance|
	instance:=self newDescription: aDescription user: aUser.
	instance title: title; 
	addTopic: aTopic.
	^instance.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topicsQuestion add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'initalize-release' }
Question >> initialize [
	super initialize .
	answers := OrderedCollection new.
	topicsQuestion := OrderedCollection new.
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> title: aTitle [
	title := aTitle 
]

{ #category : #accessing }
Question >> topicsQuestion [
	^topicsQuestion 
]

Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Publication class >> newDescription: aDescription user: aUser [.
^self new Description: aDescription user: aUser.
]

{ #category : #accessing }
Publication >> Description: aDescription user: aUser [.
description :=aDescription.
user:=aUser.
]

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Publication >> description [
	^ description
]

{ #category : #initialization }
Publication >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Publication >> negativeVotes [
	^votes reject:[:vote | vote isLike].

]

{ #category : #accessing }
Publication >> positiveVotes [
	^votes select:[:vote | vote isLike].

]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]

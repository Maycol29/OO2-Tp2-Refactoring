Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addUserQuestion: aQuestion.
	questions add: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> todayQuestions [
	^questions select: [ :q | q timestamp asDate = Date today]
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]

Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverSocial >> retrieveQuestions: aUser [
	| followingCol temp |
	followingCol := OrderedCollection new.
	aUser following
		do: [ :follow | followingCol addAll: follow questions ].
	temp := followingCol
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
	^ self without: aUser questions: (self lastQuestions: temp)
]

Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverSocial >> retrieveQuestions: aUser [
	| followingCol temp |
	followingCol := OrderedCollection new.
	aUser following
		do: [ :follow | followingCol addAll: follow questions ].
	
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: followingCol))
]

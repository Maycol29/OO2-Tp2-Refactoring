Class {
	#name : #QuestionRetrieverInterestTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
QuestionRetrieverInterestTopics >> retrieveQuestions: aUser [
	| topicsCol temp |
	topicsCol := OrderedCollection new.
	aUser interestTopics
		do: [ :topic | topicsCol addAll: topic questions ].
	temp := topicsCol
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
	
	^self without: aUser questions: (self lastQuestions: temp).
]

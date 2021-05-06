Class {
	#name : #QuestionRetrieverInterestTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverInterestTopics >> retrieveQuestions: aUser [
	| topicsCol |
	topicsCol := OrderedCollection new.
	aUser interestTopics
		do: [ :topic | topicsCol addAll: topic questions ].
	
	
	^self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: topicsCol)).
]

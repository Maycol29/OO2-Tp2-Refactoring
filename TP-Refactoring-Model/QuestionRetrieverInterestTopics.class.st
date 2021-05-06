Class {
	#name : #QuestionRetrieverInterestTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverInterestTopics >> retrieveQuestions: aUser [
	| topicsCol |
	aUser questionOfInterestTopics.
	
	^self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: topicsCol)).
]

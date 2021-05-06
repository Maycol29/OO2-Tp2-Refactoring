Class {
	#name : #QuestionRetrieverInterestTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverInterestTopics >> retrieveQuestions: aUser [
	^self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: (aUser questionOfInterestTopics))).
]

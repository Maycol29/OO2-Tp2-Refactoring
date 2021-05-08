Class {
	#name : #QuestionRetrieverInterestTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverInterestTopics >> retrieveQuestions: aUser [
	^aUser questionsOfInterestTopics
]

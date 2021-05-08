Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverSocial >> retrieveQuestions: aUser [
	^ aUser followingQuestions
]

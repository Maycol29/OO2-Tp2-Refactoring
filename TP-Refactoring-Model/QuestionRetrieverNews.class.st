Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverNews >> retrieveQuestions: aUser [
	^ cuoora todayQuestions
]

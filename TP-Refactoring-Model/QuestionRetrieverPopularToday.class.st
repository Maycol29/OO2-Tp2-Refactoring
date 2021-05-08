Class {
	#name : #QuestionRetrieverPopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverPopularToday >> retrieveQuestions: aUser [
	^ cuoora popularQuestions
]

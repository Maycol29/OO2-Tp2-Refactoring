Class {
	#name : #QuestionRetrieverPopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverPopularToday >> retrieveQuestions: aUser [
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: cuoora popularQuestion))
]

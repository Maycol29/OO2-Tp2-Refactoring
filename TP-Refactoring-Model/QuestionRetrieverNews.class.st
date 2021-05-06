Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverNews >> retrieveQuestions: aUser [
	| newsCol temp |
	cuoora todayQuestions .
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: newsCol))
]

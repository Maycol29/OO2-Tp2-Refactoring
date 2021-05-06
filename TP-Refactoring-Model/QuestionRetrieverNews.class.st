Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverNews >> retrieveQuestions: aUser [
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: cuoora todayQuestions))
]

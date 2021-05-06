Class {
	#name : #QuestionRetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverSocial >> retrieveQuestions: aUser [
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: aUser followingQuestions))
]

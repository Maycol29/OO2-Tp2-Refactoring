Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverNews >> retrieveQuestions: aUser [
	| newsCol  |
	newsCol := OrderedCollection new.
	cuoora questions
		do: [ :q | 
			q timestamp asDate = Date today
				ifTrue: [ newsCol add: q ] ].
			
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: newsCol))
]

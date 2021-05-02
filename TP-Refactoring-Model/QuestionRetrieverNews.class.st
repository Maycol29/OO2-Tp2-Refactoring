Class {
	#name : #QuestionRetrieverNews,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverNews >> retrieveQuestions: aUser [
	| newsCol temp |
	newsCol := OrderedCollection new.
	cuoora questions
		do: [ :q | 
			q timestamp asDate = Date today
				ifTrue: [ newsCol add: q ] ].
	temp := newsCol
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
	^ self without: aUser questions: (self lastQuestions: temp)
]

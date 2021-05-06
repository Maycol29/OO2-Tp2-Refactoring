Class {
	#name : #QuestionRetrieverPopularToday,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #accessing }
QuestionRetrieverPopularToday >> retrieveQuestions: aUser [
	| popularTCol averageVotes temp |
	popularTCol := OrderedCollection new.
	cuoora questions
		do: [ :q | 
			q timestamp asDate = Date today
				ifTrue: [ popularTCol add: q ] ].
	averageVotes := (cuoora questions sum: [ :q | q positiveVotes size ])
		/ popularTCol size.
	temp := (popularTCol
		select: [ :q | q positiveVotes size >= averageVotes ]).
		
	^ self without: aUser questions: (self lastQuestions: (self orderByPositiveVotes: temp))
]

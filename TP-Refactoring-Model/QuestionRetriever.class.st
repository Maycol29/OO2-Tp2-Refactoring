Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #accesing }
QuestionRetriever >> lastQuestions: aQuestionList [
	^ aQuestionList last: (100 min: aQuestionList size)
]

{ #category : #accesing }
QuestionRetriever >> orderByPositiveVotes: aQuestionList [
	^ aQuestionList
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility 
]

{ #category : #accesing }
QuestionRetriever >> without: aUser questions: aQuestionList [
	^ aQuestionList reject: [ :q | q user = aUser ]
]

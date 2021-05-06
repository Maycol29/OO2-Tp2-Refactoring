Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	option := #social
]

{ #category : #accesing }
QuestionRetriever >> lastQuestions: aQuestionList [
	^ aQuestionList last: (100 min: aQuestionList size)
]

{ #category : #accesing }
QuestionRetriever >> option: anOption [
	option := anOption
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

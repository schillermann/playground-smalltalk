"https://www.gnu.org/software/smalltalk/manual/html_node/Syntax.html"
"https://www.gnu.org/software/smalltalk/manual/html_node/Creating-classes.html"
"https://jcsites.juniata.edu/faculty/rhodes/lt/smlltalktutor.htm"

"In Smalltalk different syntax can be used to create a class"

"Syntax A"
Object subclass: AccountA [
  | balance |
  <comment:
    'I represent a place to deposit and withdraw money'>

  AccountA class[
    new[
      "super stands for AccountA"
      ^super new init
    ]
  ]

  init[
    balance := 0
  ]

  spend: amount [
     <category: 'moving money'>
     balance := balance - amount
  ]
 deposit: amount [
     <category: 'moving money'>
     balance := balance + amount
  ]

  balance[
    ^balance
  ]
  printOn: stream [
    super printOn: stream.
    stream nextPutAll: ' with balance: '.
    balance printOn: stream
  ]
]

|a| a := AccountA new.
a deposit: 20.
a printNl.


"Syntax B"
Object subclass: #AccountB
   instanceVariableNames: 'balance'
   classVariableNames: ''
   poolDictionaries: ''
   category: nil !

AccountB comment:
   'I represent a place to deposit and withdraw money' !

!AccountB class methodsFor: 'instance creation'!
new
  | r |
  "super stands for AccountB"
  r := super new.
  r init.
  ^r
! !

!AccountB methodsFor: 'instance initialization'!
init
  balance := 0
! !

!AccountB methodsFor: 'moving money'!
spend: amount
  balance := balance - amount
!
deposit: amount
  balance := balance + amount
! !

!AccountB methodsFor: 'printing'!
  printOn: stream
    super printOn: stream.
    stream nextPutAll: ' with balance: '.
    balance printOn: stream
! !

|b| b := AccountB new.
b deposit: 30.
b printNl.

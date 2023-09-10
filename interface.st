Object subclass: Interface [
  doSomething[
    ^self subclassResponsibility
  ]
]

Interface subclass: MyClass [

]

|a| a := MyClass new.
a doSomething

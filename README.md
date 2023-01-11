#  Factory Method

`Factory Method` 
-> A design pattern which solves the problem of creating product objects without specifying their concrete classes
-> Creational Design Pattern.

**Structure**
- `Product` - defines an interface of the objects created by the protocol;
- `ConcreteProduct` - implements `Product` interface;
- `Creator` - defines a factory method that returns an instance of `Product`. It can also store a `default` implementation of the protocol; It can invoke a factory method for the creation of the instance of `Product`;
- `ConcreteCreator` - redefines a factory method so that it will be able to create and return an instance of the `ConcreteProduct`. 

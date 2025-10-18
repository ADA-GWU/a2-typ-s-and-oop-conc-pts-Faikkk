In C#, only the methods annotated with `virtual` keyword and overriden by a method in the child class with `override` keyword are dynamically binded.<br>
Other methods are statically binded. Thus, we can conclude that static binding is the default setting, unless we explicitly specify that we want to enable dynamic binding.<br>
We can compare the behaviour to another OOP language, Java, where the reverse pattern is observed - dynamic binding is the default for all methods, except the ones <br>
that are private, final, or static.

I have created class Employee and two child classes inheriting from it: Designer and Engineer.<br>
You can find the demonstration of new, virtual, override keywords in the code with further comments.

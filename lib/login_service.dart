// Dependency injection is writing code that supplies
// your objects with other objects that they depend on.
//
// A simple way to how inject dependency
//
// The LoginService now depends on the Api.
// Dependency injection is the act of supplied LoginService with the Api.
//
// Dependency injection is just a nice way to supplie
// your objects with other objects that depends on.
class LoginService {
  Api api;

  // Inject the api through the constructor
  LoginService(this.api);
}

class Api {}

import 'package:dependency_injection/app_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

// Where we register our classes
// with a service locator.
//
// To make this works, ints necessary
// add this method on main before the runApp.
// This way, the services and classes
// are registered before the app runs
// so it's always avaliable.
//
//
// Using get_it, class types can be
// registered in two ways:
//
// 1 - Factory:
// When you request an
// instance of the type from the
// service provider you’ll get
// a new instance everytime.
// Good for registering ViewModels
// that need to run the same logic
// on start or that has to be new
// when the view is opened.
//
// 2 - Singleton:
// Singletons can be registered in two ways.
// First way, is provide an implementation upon registration
// as normal singleton, but in this way, on the app startup
// will be constructing all of your services
// and then registering that with a service locator
// which can slow donw you startup time.
// Second way, is provide a lamda that will be invoked
// the first time your instance is requested (LazySingleton).
// The Locator keeps a single instance of your registered type
// and will always return you that instance.
//
//
// PROS to use get_it
//
// 1 - Injection avaliable globally:
// Can request type anywhere using the global locator.
// This promotes cleaner code for setting
// your dependency injection, because
// if you do property injection,
// you don't need always update
// your code for the dependency injection
// to match the news properties
// that you have added, which is a problem,
// that InheritedWidget has as well
// as the dependency injection from
// provider which is folllowing this one.
//
// 2 - Instance tracking is automatically:
// Instance tracking is automatically
// taken care of by registering types
//  as Factories or Singleton
//
// 3 - Can register against interfaces:
// Can register types against interfaces
// and abstract your architecture
// from the implementation details
//
// 4 - Compact setup code
// Compact setup code with minimal boiler plate.
// Your setup locator function, literally reads
// like a document, with just lines below each other
// where you can clearly see what's being registered
// and unlike other injection methods,
// it has no clear indication of
// where the types are beign used throughout
// the architecture, it doesn't actually matter.
//
//
// CONS to use get_it
//
// 1 - Disposing is not a top priority in the framework:
// So, you have to do your own disposing through
// the models.
// If you look for something that do this,
// provider maybe help, because
// you can call the dispose method
// on all the change notifier models
// that i inject through get_it.
//
// 2 - Loose coding guidelines:
// The coding guidelines around
// the gated service locator
// is very loose and this can lead
// to badly written software
// if you don't understand the concept
// of architecting a software or event how to do it.
//
// 3 - Global object usage:
// This is the start of multi-directional
// dataflow, which is the opposite of what flutter
// and all declarative UI frameworks promote.
// The fact that your information,
// now travel upstream and
// and there is no garantie that your UI
// is a function of data path from the
// top down.
// But for resolve this problems,
// all you need is some guidelines
// and some strict coding rules
// and you should be fine
// using get_it
// as dependencuy injection framework.
//
// If you will use get_it with shared_preferences
// its necessary set the setupLocator
// as Future
// and the shared_preferences variable
// with await.
// On main file,
// the main func set async
// and the setupLocator with await
//
void setupLocator() {
  // Anonymous function, that returns
  // your service type.
  //
  // get_it will do is that
  // when this type is first requested
  // it will then create the instance
  // and keep that instance alive
  // for the rest of your app's lifetime.
  locator.registerFactory(() => AppInfo());
}

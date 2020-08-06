import 'package:dependency_injection/app_info.dart';
import 'package:dependency_injection/home_view.dart';
import 'package:dependency_injection/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider is basically the InheritedWidget
    // but, on all the steroids in the wolrd,
    // its functions based on the same rulas
    // as the InheritedWidget,
    // which means, that it can only provide
    // the providing value to everything
    // in this subtree.
    // For that reason, its necessary
    // wrap our entire Material app
    // with the provider.
    //
    // The way we supply the values,
    // that we want to provider,
    // is through the Create property.
    // This prop, expects a function,
    // that takes in the BuildContext
    // and returns the value that you want
    // to provide to the rest of the app.
    // For us that's just a instance
    // of AppInfo right now.
    //
    //
    // PROS to use Provider
    //
    // 1 - Great for StateManagement:
    // Provieer is a great for stateManagement
    // for small, large and massive apps,
    // whatever kind of app.
    //
    // 2 - Forces one directional data flow
    //
    // 3 - SpecialtyProviders Rocks:
    // SpecialtyProviders removes
    // a lot of boilerplate code
    // that you would have to write yourself.
    // Specialty proviers are things
    // like the stream provider,
    // the listenable provider,
    // all the providers,
    // the change notify provider.
    // With this things you can architect
    // your entire app in a much
    // simpler manager without having to
    // think of setup, cleanup or
    // anything like that.
    //
    // 4 - Using the Consumers for your providers is neat:
    // The provider package, not only gives
    // you a way to inject all data where you want it,
    // but you can also build UI based on
    //  it through the Consumers that ir provides.
    // It keep things neat, clean and everything
    // looks like flutter code.
    //
    // 5 - Supplies a way to dispose:
    //A benefits that it has over get_it
    // is that provides a way to dispose
    //  all of the provided objects.
    //
    //
    // CONS to use Provider
    //
    // 1 - Injecting into objects without context sucks:
    // The same that InheritedWidget has,
    // and that is to inject classes into objects
    // that doesn't have the BuildContext,
    // requires a lot of boilerplate code
    // and it makes your dependency injection
    // setup code, dependent on where you are using
    // your actual dependencies it requires a lot
    // of providers stringing and again, you required,
    // knowledge of where you will be using your
    // provide values and it's not a automatic
    // injection like with the get_it package
    // and the locator.
    return Provider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'Dependency Injection',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: HomeView(),
        ),
      ),
    );
  }
}

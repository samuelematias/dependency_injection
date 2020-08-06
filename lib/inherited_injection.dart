import 'package:dependency_injection/app_info.dart';
import 'package:flutter/widgets.dart';

// InheritedWidget effectively allows you to provider
// access to all its properties to every widget in
// its subtree, this is done through the build context.
//
// This is a very common pattern it used on flutter
// to provide theme, media queries and everything else
// that the bases provides you.
//
// InheritedWidget can only provide theses values
// to widgets that's within its subtree
// and for this reason, its necessary
// wrap our entire Material app
// with the InheritedInjection widget.
//
//
// PROS to use InheritedWidget
// 1 - Flutter uses it Extensively:
// This is how everything in Flutter is built.
// There's a lot of examples foward and is highly optimized.
// 2 - One directional data flow:
// This is importante for the clarity of UI
//
//
// CONS to use InheritedWidget
// 1 - Boilerplate around instance tracking:
// Meaning when you want a new instance everytime
// you request the type you have to set that up.
// The same with if you want a singleton.
// 2 - Injecting into objects where the context is
// not available is almost impossible:
//  You have to clutter up the InheritedWidget
// itself with all the setup and manually inject
// objects where the context is not available.
// 3 - Very verbose:
// Lots of code for no added value.
class InheritedInjection extends InheritedWidget {
  final AppInfo _appInfo = AppInfo();
  final Widget child;

  InheritedInjection({Key key, this.child}) : super(key: key, child: child);

  AppInfo get appInfo => _appInfo;

  static InheritedInjection of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedInjection>();
  }

  @override
  bool updateShouldNotify(InheritedInjection oldWidget) {
    return true;
  }
}

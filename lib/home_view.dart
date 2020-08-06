import 'package:dependency_injection/app_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// With Dependency injection using Provider
//
class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have access to it anywhere in the app with this simple call
    var appInfo = Provider.of<AppInfo>(context);
    return Scaffold(
      body: Center(
        child: Text(appInfo.welcomeMessage),
      ),
    );
  }
}

// With Dependency injection using get_it
//
// class HomeView extends StatelessWidget {
//   HomeView({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // We have access to it any widget tree.
//     var appInfo = InheritedInjection.of(context).appInfo;
//     return Scaffold(
//       body: Center(
//         child: Text(appInfo.welcomeMessage),
//       ),
//     );
//   }
// }

// With Dependency injection using InheritedWidget
//
// class HomeView extends StatelessWidget {
//   HomeView({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // We have access to it any widget tree.
//     var appInfo = InheritedInjection.of(context).appInfo;
//     return Scaffold(
//       body: Center(
//         child: Text(appInfo.welcomeMessage),
//       ),
//     );
//   }
// }

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostItem();
  }
}

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostMenu();
  }
}

class PostMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostAction();
  }
}

class PostAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LikeButton();
  }
}

// With Dependency injection using Provider
//
class LikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have access to it anywhere in the app with this simple call
    var appInfo = Provider.of<AppInfo>(context);
    return Scaffold(
      body: Center(
        child: Text(appInfo.welcomeMessage),
      ),
    );
  }
}

// // With Dependency injection using get_it
// //
// class LikeButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Request the AppInfo from the locator
//     var appInfo = locator<AppInfo>();
//     return Scaffold(
//       body: Center(
//         child: Text(appInfo.welcomeMessage),
//       ),
//     );
//   }
// }

// With Dependency injection using InheritedWidget
//
// class LikeButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // We have access to it any widget tree.
//     var appInfo = InheritedInjection.of(context).appInfo;
//     return Scaffold(
//       body: Center(
//         child: Text(appInfo.welcomeMessage),
//       ),
//     );
//   }
// }

// Without Dependency injection
//
// class HomeView extends StatelessWidget {
//   // Home View has a dependency on the AppInfo
//   AppInfo appInfo;

//   HomeView({Key key, this.appInfo}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MyList(
//           appInfo: appInfo,
//         ),
//       ),
//     );
//   }
// }

// class MyList extends StatelessWidget {
//   AppInfo appInfo;

//   MyList({Key key, this.appInfo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return PostItem(
//       appInfo: appInfo,
//     );
//   }
// }

// class PostItem extends StatelessWidget {
//   AppInfo appInfo;

//   PostItem({Key key, this.appInfo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return PostMenu(
//       appInfo: appInfo,
//     );
//   }
// }

// class PostMenu extends StatelessWidget {
//   AppInfo appInfo;

//   PostMenu({Key key, this.appInfo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return PostAction(
//       appInfo: appInfo,
//     );
//   }
// }

// class PostAction extends StatelessWidget {
//   AppInfo appInfo;

//   PostAction({Key key, this.appInfo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return LikeButton(
//       appInfo: appInfo,
//     );
//   }
// }

// class LikeButton extends StatelessWidget {
//   AppInfo appInfo;

//   LikeButton({Key key, this.appInfo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

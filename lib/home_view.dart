import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // We have access to it any widget tree.
    var appInfo = InheritedInjection.of(context).appInfo;
    return Scaffold(
      body: Center(
        child: Text(appInfo.welcomeMessage),
      ),
    );
  }
}

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

class LikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // We have access to it any widget tree.
    var appInfo = InheritedInjection.of(context).appInfo;
    return Scaffold(
      body: Center(
        child: Text(appInfo.welcomeMessage),
      ),
    );
  }
}

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

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';

import 'navigation_button_list.dart';
// import '../../../res/constants.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(18),
            child:!Responsive.isMobile(context)? Image.asset('assets/icons/logo.png') : MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          // if(Responsive.isLargeMobile(context)) const MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}

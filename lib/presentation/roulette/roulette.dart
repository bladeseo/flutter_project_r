import 'package:another_flushbar/flushbar_helper.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/core/stores/form/form_store.dart';
import 'package:boilerplate/core/widgets/app_icon_widget.dart';
import 'package:boilerplate/core/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/core/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/core/widgets/rounded_button_widget.dart';
import 'package:boilerplate/core/widgets/textfield_widget.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';

import 'package:boilerplate/presentation/home/store/language/language_store.dart';

import 'package:boilerplate/presentation/home/store/theme/theme_store.dart';
import 'package:boilerplate/presentation/login/store/login_store.dart';
import 'package:boilerplate/utils/device/device_utils.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:math'; // for random num.
import 'package:flutter_svg/flutter_svg.dart';

import '../../di/service_locator.dart';

class RouletteScreen extends StatefulWidget {
  // const RouletteScreen({Key? key}) : super(key: key); // 없어도 되나 봄
  
  @override
  _RouletteScreenState createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
  final LanguageStore _languageStore = getIt<LanguageStore>();

  //text controllers:-----------------------------------------------------------
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //stores:---------------------------------------------------------------------
  final ThemeStore _themeStore = getIt<ThemeStore>();
  final FormStore _formStore = getIt<FormStore>();
  final UserStore _userStore = getIt<UserStore>();

  //focus node:-----------------------------------------------------------------
  late FocusNode _passwordFocusNode;

  // xmlnsXlink="http://www.w3.org/1999/xlink"

  // viewBox="-100 -100 200 200"
  // width=100 height=100
  // width="100%" preserveAspectRatio="xMidYMid meet"
  String rawSvg = '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="-100 -100 200 200" width="100%" preserveAspectRatio="xMidYMid meet" fill="none" stroke-width="0.5">
 <g>
  <title>Layer 1</title>
  <circle r="100" fill="#e1d85d" stroke="gray"/>
  <line x2="0" y2="-100" stroke="gray" stroke-width="0.2"/>
  <line x2="0" y2="100" stroke="gray" stroke-width="0.2"/>
  <line x2="100" y2="0" stroke="gray" stroke-width="0.2"/>
  <line x2="-100" y2="0" stroke="gray" stroke-width="0.2"/>
  <text class="small" text-anchor="middle" transform="translate(50,-50) rotate(45)" style="fill:red;">A1</text>
  <text class="small" text-anchor="middle" transform="translate(50,50) rotate(135)" style="fill:blue;">B2</text>
  <text class="small" text-anchor="middle" transform="translate(-50,-50) rotate(-45)" style="fill:green;">C3</text>
  <text class="small" text-anchor="middle" transform="translate(-50,50) rotate(-135)" style="fill:black;">D4</text>
 </g>
</svg>''';

  int menuCount = 4;
  int clickCount = 0; // 버튼 클릭수

  double baseTurns = 4.0; // 기본 회전수
  double currTurns = 0.0;
  double prevTurns = 0.0;

  // => arrow func. 는 1줄만 되나 봄
  void _changeRotation() {
    setState(() {
      // 최초 클릭에만 약간 비틀기
      if (clickCount < 1) {
        currTurns = 1 / (2 * menuCount.toDouble()); // 가운데 맞추기(한 칸의 절반)
      }

      prevTurns = currTurns;
      // currTurns += (0.125 / 2.0);
      currTurns += baseTurns + (Random().nextInt(menuCount - 1) / menuCount); // + 아이템 선택용 회전

      clickCount++;
    });
  }

  String getResult(double degree) {
    String result = "";

    if (degree == 0.125) {
      result = "CCCCC";
    } else if (degree == 0.375) {
      result = "DDDDD";
    } else if (degree == 0.625) {
      result = "BBBBB";
    } else if (degree == 0.875) {
      result = "AAAAA";
    }

    return result;
  }

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // child: const Text('Page 2'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: _changeRotation,
              child: new Text('language : ' + _languageStore.locale.toString()),
            ),
            ElevatedButton(
              onPressed: _changeRotation,
              child: new Text('Rotate : ' + (currTurns - prevTurns).toString()),
            ),
            TextButton(
              onPressed: _changeRotation,
              child: new Text('Click Count : ' + clickCount.toString()),
            ),
            TextButton(
              onPressed: _changeRotation,
              child: new Text('Result : ' + (currTurns % 1).toString() + ' => ' + getResult(currTurns % 1)),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                  turns: currTurns,
                  duration: const Duration(seconds: 2),
                  child: SvgPicture.string(rawSvg,
                      width: 500,
                      height: 500,
                      fit: BoxFit.fitWidth)

                // SvgPicture.asset(
                // 'assets/images/menuwheel.svg',
                // semanticsLabel: 'My SVG Image'
                // )
                // child: Image.asset('assets/images/menuwheel1.png')
                // child: const FlutterLogo(size: 300),
              ),
            ),
          ],
        )

      // primary: true,
      // appBar: EmptyAppBar(),
      // body: _buildBody(),
    );
  }

  /*
  Widget _buildSignInButton() {
    return RoundedButtonWidget(
      buttonText: AppLocalizations.of(context).translate('login_btn_sign_in'),
      buttonColor: Colors.orangeAccent,
      textColor: Colors.white,
      onPressed: () async {
        if (_formStore.canLogin) {
          DeviceUtils.hideKeyboard(context);
          _userStore.login(_userEmailController.text, _passwordController.text);
        } else {
          _showErrorMessage('Please fill in all fields');
        }
      },
    );
  }
  */

  // General Methods:-----------------------------------------------------------
  _showErrorMessage(String message) {
    if (message.isNotEmpty) {
      Future.delayed(Duration(milliseconds: 0), () {
        if (message.isNotEmpty) {
          FlushbarHelper.createError(
            message: message,
            title: AppLocalizations.of(context).translate('home_tv_error'),
            duration: Duration(seconds: 3),
          )..show(context);
        }
      });
    }

    return SizedBox.shrink();
  }

  // dispose:-------------------------------------------------------------------
  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    _userEmailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }
}

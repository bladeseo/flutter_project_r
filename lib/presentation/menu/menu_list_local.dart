import 'dart:js_interop';

import 'package:flutter/material.dart';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:boilerplate/core/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/di/service_locator.dart';

import 'package:boilerplate/presentation/home/store/theme/theme_store.dart';
import 'package:boilerplate/presentation/login/store/login_store.dart';

// import 'package:boilerplate/presentation/menu/store/menu_store_rest.dart';
import 'package:boilerplate/presentation/menu/store/menu_store_local.dart';

import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:boilerplate/core/stores/form/form_store.dart';

import 'package:boilerplate/core/widgets/textfield_widget.dart';
import 'package:boilerplate/core/widgets/rounded_button_widget.dart';

import 'package:boilerplate/utils/device/device_utils.dart';


class MenuListScreenLocal extends StatefulWidget {
  @override
  _MenuListScreenLocalState createState() => _MenuListScreenLocalState();
}

class _MenuListScreenLocalState extends State<MenuListScreenLocal> {
  //stores:---------------------------------------------------------------------
  final ThemeStore _themeStore = getIt<ThemeStore>();
  final FormStore _formStore = getIt<FormStore>();
  final UserStore _userStore = getIt<UserStore>();

  final MenuStoreLocal _menuStoreLocal = getIt<MenuStoreLocal>();

  TextEditingController _menuTitleController = TextEditingController();
  TextEditingController _menuTitleDetailController = TextEditingController();

  TextEditingController _userEmailController = TextEditingController();



  late FocusNode _passwordFocusNode;


  var _menuItemSelectedIndex;

  void _menuItemOnItemTapped(int index) {
    setState(() {
      _menuItemSelectedIndex = index;
    });
  }

  bool _visible = false; //  _menuStoreLocal.getShowMenuAddFormLocal();
  // print('_visible : ' + _visible.toString());


  void _toggleShowMenuAddForm() {
    _menuStoreLocal.toggleShowMenuAddForm();

    setState(() {
      _visible = _menuStoreLocal.getShowMenuAddFormLocal();
    });

    print('menu add button click : ' + _visible.toString());
  }


  int _bottomNavBarSelectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _bottomNavBarOnItemTapped(int index) {
    setState(() {
      _bottomNavBarSelectedIndex = index;
    });
  }


  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // // check to see if already called api
    // if (!_menuStoreLocal.loading) {
    //   _menuStoreLocal.getMenus();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  // body methods:--------------------------------------------------------------
  // BuildContext context
  Widget _buildBody() {

    // Material 추가
    return Material(
      child: Stack(
        children: <Widget>[
          _handleErrorMessage(),
          _buildMainContent(),
        ],
      ),
    );

    // return Stack(
    //   children: <Widget>[
    //     _handleErrorMessage(),
    //     _buildMainContent(),
    //   ],
    // );
  }

  Widget _buildMainContent() {
    return Observer(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('BottomNavigationBar Sample'),
              // title: Text(AppLocalizations.of(context).translate('home_tv_posts')),
              actions: _buildAppBarActions(context),
            ),

            body: Column(
              // overflow: Overflow.visible,

              // _menuStoreLocal.getShowMenuAddFormLocal()


              children: <Widget>[
                  Visibility(
                    visible: _visible, // _menuStoreLocal.getShowMenuAddFormLocal(),
                    child: Text('visibility test')
                  ),

                  Expanded(
                      flex: 1,
                      child: Container(
                        // width: 250,
                        // height: 250,
                          color: Colors.amberAccent,
                          padding: const EdgeInsets.all(5.0),
                          // alignment: Alignment.bottomCenter,

                          child: _buildMenuTitleField())),
                // ),

                Expanded(
                    flex: 1,
                    child: Container(
                      // width: 250,
                      // height: 250,
                        color: Colors.amberAccent,
                        padding: const EdgeInsets.all(5.0),
                        // alignment: Alignment.bottomCenter,

                        child: _buildMenuTitleDetailField())),        // child: _buildUserIdField())),
                Expanded(
                    flex: 1,
                    child: Container(
                        // width: 250,
                        // height: 250,
                        color: Colors.amberAccent,
                        padding: const EdgeInsets.all(5.0),
                        // alignment: Alignment.bottomCenter,
                        child: _buildItemAddButton())),
                        // child: _buildSignInButton())),
                Expanded(
                    flex: 6,
                    child: Container(
                        // width: 100,
                        // height: 300,
                        color: Colors.redAccent,
                        padding: const EdgeInsets.all(5.0),
                        // alignment: Alignment.bottomCenter,
                        child: _buildListView(_bottomNavBarSelectedIndex))),
                Expanded(
                    flex: 1,
                    child: Container(
                      // width: 100,
                      // height: 300,
                        color: Colors.redAccent,
                        padding: const EdgeInsets.all(5.0),
                        // alignment: Alignment.bottomCenter,
                        child: _widgetOptions.elementAt(_bottomNavBarSelectedIndex))),
              ],
            ),




            // body: Center(
            //   child: _widgetOptions.elementAt(_bottomNavBarSelectedIndex),
            // ),



                bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      // icon: Icon(Icons.home),
                      icon: Text("home"),
                      activeIcon: Text("home +"),
                      label: 'home',
                      backgroundColor: Colors.red,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Business',
                      backgroundColor: Colors.green,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.school),
                      label: 'School',
                      backgroundColor: Colors.purple,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.add),
                      label: 'Settings',
                      backgroundColor: Colors.pink,
                    ),
                  ],
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: _bottomNavBarSelectedIndex,
                  selectedItemColor: Colors.amber[800],
                  onTap: _bottomNavBarOnItemTapped,
                ),
              );


              /*
              return Column(
                // overflow: Overflow.visible,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        // width: 250,
                        // height: 250,
                          color: Colors.amberAccent,
                          padding: const EdgeInsets.all(5.0),
                          // alignment: Alignment.bottomCenter,
                          child: _buildUserIdField()
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        // width: 250,
                        // height: 250,
                          color: Colors.amberAccent,
                          padding: const EdgeInsets.all(5.0),
                          // alignment: Alignment.bottomCenter,
                          child: _buildSignInButton()
                      )
                  ),
                  Expanded(
                      flex: 7,
                      child: Container(
                        // width: 100,
                        // height: 300,
                          color: Colors.redAccent,
                          padding: const EdgeInsets.all(5.0),
                          // alignment: Alignment.bottomCenter,
                          child: _buildListView()
                      )
                  ),
                ],
              );
              */



        }
    );

    // 일단은 Observer 사용 불필요
    /*
    return Observer(
      builder: (context) {
        return Material(child: _buildListView());
        // return _menuStoreLocal.loading
        //     ? CustomProgressIndicatorWidget()
        //     : Material(child: _buildListView());
      },
    );
    */
  }


  List<Widget> _buildAppBarActions(BuildContext context) {
    return <Widget>[
      _buildMenuAddButton(),
    ];
  }

  Widget _buildMenuAddButton() {
    // Wrapping in the Observer will automatically re-render on changes to counter.value
    return Observer(
      builder: (context) {
        return IconButton(
          onPressed: () {
            // 메뉴 아이템 추가 위젯용 flag 설정
            _toggleShowMenuAddForm();

            //
            // _menuStoreLocal.toggleShowMenuAddForm();
            //
            // setState(() {
            //   _visible = _menuStoreLocal.getShowMenuAddFormLocal();
            // });
            //
            // print('menu add button click : ' + _visible.toString());

            // _themeStore.changeBrightnessToDark(!_themeStore.darkMode);
          },
          icon: Icon(
            Icons.bookmark_add
            // _themeStore.darkMode ? Icons.brightness_5 : Icons.brightness_3,
          ),
        );
      },
    );
  }


  Widget _buildListView(int index) {
      print("index @ _buildListView : " + index.toString());

      return _menuStoreLocal.listMenuLanguageLocal() != null
          ? ListView.separated(
        itemCount: _menuStoreLocal.listMenuLanguageLocal()!.length,
        separatorBuilder: (context, position) {
          return Divider();
        },

        itemBuilder: (context, position) {
          return _buildListItem(position);
        },
      )
          : Center(
        child: Text(
          AppLocalizations.of(context).translate('home_tv_no_menu_found'),
        ),
      );
    }


  // Widget _buildListView() {
  //   return _menuStoreLocal.menuItemLocalList != null
  //       ? ListView.separated(
  //     itemCount: _menuStoreLocal.menuItemLocalList!.length,
  //     separatorBuilder: (context, position) {
  //       return Divider();
  //     },
  //
  //     itemBuilder: (context, position) {
  //       return _buildListItem(position);
  //     },
  //   )
  //       : Center(
  //     child: Text(
  //       AppLocalizations.of(context).translate('home_tv_no_menu_found'),
  //     ),
  //   );
  // }

  Widget _buildListItem(int position) {
    int _pos = position;

    // bool _isUse = _menuStoreLocal.listMenuUseLocal()?[_pos] ?? false;
    // bool _isUse = _menuStoreLocal.listMenuItemLocal()?[position].use ?? false;

    return Observer(
        builder: (context) {

          return SwitchListTile(
            dense: true,
            title: Text(
              // '${_menuStoreLocal.menuList?.menus?[position].id}',

              '${_menuStoreLocal.listMenuLanguageLocal()?[_pos]}',
              // '${_menuStoreLocal.listMenuItemLocal()?[position].language}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              // style: Theme.of(context).textTheme.titleMedium
              style: TextStyle(
                fontSize: 20,
                color: _menuStoreLocal.listMenuUseLocal()?[_pos] ?? false // _isUse
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            subtitle: Text(
              // '${_menuStoreLocal.menuList?.menus?[position].price}',

              '${_menuStoreLocal.listMenuLanguageDetailLocal()?[_pos]} : ' + '${_menuStoreLocal.listMenuUseLocal()?[_pos]}',
              // '${_menuStoreLocal.listMenuItemLocal()?[position].code}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                  fontSize: 15
              ),
            ),
            value: _menuStoreLocal.listMenuUseLocal()?[_pos] ?? false, // _isUse
            onChanged:(bool value) {
              print('value : ' + value.toString());

              // _isUse = value;
              _menuStoreLocal.changeMenuUseLocal(_pos, value);

              // 테마 변경 호출
              // _themeStore.changeBrightnessToDark(!_themeStore.darkMode);

              // setState(() {
              //   _isUse = value;
              //
              // });
            },
            secondary: const Icon(Icons.bookmark_border_outlined), // Icons.lightbulb_outline
          );

        }
    );



    // return ListTile(
    //   dense: true,
    //   leading: Icon(Icons.cloud_circle), //  .cloud_circle  access_time
    //   title: Text(
    //     // '${_menuStoreLocal.menuList?.menus?[position].id}',
    //     '${_menuStoreLocal.menuItemLocalList?[position].language}',
    //     maxLines: 1,
    //     overflow: TextOverflow.ellipsis,
    //     softWrap: false,
    //     style: Theme.of(context).textTheme.subtitle1,
    //   ),
    //   subtitle: Text(
    //     // '${_menuStoreLocal.menuList?.menus?[position].price}',
    //     '${_menuStoreLocal.menuItemLocalList?[position].code}',
    //     maxLines: 1,
    //     overflow: TextOverflow.ellipsis,
    //     softWrap: false,
    //   ),
    // );
  }



  Widget _buildMenuTitleField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: AppLocalizations.of(context).translate('menu_title'),
          inputType: TextInputType.text, // TextInputType.emailAddress,
          icon: Icons.new_label, // .person,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _menuTitleController,
          inputAction: TextInputAction.next,
          autoFocus: false,
          onChanged: (value) {
            _formStore.setMenuTitle(_menuTitleController.text);
          },
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: _formStore.formErrorStore.menuTitle,
        );
      },
    );
  }


  Widget _buildMenuTitleDetailField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: AppLocalizations.of(context).translate('menu_title_detail'),
          inputType: TextInputType.text, // TextInputType.emailAddress,
          icon: Icons.new_label, // .person,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _menuTitleDetailController,
          inputAction: TextInputAction.next,
          autoFocus: false,
          onChanged: (value) {
            _formStore.setMenuTitleDetail(_menuTitleDetailController.text);
          },
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: _formStore.formErrorStore.menuTitleDetail,
        );
      },
    );
  }


  Widget _buildUserIdField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: AppLocalizations.of(context).translate('login_et_user_email'),
          inputType: TextInputType.text, // TextInputType.emailAddress,
          icon: Icons.new_label, // .person,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _userEmailController,
          inputAction: TextInputAction.next,
          autoFocus: false,
          onChanged: (value) {
            _formStore.setUserId(_userEmailController.text);
          },
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: _formStore.formErrorStore.userEmail,
        );
      },
    );
  }


  Widget _buildItemAddButton() {
    return RoundedButtonWidget(
      buttonText: AppLocalizations.of(context).translate('menu_btn_item_add'),
      buttonColor: Colors.blueAccent, // .orangeAccent,
      textColor: Colors.white,
      onPressed: () async {
        if (_menuTitleController.text.isDefinedAndNotNull && _menuTitleController.text.isNotEmpty) {
          // item 추가
          _menuStoreLocal.addMenuLanguageLocal(_menuTitleController.text.trim());
          _menuStoreLocal.addMenuLanguageDetailLocal(_menuTitleDetailController.text.trim());
          _menuStoreLocal.addMenuUseLocal(true);

          // input clear
          _menuTitleController.text = "";
          _menuTitleDetailController.text = "";

          // notice
          _showSuccessMessage("The item was added successfully.");

        } else {

          _showErrorMessage("Please input title");
        }
      },
    );
  }

  Widget _buildSignInButton() {
    return RoundedButtonWidget(
      buttonText: AppLocalizations.of(context).translate('login_btn_sign_in'),
      buttonColor: Colors.blueAccent, // .orangeAccent,
      textColor: Colors.white,
      onPressed: () async {
        if (_formStore.canLogin) {
          DeviceUtils.hideKeyboard(context);
          _userStore.login(_userEmailController.text, _userEmailController.text); // _passwordController.text
        } else {

          // changeMenuLanguage

          // _menuStoreLocal.menuItemLocalList?[0].language = _userEmailController.text;
          _menuStoreLocal.listMenuLanguageLocal()?[0] = _userEmailController.text;

          // _showErrorMessage(_menuStoreLocal.menuItemLocalList[0].language.toString());
          _showErrorMessage(_menuStoreLocal.listMenuLanguageLocal()[0]);

          // _showErrorMessage('Please fill in all fields');
        }
      },
    );
  }

  Widget _handleErrorMessage() {
    return Observer(
      builder: (context) {
        if (_menuStoreLocal.errorStore.errorMessage.isNotEmpty) {
          return _showErrorMessage(_menuStoreLocal.errorStore.errorMessage);
        }

        return SizedBox.shrink();
      },
    );
  }

  // General Methods:-----------------------------------------------------------
  _showSuccessMessage(String message) {
    Future.delayed(Duration(milliseconds: 0), () {
      if (message.isNotEmpty) {
        FlushbarHelper.createSuccess(
          message: message,
          title: AppLocalizations.of(context).translate('home_tv_success'),
          duration: Duration(seconds: 3),
        )..show(context);
      }
    });

    return SizedBox.shrink();
  }

  _showErrorMessage(String message) {
    Future.delayed(Duration(milliseconds: 0), () {
      if (message.isNotEmpty) {
        FlushbarHelper.createError(
          message: message,
          title: AppLocalizations.of(context).translate('home_tv_error'),
          duration: Duration(seconds: 3),
        )..show(context);
      }
    });

    return SizedBox.shrink();
  }


  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    _userEmailController.dispose();
    // _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }
}

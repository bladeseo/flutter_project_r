import 'package:another_flushbar/flushbar_helper.dart';
import 'package:boilerplate/core/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/di/service_locator.dart';

import 'package:boilerplate/presentation/home/store/theme/theme_store.dart';

// import 'package:boilerplate/presentation/menu/store/menu_store_rest.dart';
import 'package:boilerplate/presentation/menu/store/menu_store_local.dart';

import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:boilerplate/core/widgets/textfield_widget.dart';
import 'package:boilerplate/core/stores/form/form_store.dart';

class MenuListScreenLocal extends StatefulWidget {
  @override
  _MenuListScreenLocalState createState() => _MenuListScreenLocalState();
}

class _MenuListScreenLocalState extends State<MenuListScreenLocal> {
  //stores:---------------------------------------------------------------------
  final ThemeStore _themeStore = getIt<ThemeStore>();

  final MenuStoreLocal _menuStoreLocal = getIt<MenuStoreLocal>();


  TextEditingController _userEmailController = TextEditingController();

  final FormStore _formStore = getIt<FormStore>();

  late FocusNode _passwordFocusNode;


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
  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        _handleErrorMessage(),
        _buildMainContent(),
      ],
    );
  }

  Widget _buildMainContent() {
    return Material(
        // child: _buildListView()

        child: Stack(
          // overflow: Overflow.visible,
          children: <Widget>[
            _buildUserIdField(),
            _buildListView()
          ],
        ),
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

  Widget _buildListView() {
    return _menuStoreLocal.menuItemLocalList != null
        ? ListView.separated(
            itemCount: _menuStoreLocal.menuItemLocalList!.length,
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

  Widget _buildListItem(int position) {
    bool _isUse = _menuStoreLocal.menuItemLocalList?[position].use ?? false;
    int _pos = position;

    return SwitchListTile(
      dense: true,
      title: Text(
        // '${_menuStoreLocal.menuList?.menus?[position].id}',
        '${_menuStoreLocal.menuItemLocalList?[position].language}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        // style: Theme.of(context).textTheme.titleMedium
        style: TextStyle(
          color: _isUse
              ? Colors.white
              : Colors.black,
        ),
      ),
      subtitle: Text(
        // '${_menuStoreLocal.menuList?.menus?[position].price}',
        '${_menuStoreLocal.menuItemLocalList?[position].code}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
      value: _isUse,
      onChanged:(bool value) {
        _menuStoreLocal.changeCurrentMenu(_pos, value);

        print('curr. menu id : ' + _menuStoreLocal.getCurrentMenuId().toString());

        // print('curr. menu id : ' + _menuStoreLocal.get .getCurrentMenuId().toString());

        // 테마 변경 호출
        // _themeStore.changeBrightnessToDark(!_themeStore.darkMode);


        // setState(() {
        //   _isUse = value;
        //
        // });
      },
      secondary: const Icon(Icons.lightbulb_outline),
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


  Widget _buildUserIdField() {
    return Observer(
      builder: (context) {
        return TextFieldWidget(
          hint: AppLocalizations.of(context).translate('login_et_user_email'),
          inputType: TextInputType.emailAddress,
          icon: Icons.person,
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
}

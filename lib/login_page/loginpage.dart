import '../createaccount/createaccount.dart';
import '../flutter_design/flutter_util.dart';
import '../flutter_design/flutter_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../flutter_design/flutter_theme.dart';
import '../flutter_design/icon_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF5C4D7D),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/FLUTTER_(1).png',
                      width: 250,
                      height: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0x00F5F5F5),
                        child: Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.transparent,
                              )
                            ],
                            border: Border.all(
                              color: Color(0x00959595),
                            ),
                          ),
                          child: TextFormField(
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              labelStyle:
                              MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
                                final Color color = states.contains(MaterialState.error)
                                    ? Theme.of(context).errorColor
                                    : Colors.white;
                                return TextStyle(color: color, letterSpacing: 1.3);
                              }),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            style: FlutterTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xADFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  lineHeight: 4,
                                ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0x00F5F5F5),
                          child: Container(
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.transparent,
                                )
                              ],
                              border: Border.all(
                                color: Color(0x00959595),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: TextFormField(
                                controller: textController2,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle:
                                  MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
                                    final Color color = states.contains(MaterialState.error)
                                        ? Theme.of(context).errorColor
                                        : Colors.white;
                                    return TextStyle(color: color, letterSpacing: 1.3);
                                  }),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  prefixIcon: FaIcon(
                                    FontAwesomeIcons.lock,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xB2D5D5D5),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xADFFFFFF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      lineHeight: 4,
                                    ),
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'ENTRAR',
                        options: FButtonOptions(
                          width: 150,
                          height: 50,
                          color: Colors.white,
                          textStyle:
                              FlutterTheme.of(context).subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF723C70),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Color(0x7F000000),
                            width: 1,
                          ),
                          borderRadius: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 500),
                                reverseDuration: Duration(milliseconds: 500),
                                child: CreateAccount(),
                              ),
                            );
                          },
                          child: Text(
                            'CRIAR CONTA',
                            style:
                                FlutterTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xC5FFFFFF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OU ACESSE PELO',
                        style: FlutterTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xB6DCDCDC),
                              fontSize: 17,
                            ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FlutterIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

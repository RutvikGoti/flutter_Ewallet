import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/screen/drawer_page.dart';
import 'package:flutter_ewallet/util/file_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  mainBanner,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _topContent(),
                    _centerContent(),
                    _bottomContent()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 18,
        ),
        Row(
          children: <Widget>[
            Text(
              "11:57 AM",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              width: 30,
            ),
            SvgPicture.asset(cloud),
            const SizedBox(
              width: 8,
            ),
            Text(
              '34° C',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "Jan 30, 2022 | Sunday",
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(logo),
          const SizedBox(
            height: 18,
          ),
          Text(
            'eWalle',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Column(
      children: <Widget>[
        MaterialButton(
          elevation: 0,
          color: const Color(0xFFFFAC30),
          height: 50,
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DrawerPage(),
              ),
            );
          },
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.button,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Create an Account',
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}

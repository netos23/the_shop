import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_main_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileMainScreen module
@RoutePage()
class ProfileMainScreenWidget
    extends ElementaryWidget<IProfileMainScreenWidgetModel> {
  const ProfileMainScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileMainScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMainScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Профиль",
          style:wm.textTheme.titleMedium,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 55,
            child: SizedBox(
              width: double.infinity,
              child: _ProfileButton(
                text: "Мои данные",
                onTap: () => wm.myDataPressed(),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            child: SizedBox(
              width: double.infinity,
              child: _ProfileButton(
                text: "Мои заказы",
                onTap: () => wm.myOrdersPressed(),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            child: SizedBox(
              width: double.infinity,
              child: _ProfileButton(
                text: "Адреса магазинов",
                onTap: () => wm.pointsListPressed(),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                        )
                    ),
                  ),
                  onPressed: () => wm.unAuthorize(),
                  child: Center(child: Text("ВЫЙТИ",
                  style: wm.textTheme.labelLarge)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ProfileButton extends StatelessWidget {
  const _ProfileButton({
    Key? key,
    required this.onTap,
    required this.text,

  }): super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 0,
              thickness: 1,
              indent: 20,
              endIndent: 30,
            ),
          ],
        )
    );
  }
}

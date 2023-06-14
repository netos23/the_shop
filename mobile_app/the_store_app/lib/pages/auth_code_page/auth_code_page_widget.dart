import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'auth_code_page_wm.dart';
import 'package:pinput/pinput.dart';

// TODO: cover with documentation
/// Main widget for AuthCodePage module
@RoutePage()
class AuthCodePageWidget extends ElementaryWidget<IAuthCodePageWidgetModel> {
  const AuthCodePageWidget({
    Key? key,
    required this.email,
    WidgetModelFactory wmFactory = defaultAuthCodePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String email;

  @override
  Widget build(IAuthCodePageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    final textTheme = wm.textTheme;
    final colorTheme = wm.colorScheme;
    final router = wm.router;

    const defaultPinTheme = PinTheme(
      width: 33,
      height: 56,
      textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
    );
    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 33,
          height: 1,
          decoration: const BoxDecoration(),
        ),
      ],
    );

    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 33,
          height: 1,
          decoration: const BoxDecoration(),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 54,
        centerTitle: true,
        title: Text(
          localizations.enter,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Pinput(
                controller: wm.codeController,
                length: 4,
                separator: const SizedBox(
                  width: 23,
                ),
                autofillHints: const [AutofillHints.oneTimeCode],
                cursor: cursor,
                preFilledWidget: preFilledWidget,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
            SizedBox(
              height: 50,
              child: FilledButton(
                style: theme.filledButtonTheme.style?.copyWith(
                    fixedSize:
                        const MaterialStatePropertyAll(Size.fromHeight(50))),
                onPressed: () {
                  wm.confirmCode();
                  router.popUntilRoot();
                },
                child: Center(
                  child: Text(localizations.confirm),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SmsTimer extends StatefulWidget {
//   const SmsTimer({Key? key}) : super(key: key);
//
//   @override
//   State<SmsTimer> createState() => _SmsTimerState();
// }
//
// class _SmsTimerState extends State<SmsTimer> {
//   static const _timerDuration = 240;
//   int _resendTimer = 0;
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _startTimer();
//   }
//
//   @override
//   void dispose() {
//     _timer.cancel();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<bool>(
//       stream: bloc.invalidSmsController.stream,
//       builder: (context, isInvalidSnapshot) {
//         final isInvalid = isInvalidSnapshot.data ?? true;
//         final resendMessage = _resendTimer > 0
//             ? 'Отправить код повторно через $_resendTimer'
//             : '';
//         final invalidMessage = isInvalid
//             ? 'Проверьте введенный код или попробуйте снова'
//             : resendMessage;
//         return _resendTimer > 0
//             ? Text(
//                 invalidMessage,
//                 style: isInvalid
//                     ? theme.normalBlack16.copyWith(
//                         color: theme.red,
//                       )
//                     : theme.normalBlack16,
//                 textAlign: TextAlign.left,
//               )
//             : GestureDetector(
//                 onTap: () {
//                   if (_resendTimer == 0 || isInvalid) {
//                     bloc.resendConfirmationCode();
//                     _startTimer();
//                   }
//                 },
//                 child: Text(
//                   'Отправить СМС еще раз',
//                   style: _resendTimer > 0 && !isInvalid
//                       ? theme.boldBlue16.copyWith(
//                           color:
//                               Theme.of(context).primaryColor.withOpacity(0.5),
//                         )
//                       : theme.boldBlue16,
//                   textAlign: TextAlign.center,
//                 ),
//               );
//       },
//     );
//   }
//
//   void _startTimer() {
//     setState(() => _resendTimer = _timerDuration);
//
//     _timer = Timer.periodic(
//       const Duration(seconds: 1),
//       (timer) {
//         setState(
//           () {
//             if (_resendTimer > 0) {
//               _resendTimer--;
//
//               if (_resendTimer == 0) {
//                 _timer.cancel();
//               }
//             }
//           },
//         );
//       },
//     );
//   }
// }

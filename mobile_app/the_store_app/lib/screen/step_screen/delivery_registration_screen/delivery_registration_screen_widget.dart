import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screen/components/components.dart';
import 'package:the_store_app/screen/components/custom_filled_button.dart';
import 'delivery_registration_screen_wm.dart';

@RoutePage()
class DeliveryRegistrationScreenWidget
    extends ElementaryWidget<IDeliveryRegistrationScreenWidgetModel> {
  const DeliveryRegistrationScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultDeliveryRegistrationScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IDeliveryRegistrationScreenWidgetModel wm) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Оформление заказа",
            style: wm.textTheme.titleMedium,
          ),
          leading: AutoLeadingButton(
            color: wm.colorScheme.primary,
          ),
          centerTitle: true,
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.userState,
          loadingBuilder: (context, user) {
            return const Center(child: PreloaderCircleIndicator());
          },
          builder: (context, userState) {
            wm.updateControllersText();
            return _DataUpdateViewWithValidatedForm(wm: wm);
          },
        ));
  }
}

class _DataUpdateViewWithValidatedForm extends StatefulWidget {
  const _DataUpdateViewWithValidatedForm({
    Key? key,
    required this.wm,
  }) : super(key: key);

  final IDeliveryRegistrationScreenWidgetModel wm;

  @override
  State<StatefulWidget> createState() {
    return _DataUpdateViewWithValidatedFormState();
  }
}

class _DataUpdateViewWithValidatedFormState
    extends State<_DataUpdateViewWithValidatedForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        CustomTextField(
          validatingController: widget.wm.nameController,
          hintValue: "Иванов Иван",
        ),
        CustomTextField(
          phoneNumber: true,
          validatingController: widget.wm.phoneController,
          hintValue: "7 (900) 000 00 00",
        ),
        CustomTextField(
          validatingController: widget.wm.mailController,
          hintValue: "email@mail.com",
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Способ оплаты",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.left,),
        ),
        const SizedBox(
          height: 40,
        ),
        StreamBuilder<String?>(
          stream: widget.wm.payment.stream,
          builder: (context, snapshot){
            String? val = widget.wm.payment.valueOrNull?? "cash";
            return Column(
              children: [
                _PaymentCustomCheckbox.cash(isSelected: val == "cash", onTap: (){
                  widget.wm.payment.add("cash");
                }),
                _PaymentCustomCheckbox.card(isSelected: val == "card", onTap: (){
                  widget.wm.payment.add("card");
                })
              ],
            );
          }
        ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomFilledButton(
                  onTap: () => widget.wm.onSubmit(), text: "ОФОРМИТЬ"),
            ),
      ]),
    );
  }
}

class _PaymentCustomCheckbox extends StatelessWidget {
  final bool isSelected;
  final bool isCash;
  final VoidCallback onTap;

  const _PaymentCustomCheckbox(
      {super.key,
      required this.isSelected,
      required this.isCash,
      required this.onTap});

  const _PaymentCustomCheckbox.card(
      {super.key,
      required this.isSelected,
      this.isCash = false,
      required this.onTap});

  const _PaymentCustomCheckbox.cash(
      {super.key,
      required this.isSelected,
      this.isCash = true,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final widgetColor =
        isSelected ? theme.colorScheme.primary : Colors.grey[400]!;

    final subtitleText = isCash
        ? "Оплата наличными или картой при получении"
        : "Оплата картой в приложении";

    final titleText = isCash ? "Оплата при получении" : "Онлайн оплата";

    final iconData = isCash
        ? Icons.account_balance_wallet_outlined
        : Icons.credit_card_outlined;

    final topRow = isSelected
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  titleText,
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: widgetColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Icon(
                  Icons.done,
                  color: theme.colorScheme.primary,
                  size: 30,
                ),
              ),


            ],
          )
        : Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              titleText,
              style: theme.textTheme.bodyLarge!.copyWith(color: widgetColor),
            ),
          );
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.zero,
              border: Border.all(
                color: widgetColor,
              )),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topRow,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 16, 0),
                    child: Icon(
                      iconData,
                      color: widgetColor,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      subtitleText,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: widgetColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

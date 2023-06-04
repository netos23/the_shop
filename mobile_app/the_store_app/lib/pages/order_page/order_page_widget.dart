import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/delivery.dart';
import 'package:the_store_app/domain/models/product_with_count.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/pages/components/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'order_page_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderPage module
@RoutePage()
class OrderPageWidget extends ElementaryWidget<IOrderPageWidgetModel> {
  const OrderPageWidget({
    Key? key,
    this.productIds = const [],
    WidgetModelFactory wmFactory = defaultOrderPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final List<ProductWithCount> productIds;

  @override
  Widget build(IOrderPageWidgetModel wm) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final localizations = AppLocalizations.of(context);
        final theme = Theme.of(context);
        BoxConstraints bounds;

        final width = constrains.maxWidth;
        if (width <= 700) {
          bounds = constrains;
        } else {
          bounds = constrains.copyWith(
            minWidth: 0,
            maxWidth: max(width * 0.7, 700),
          );
        }

        final border = OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: theme.colorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        );

        return ColoredBox(
          color: Theme.of(context).colorScheme.background,
          child: Center(
            child: ConstrainedBox(
              constraints: bounds,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(localizations.order),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            TextField(
                              controller: wm.nameController,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: border,
                                focusedErrorBorder: border,
                                disabledBorder: border,
                                enabledBorder: border,
                                border: border,
                                prefixIcon: Icon(
                                  Icons.person_outline,
                                  color: theme.colorScheme.primary,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: 'Имя Фамилия',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: wm.phoneController,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: border,
                                focusedErrorBorder: border,
                                disabledBorder: border,
                                enabledBorder: border,
                                border: border,
                                prefixIcon: Icon(
                                  Icons.phone_android_outlined,
                                  color: theme.colorScheme.primary,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: 'Телефон',
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: wm.emailController,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: border,
                                focusedErrorBorder: border,
                                disabledBorder: border,
                                enabledBorder: border,
                                border: border,
                                prefixIcon: Icon(
                                  Icons.alternate_email_rounded,
                                  color: theme.colorScheme.primary,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: 'Email',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Доставки',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ),
                      ),
                      EntityStateNotifierBuilder(
                        listenableEntityState: wm.deliveriesState,
                        loadingBuilder: (context, data) {
                          return const SliverToBoxAdapter(
                            child: Center(
                              child: LoadingIndicator(),
                            ),
                          );
                        },
                        builder: (context, data) {
                          final deliveries = data?.$1 ?? [];
                          final selected = data?.$2;

                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final delivery = deliveries[index];
                                return _Delivery(
                                  delivery: delivery,
                                  theme: theme,
                                  selected: selected,
                                  onTap: () => wm.selectDelivery(
                                    delivery,
                                  ),
                                );
                              },
                              childCount: deliveries.length,
                            ),
                          );
                        },
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                'День доставки',
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                ),
                              ),
                            ),
                            EntityStateNotifierBuilder(
                              listenableEntityState: wm.dateState,
                              builder: (context, data) {
                                return GestureDetector(
                                  onTap: wm.changeDay,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: wm.changeDay,
                                        icon: const Icon(
                                          Icons.calendar_month_outlined,
                                        ),
                                      ),
                                      Text(
                                        DateFormat.yMd().format(data!),
                                        style: theme.textTheme.headlineSmall
                                            ?.copyWith(
                                          color: theme.colorScheme.onBackground,
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: wm.changeDay,
                                        icon: const Icon(
                                          Icons.settings,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            EntityStateNotifierBuilder(
                              listenableEntityState: wm.deliveriesState,
                              builder: (context, data) {
                                final delivery = data?.$2;

                                return Visibility(
                                  visible: delivery != null &&
                                      delivery.type == 'pickup' &&
                                      delivery.farm_address != null,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      'Аддрес магазина:',
                                      style: theme.textTheme.headlineSmall
                                          ?.copyWith(
                                        color: theme.colorScheme.onBackground,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            EntityStateNotifierBuilder(
                              listenableEntityState: wm.deliveriesState,
                              builder: (context, data) {
                                final delivery = data?.$2;

                                return Visibility(
                                  visible: delivery != null &&
                                      delivery.type == 'pickup' &&
                                      delivery.farm_address != null,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text(
                                      delivery?.farm_address ?? '',
                                      style:
                                          theme.textTheme.bodyLarge?.copyWith(
                                        color: theme.colorScheme.onBackground,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            EntityStateNotifierBuilder(
                              listenableEntityState: wm.deliveriesState,
                              builder: (context, data) {
                                final delivery = data?.$2;

                                return Visibility(
                                  visible: delivery != null &&
                                      delivery.type == 'delivery',
                                  child: TextField(
                                    controller: wm.addressController,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onBackground,
                                    ),
                                    decoration: InputDecoration(
                                      focusedBorder: border,
                                      focusedErrorBorder: border,
                                      disabledBorder: border,
                                      enabledBorder: border,
                                      border: border,
                                      prefixIcon: Icon(
                                        Icons.location_on_outlined,
                                        color: theme.colorScheme.primary,
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                      hintText: 'Аддрес доставки',
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            'Способ оплаты',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ),
                      ),
                      EntityStateNotifierBuilder(
                        listenableEntityState: wm.paymentsState,
                        loadingBuilder: (context, data) {
                          return const SliverToBoxAdapter(
                            child: Center(
                              child: LoadingIndicator(),
                            ),
                          );
                        },
                        builder: (context, data) {
                          final payments = data?.$1 ?? [];
                          final selected = data?.$2;

                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final payment = payments[index];
                                return _Payment(
                                  payment: payment,
                                  theme: theme,
                                  selected: selected,
                                  onTap: () => wm.selectPayment(
                                    payment,
                                  ),
                                );
                              },
                              childCount: payments.length,
                            ),
                          );
                        },
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Подписка на заказ',
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                ),
                              ),
                            ),
                            EntityStateNotifierBuilder(
                              listenableEntityState: wm.repeatState,
                              builder: (context, data) {
                                return GestureDetector(
                                  onTap: wm.changeRepeat,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        data == null
                                            ? 'Не оформлять'
                                            : 'Повторять каждые $data дня',
                                        style:
                                            theme.textTheme.bodyLarge?.copyWith(
                                          color: theme.colorScheme.onBackground,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: wm.changeRepeat,
                                        icon: const Icon(
                                          Icons.settings,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: wm.commentController,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onBackground,
                              ),
                              decoration: InputDecoration(
                                focusedBorder: border,
                                focusedErrorBorder: border,
                                disabledBorder: border,
                                enabledBorder: border,
                                border: border,
                                prefixIcon: Icon(
                                  Icons.comment,
                                  color: theme.colorScheme.primary,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: 'Комментарий',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FilledButton(
                              onPressed: wm.makeOrder,
                              child: Text(
                                localizations.ordering,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Delivery extends StatelessWidget {
  const _Delivery({
    required this.delivery,
    required this.theme,
    required this.selected,
    this.onTap,
  });

  final Delivery delivery;
  final ThemeData theme;
  final Delivery? selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: ListTile(
          onTap: onTap,
          leading: AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: delivery.icon,
                progressIndicatorBuilder: (_, __, ___) {
                  return const Center(
                    child: LoadingIndicator(),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Image.asset(
                    'assets/images/products.png',
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
          title: Text(
            delivery.title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          trailing: delivery == selected ? const Icon(Icons.check) : null,
        ),
      ),
    );
  }
}

class _Payment extends StatelessWidget {
  const _Payment({
    required this.payment,
    required this.theme,
    required this.selected,
    this.onTap,
  });

  final Payment payment;
  final ThemeData theme;
  final Payment? selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: ListTile(
          onTap: onTap,
          leading: AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: payment.icon,
                progressIndicatorBuilder: (_, __, ___) {
                  return const Center(
                    child: LoadingIndicator(),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Image.asset(
                    'assets/images/products.png',
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
          title: Text(
            payment.title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          subtitle: Text(
            payment.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          trailing: payment == selected ? const Icon(Icons.check) : null,
        ),
      ),
    );
  }
}

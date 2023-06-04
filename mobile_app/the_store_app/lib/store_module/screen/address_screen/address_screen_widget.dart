import 'package:auto_route/auto_route.dart';

import 'package:elementary/elementary.dart';
import 'package:the_store_app/src/components/components.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';
import 'package:the_store_app/store_module/screen/components/address_loader.dart';
import 'package:the_store_app/store_module/screen/components/address_tile.dart';
import 'address_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AddressPage module
@RoutePage<DeliveryMethod>()
class AddressPageWidget extends ElementaryWidget<IAddressPageWidgetModel> {
  const AddressPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAddressPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAddressPageWidgetModel wm) {
    final evenBackground = wm.colorScheme.background;
    final oddBackground = wm.colorScheme.secondary;

    return UnFocusDetector(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Выберите адрес доставки'),
          leading: BackButton(
            color: wm.colorScheme.primary,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(44),
            child: SizedBox(
              height: 44,
              child: SearchWidget(
                controller: wm.searchController,
              ),
            ),
          ),
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.addressState,
          loadingBuilder: (context, address) => AddressLoader(
            evenBackground: evenBackground,
            oddBackground: oddBackground,
          ),
          builder: (context, addressState) {
            var addressList = addressState?.suggestions ?? [];

            if (addressList.isEmpty) {
              return _EmptySearch(
                controller: wm.searchController,
              );
            }

            addressList = addressList
                .where((a) => wm.buildTitle(a.data).isNotEmpty)
                .toList();

            return ListView.builder(
              itemCount: addressList.length,
              itemBuilder: (context, index) {
                final address = addressList[index];
                return AddressTile(
                  title: wm.buildTitle(address.data),
                  subtitle: address.data?.region ?? '',
                  color: index.isEven ? evenBackground : oddBackground,
                  onTap: () => wm.onSelect(address),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _EmptySearch extends StatelessWidget {
  const _EmptySearch({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            if (controller.text.isEmpty) {
              return const Text(
                'Введите адрес',
                textAlign: TextAlign.center,
              );
            }

            return const Text(
              'К сожалению не нашлось адреса с таким названием :(',
              textAlign: TextAlign.center,
            );
          },
        ),
      ),
    );
  }
}

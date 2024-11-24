import 'package:flutter/material.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'icon': Icons.shopify_rounded, 'label': 'Tienda'},
      {'icon': Icons.map_sharp, 'label': 'Cómo llegar'},
      {'icon': Icons.calendar_month_outlined, 'label': 'Horario de apertura'},
      {'icon': Icons.credit_card, 'label': 'Otros servicios'},
      {'icon': Icons.list_alt_sharp, 'label': 'Normas de funcionamiento'},
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return ListTile(
          leading: Icon(item['icon'] as IconData, color: Colors.black),
          title: Text(
            item['label'] as String,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.grey),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) => const Divider(color: Colors.grey),
      itemCount: menuItems.length,
    );
  }
}

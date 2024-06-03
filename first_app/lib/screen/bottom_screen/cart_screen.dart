// SubScreen

import 'package:first_app/model/item_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // manula items list
  List<Item> lstItems = [

  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DataTable(

          // Color fill in column heading
          headingRowColor: MaterialStateColor.resolveWith(
            (states) => Colors.amber,
          ),
          border: TableBorder.all(
            color: Colors.black,
          ),
          columns: const [
            DataColumn(
              label: Text('Item Name'),
            ),
            DataColumn(
              label: Text('Item Price'),
            ),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('Pencil')),
              DataCell(Text('12')),
            ]),
            DataRow(cells: [
              DataCell(Text('Pen')),
              DataCell(Text('50')),
            ]),
          ]),
    );
  }
}

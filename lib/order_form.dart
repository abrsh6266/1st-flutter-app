import 'package:flutter/material.dart';

class OrderForm extends StatefulWidget {
  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Order _order = Order();
  List<String> _items = ['Item A', 'Item B', 'Item C'];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formStateKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: _selectedItem,
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value;
                    _order.item = value!;
                  });
                },
                items: _items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(labelText: 'Item'),
                validator: (value) => value == null ? 'Please select an item' : null,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
                validator: _validateQuantity,
                onSaved: (value) => _order.quantity = int.parse(value!),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () => _submitOrder(context),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _validateQuantity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Quantity required';
    }
    int? quantity = int.tryParse(value);
    if (quantity == null || quantity <= 0) {
      return 'Invalid quantity';
    }
    return null;
  }

  void _submitOrder(BuildContext context) {
    if (_formStateKey.currentState != null && _formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ordered ${_order.quantity} ${_order.item}(s)')),
      );
    }
  }
}

class Order {
  late int quantity;
  late String item;
}

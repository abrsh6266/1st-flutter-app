// order_form.dart
import 'package:flutter/material.dart';

class OrderForm extends StatefulWidget {
  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Order _order = Order();

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
              TextFormField(
                decoration: InputDecoration(labelText: 'Item'),
                validator: _validateItemRequired,
                onSaved: (value) => _order.item = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
                validator: validateItemCount,
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

  String? _validateItemRequired(String? value) {
    return value?.isEmpty ?? true ? 'Item required' : null;
  }

  String? validateItemCount(String? value) {
    int? _valueAsInteger = int.tryParse(value ?? '');
    if (_valueAsInteger == null) {
      return 'Please enter a valid number';
    }
    return _valueAsInteger == 0 ? 'At least one item is required' : null;
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

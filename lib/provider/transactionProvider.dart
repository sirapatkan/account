import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';


class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'หนังสือ', amount: 300,date: DateTime.now()),
    Transaction(title: 'รองเท้า', amount: 2000,date: DateTime.now()),
    Transaction(title: 'กระเป๋า', amount: 200,date: DateTime.now()),
    Transaction(title: 'เสื้อ', amount: 500,date: DateTime.now()),
    Transaction(title: 'กางเกง', amount: 600,date: DateTime.now()),
    Transaction(title: 'smartphone', amount: 25000,date: DateTime.now()),
  ];

  List<Transaction> getTransaction() {
    return transactions;
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction); 
    notifyListeners(); 
  }
}

import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'หนังสือ', amount: 300),
    Transaction(title: 'รองเท้า', amount: 2000),
    Transaction(title: 'กระเป๋า', amount: 200),
    Transaction(title: 'เสื้อ', amount: 500),
    Transaction(title: 'กางเกง', amount: 600),
  ];

  List<Transaction> getTransaction() {
    return transactions;
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction); 
    notifyListeners(); 
  }
}

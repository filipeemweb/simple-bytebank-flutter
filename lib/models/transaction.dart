class Transaction {
  final int accountNumber;
  final double value;

  Transaction(
    this.accountNumber,
    this.value,
  );

  @override
  String toString() {
    return 'Transaction { Conta: $accountNumber, Valor: $value }';
  }
}

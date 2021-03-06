import 'package:breez/services/breezlib/data/rpc.pb.dart';
import 'package:fixnum/fixnum.dart';

class InvoiceRequestModel {
  final String payeeName;
  final String description;
  final String logo;
  final Int64 amount;
  final Int64 expiry;

  InvoiceRequestModel(this.payeeName, this.description, this.logo, this.amount,
      {this.expiry});
}

class PaymentRequestModel {
  final InvoiceMemo _invoice;
  final String _rawPayReq;
  final String _paymentHash;

  PaymentRequestModel(this._invoice, this._rawPayReq, this._paymentHash);

  String get description => _invoice.description;
  String get payeeImageURL => _invoice.payeeImageURL;
  String get payeeName => _invoice.payeeName;
  Int64 get amount => _invoice.amount;
  String get rawPayReq => _rawPayReq;
  bool get loaded => _invoice != null ? true : false;
  String get paymentHash => _paymentHash;
}

class PaymentRequestError implements Exception {
  final String message;
  PaymentRequestError(this.message);
}

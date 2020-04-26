import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

class CoinData {
  CoinData();

  Future<dynamic> getCoinData(String selectedCurrency) async {
    http.Response response =
        await http.get('$coinAPIURL/BTC/$selectedCurrency?apikey=$apiKey');
    if (response.statusCode == 200) {
      String data = response.body;
      print('bit coin data = $data');
      // print('data ${data}');

      return jsonDecode(data);
    } else {
      return (response.statusCode);
    }
  }
}

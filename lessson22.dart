import 'dart:io';

void main() {
  moneyConverter();
}

// На основе пройденного материала, вам нужно будет создать программу которая конвертирует курс валют.
// Пример работы программы: В терминал выводится Курс доллара на сегодня:
// Доллар: 87 сом // Евро: 110 сом
// Российский рубль: 0.9сом // Тенге: 0.212321 сом
// 1) Хотите обменять другую валюту на сом?
// 2) Хотите обменять сом на другую валюту?
// Ввод: Пользоатель вводит 1 или 2. Пример: 2
// Дальше снова пользователю предоставляется выбор
// Выберите валюту: // USD // EUR // RUB // KZT
// Ввод: Пользователь вводит нужную ему валюту. Пример: EUR
// Сколько Евро хотите купить?
// Ввод: 50 // Обмен: 5500 сом на 50 EUR

moneyConverter() {
  print('Добро пожаловать  курс валют на сегодня ');
  print('Доллар = 87 сом');
  print(' Евро = 110 сом');
  print('Российский рубль = 0.9сом');
  print('Тенге = 0.212321 сом');

  int num = int.parse(stdin.readLineSync()!);

  if (num == 1) {
    print('Хотите обменять другую валюту на сом?');
    getConverter();
  } else if (num == 2) {
    print('Хотите обменять сом на другую валюту?');
    getConverter1();
  } else {
    print('Некорректный ввод');
  }
}

getConverter() {
  print('Выберите валюту');
  print(' USD, EUR, RUB , KZT, ');

  int dollarCurs = 87;
int euroCurs = 110;
double rubCurs = 0.9;
double tengeCurs = 0.212321;

  int userAns = int.parse(stdin.readLineSync()!);
  int userCurs = int.parse(stdin.readLineSync()!);

  if (userAns == 1 ){
    print('${userCurs * dollarCurs}: Доллар');
  }else if (userAns == 2){
print('${userCurs * euroCurs}: Евро ');
  }else if (userAns == 3){
    print('${userCurs * rubCurs} : Рубль');
  }else if (userAns == 4 ){
    print('${userCurs * tengeCurs}');
  }else{
    print('Ошибка ! Введите корректно!');
  }

}

getConverter1() {
  print('Выберите валюту');
  print(' USD, EUR, RUB , KZT, ');

  int dollarCurs = 87;
int euroCurs = 110;
double rubCurs = 0.9;
double tengeCurs = 0.212321;

  int userAns = int.parse(stdin.readLineSync()!);
  int userCurs = int.parse(stdin.readLineSync()!);

  if (userAns == 1 ){
    print('${dollarCurs / userCurs} : Доллар');
  }else if (userAns == 2){
print('${euroCurs / userCurs}: Евро ');
  }else if (userAns == 3){
    print('${ rubCurs / userCurs} : Рубль');
  }else if (userAns == 4 ){
    print('${ tengeCurs / userCurs}');
  }else{
    print('Ошибка ! Введите корректно!');
  }
}
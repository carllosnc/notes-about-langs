/*
  COLLETCIONS

  list - https://www.dartlang.org/guides/language/language-tour#lists
  set - https://www.dartlang.org/guides/language/language-tour#sets
  map - https://www.dartlang.org/guides/language/language-tour#maps
*/

/*---------------------------------------
  list - a collection of items
----------------------------------------*/
var list1 = [1, 2, 3];

List<String> list2 = ['foo', 'bar', 'span'];
List<num> list3 = [1, 2, 3.2];
List<Function> list4 = [() {}, () {}, () {}];
List<dynamic> list5 = ["hello", 10];

/*---------------------------------------
  set - a collection of unique items
----------------------------------------*/
var set1 = {1, 2, 3};

Set<String> set2 = {'foo', 'bar', 'span'};
Set<num> set3 = {1, 2, 3, 4};
Set<Function> set4 = {() {}, () {}, () {}};

/*---------------------------------------
  map - a collection with key and value
----------------------------------------*/
var map1 = {
  'key1': 'value1',
  'key2': 'value2',
  'key3': 'value3',
};

var map2 = const {1: 'value1', 2: 'value2', 3: 'value3'};

Map<String, String> map3 = {"foo": "bar"};
Map<String, int> map4 = {"span": 42};
Map<String, Function> map5 = {
  "hello": () => {print("hello world ")}
};

/*---------------------------------------
  main function
----------------------------------------*/
main(List<String> args) {
  print('collections');
}

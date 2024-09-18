void main(List<String> arguments) {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // final List<String?> list = List.filled(5, null);

  // list[1] = 'Rafif Ramadhani';
  // list[2] = '2241760111';

  // print(list);

  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {};
  // var names3 = <String>{};

  // names1.add('Rafif');
  // names1.add('2241760111');

  // names2.addAll({'Rama', '2241760111'});

  // print(names1);
  // print(names2);
  // print(names3);

  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // print(gifts);
  // print(nobleGases);

  // var mhs1 = Map<String, String>();
  // mhs1['nama'] = 'Rafif';
  // mhs1['nim'] = '2241';

  // var gifts = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';
  // gifts['nama'] = 'Rafif';
  // gifts['nim'] = '2241';

  // var mhs2 = Map<int, String>();
  // mhs2[1] = 'Rafif';
  // mhs2[2] = '2241';

  // var nobleGases = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';
  // nobleGases[99] = 'Rafif';
  // nobleGases[100] = '2241';

  // print(mhs1);
  // print(gifts);
  // print(mhs2);
  // print(nobleGases);

  // var list = [1, 2, 3];
  // var list1 = [4, 5];
  // var list2 = [0, ...list];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);
  // var nim = ['2241'];
  // print(nim);

  // bool promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // String login = 'Manager';
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login == 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);

  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var originalRecord = (1, 2);
  // print('Original record: $originalRecord');

  // var swappedRecord = tukar(originalRecord);
  // print('Swapped record: $swappedRecord');

  // (String, int) mahasiswa = ('Rafif Ramadhani W', 2241760111);
  // print(mahasiswa);

  // var mahasiswa2 = ('Rafif', a: 2241760111, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  // var sayHello = greet;
  // sayHello('Rafif');

//   var counter = createCounter();
//   print(counter());
//   print(counter());

  // var nama = 'Rafif';

  // void printName() {
  //   print(nama);
  // }

  // printName();

//   var (name, nim) = getInfo();
//   print('Name: $name, NIM: $nim');
  // var list = [1, 2, 3];

  // list.forEach((item) {
  //   print('Item: $item');
  // });

//   greet('Rafif', 'Wibowo');

  greet();
  greet(name: 'Rafif');
  greet(name: 'Rama', age: 20);
}

void greet({String name = 'Guest', int? age}) {
  print('Hello, $name!');
  if (age != null) {
    print('You are $age years old.');
  }
}

// void greet(String firstName, String lastName) {
//   print('Hello, $firstName $lastName!');
// }
// (String, int) getInfo() {
//   String name = 'Rafif';
//   int nim = 2241;
//   return (name, nim);
// }

// Function createCounter() {
//   int count = 0;

//   return () {
//     count++;
//     return count;
//   };
// }
// void greet(String name) {
//   print('Hello, $name!');
// }

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

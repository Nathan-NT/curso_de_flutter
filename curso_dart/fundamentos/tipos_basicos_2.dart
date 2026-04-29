/*
  - List
  - Set
  - Map
*/
main() {
  // List
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  //print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  // Map
  var telefones = {
    'João': '+55 (11) 98756-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
    //'João': '+55 (11) 77777-7777',
  };

  print(telefones is List);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  // Set
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  //print(times is Set);
  times.add('Palmeiras');
  times.add('Palmeiras');
  times.add('Palmeiras');
  //times.add(123);
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
  print(times);
}

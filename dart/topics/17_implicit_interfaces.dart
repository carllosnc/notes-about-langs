class Service {
  task() {
    return 'task by service';
  }
}

class Action implements Service {
  @override
  task() {
    return 'task by action';
  }
}

class Client {
  Service sv;

  Client({
    required this.sv,
  });

  show() {
    print(sv.task());
  }
}

void main(List<String> args) {
  var client = Client(sv: Action());

  client.show();
}

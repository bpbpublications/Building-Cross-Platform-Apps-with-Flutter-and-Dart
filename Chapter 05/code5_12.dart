main() {
  UsersList list = UsersList([User(Bio(Name("DemoName")))]);

  String firstName = list?.users?.first?.bio?.name?.firstName ?? "John";
}

class UsersList {
  List<User>? users;

  UsersList(this.users);
}

class User {
  Bio? bio;

  User(this.bio);
}

class Bio {
  Name? name;

  Bio(this.name);
}

class Name {
  String? firstName;

  Name(this.firstName);
}
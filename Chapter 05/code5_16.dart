class Contact {
  String? name;
  String? email;
  String? phoneNumber;
  String? address;

  Contact._(); // Private constructor

  factory Contact.build(BuilderFunction builder) {
    final contact = Contact._();
    builder(contact);
    return contact;
  }

  void printContactDetails() {
    print('Name: $name');
    print('Email: $email');
    print('Phone Number: $phoneNumber');
    print('Address: $address');
  }
}

typedef BuilderFunction = void Function(Contact contact);

class ContactBuilder {
  String? name;
  String? email;
  String? phoneNumber;
  String? address;

  ContactBuilder setName(String name) {
    this.name = name;
    return this;
  }

  ContactBuilder setEmail(String email) {
    this.email = email;
    return this;
  }

  ContactBuilder setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
    return this;
  }

  ContactBuilder setAddress(String address) {
    this.address = address;
    return this;
  }

  Contact build() {
    return Contact.build((contact) {
      contact.name = name;
      contact.email = email;
      contact.phoneNumber = phoneNumber;
      contact.address = address;
    });
  }
}

void main() {
  final contact = ContactBuilder()
      .setName('John Doe')
      .setEmail('john.doe@example.com')
      .setPhoneNumber('1234567890')
      .setAddress('123 Main St')
      .build();

  contact.printContactDetails();
}
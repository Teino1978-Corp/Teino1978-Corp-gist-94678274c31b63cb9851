ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, NULL);

if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusNotDetermined) {
    ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error) {
        // First time access has been granted, add the contact
    });
}
else if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
{
    // add the contact
}
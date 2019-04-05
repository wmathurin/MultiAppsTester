# MultiAppsTester

## To run the application with latest Mobile SDK (dev) do (Note: runs in Xcode 10.2)
``` shell
./install.js
open MultiAppsTester.xcworkspace
```

There are two apps:
* MultiAppsTester1: blue header
* MultiAppsTester2: red header

## Notes
The app was initially generated using:
```shell
./ios/forceios.js createwithtemplate --appname=MultiAppsTester --packagename=com.salesforce.samples --organization=Salesforce --templaterepouri=https://github.com/forcedotcom/SalesforceMobileSDK-Templates/SmartSyncExplorerSwift#dev
```

To populate the organization, the following apex was used:
```shell
// First names
String [] firstNames = new List<String>();

//Adding elements in Array
firstNames.add('Aaron');
firstNames.add('Bernard');
firstNames.add('Christie');
firstNames.add('Dorothee');
firstNames.add('Emily');
firstNames.add('Francis');
firstNames.add('George');
firstNames.add('Henri');
firstNames.add('Ivan');
firstNames.add('John');

// Last names
String [] lastNames = new List<String>();

//Adding elements in Array
lastNames.add('Abrahams');
lastNames.add('Butler');
lastNames.add('Corey');
lastNames.add('Dallas');
lastNames.add('Eliott');
lastNames.add('Faber');
lastNames.add('Grahams');
lastNames.add('Holly');
lastNames.add('Ivanovitch');
lastNames.add('Jacobsen');

for (Integer i =0; i<10; i++) {
    for (Integer j=0; j<10; j++) {
        List<Contact> contactList = new List<Contact>();
        for (Integer k=900; k<=999; k++) {
            Contact c = new Contact(FirstName=firstNames[i] + k, LastName=lastNames[j] + k);
            contactList.add(c);
        }
        insert contactList;
    }
}
```

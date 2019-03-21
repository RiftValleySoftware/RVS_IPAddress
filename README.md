![Project Icon](icon.png)

Swift IP Address Handler
=

Introduction
-

This struct/protocol is a basic standalone [struct](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html) and [String](https://developer.apple.com/documentation/swift/string) [extension](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html) that makes handling [IPv4](https://en.wikipedia.org/wiki/IPv4) and [IPv6](https://en.wikipedia.org/wiki/IPv6) [IP addresses](https://en.wikipedia.org/wiki/Internet_Protocol) quite simple.

Its principal use is to take a string that was generated by something like a text entry, and establish a proper IP address from that string. It's a smart parser.

What Problem Does This Solve?
-

This was designed to allow us to simply represent IP addresses properly. This was mainly due to the complex nature of [IPv6 addressing; with its "shortcut" syntax, representing contiguous runs of zeroes](https://en.wikipedia.org/wiki/IPv6#Address_representation).

This class reads these, and will also give you properly formatted (and shortened) strings.

Requirements
-

It should work fine for osx, tvOS and iOS. It only depends on the Swift Foundation library.

This requires Swift Version 4.0 or above (tested with 4.2).

WHERE TO GET
=
[Here is the GitHub Repo for This Project.](https://github.com/RiftValleySoftware/RVS_IPAddress/)

[Here is the online documentation page for this project.](https://riftvalleysoftware.com/work/open-source-projects/#RVS_IPAddress)

USAGE
=

Include the Source in Your Project
-

This is a simple source file; not a module.

To use this, simply add the [RVS_IPAddress/RVS_IPAddress.swift](https://github.com/RiftValleySoftware/RVS_IPAddress/blob/master/RVS_IPAddress/RVS_IPAddress.swift) file to your project; copying it wherever you want.

All the rest of the stuff is for testing, validating and sharing.

Start With A String
-

The struct can be instantiated by supplying a String, with a valid representation of either an IPv4 IP address, or an IPv6 IP address. The struct will parse the String, and will store an internal [Array](https://developer.apple.com/documentation/swift/array) of [Int](https://developer.apple.com/documentation/swift/int)s, representing that IP address. It will then be able to return the IP address in whatever format is required.

It validates the correctness of the address before storing it, so you know that the address is always in a valid form.

It does not verify that the address actually leads anywhere. It merely ensures that it is a correctly-formed IP address.

You can submit any string, and the factory method will ensure that an instance of the correct IP version handler is generated.

Example
-
    if let testIP = RVS_IPAddressExtractIPAddress("1.2.3.4") {
        print("This should be an IPv4 Address: \(String(describing: testIP))")
    }

    if let testIP = RVS_IPAddressExtractIPAddress("1:2:3:4:5:6:7:8") {
        print("This should be an IPv6 Address: \(String(describing: testIP))")
    }

You can also add TCP ports to the address:

    if let testIP = RVS_IPAddressExtractIPAddress("1.2.3.4:5") {
        print("This should be an IPv4 Address: \(String(describing: testIP))")
    }

    if let testIP = RVS_IPAddressExtractIPAddress("[1:2:3:4:5:6:7:8]:9") {
        print("This should be an IPv6 Address: \(String(describing: testIP))")
    }

The resulting addresses can be accessed as Arrays of Int, or as String, either with or without the TCP port.

DEPENDENCIES
=

There are no dependencies to use RVS_IPAddress in your project. In order to test it and run it in the module project, you should use [CocoaPods](https://cocoapods.org) to install [SwiftLint](https://cocoapods.org/pods/SwiftLint), although that is not required. It's [just good practice](https://littlegreenviper.com/series/swiftwater/swiftlint/).

LICENSE
=
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[The Great Rift Valley Software Company: https://riftvalleysoftware.com](https://riftvalleysoftware.com)


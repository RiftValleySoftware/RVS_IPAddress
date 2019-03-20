Swift IP Address Handling Class
=

Introduction
-

This class is a basic standalone [class](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html) and [String](https://developer.apple.com/documentation/swift/string) [extension](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html) that makes handling [IPv4](https://en.wikipedia.org/wiki/IPv4) and [IPv6](https://en.wikipedia.org/wiki/IPv6) [IP addresses](https://en.wikipedia.org/wiki/Internet_Protocol) quite simple.

Start With A String
-

The class can be instantiated by supplying a String, with a valid representation of either an IPv4 IP address, or an IPv6 IP address. The class will parse the String, and will store an internal [Array](https://developer.apple.com/documentation/swift/array) of [Int](https://developer.apple.com/documentation/swift/int)s, representing that IP address. It will then be able to return the IP address in whatever format is required.

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


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

You can subit any string, and the factory method will ensure that an instance of the correct IP version handler is generated.

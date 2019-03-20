    if let testIP = RVS_IPAddressExtractIPAddress("1.2.3.4") {
        let ipAddressString = testIP.addressAndPort
        print("This should be an IPv4 Address: \(ipAddressString)")
    }
    
    if let testIP = RVS_IPAddressExtractIPAddress("1:2:3:4:5:6:7:8") {
        let ipAddressString = testIP.addressAndPort
        print("This should be an IPv6 Address: \(ipAddressString)")
    }

    if let testIP = RVS_IPAddressExtractIPAddress("1.2.3.4:5") {
        let ipAddressString = testIP.addressAndPort
        print("This should be an IPv4 Address (and port): \(ipAddressString)")
    }
    
    if let testIP = RVS_IPAddressExtractIPAddress("[1:2:3:4:5:6:7:8]:9") {
        let ipAddressString = testIP.addressAndPort
        print("This should be an IPv6 Address (and port): \(ipAddressString)")
    }

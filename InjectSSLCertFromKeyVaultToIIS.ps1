#!/bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2015 Microsoft Azure
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

$cert = "A48145441F23CF6E1826E0F8D9D5DE93C1F732F1"
$guid = [guid]::NewGuid().ToString("B")
netsh http add sslcert hostnameport="localhost:443" certhash=$cert certstorename=MyCertificateStore appid="$guid"
netsh http add sslcert hostnameport="localhost:444" certhash=$cert certstorename=MyCertificateStore appid="$guid"
netsh http add sslcert hostnameport="localhost:1001" certhash=$cert certstorename=MyCertificateStore appid="$guid"
netsh http add sslcert hostnameport="localhost:1002" certhash=$cert certstorename=MyCertificateStore appid="$guid"
netsh http add sslcert hostnameport="localhost:1003" certhash=$cert certstorename=MyCertificateStore appid="$guid"
netsh http add sslcert hostnameport="localhost:1004" certhash=$cert certstorename=MyCertificateStore appid="$guid"


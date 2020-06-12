Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2276A1F740F
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 08:47:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjdSs-0003s0-H7; Fri, 12 Jun 2020 06:46:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjdSq-0003rs-LE
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 06:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a8IZkgCdPGKELd8jSVqn2gDjekc8/OZIEIa/22imBjo=; b=H+ubcSCNxC0ZyaCEd2SSj/koSo
 fPUv281AwYRRK1iHt+i6kt9/DeXMXlhi0xUFeWTOCZ9HNjrOfyYwlxlR1x4bdQGpbj4nGvnsgcEmP
 miw0U2BGucLkG1rqs/2F90MZKJQctGSkHX1uvg8tjh/zn7Of7M54gqanNoqt3GV6O5WM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a8IZkgCdPGKELd8jSVqn2gDjekc8/OZIEIa/22imBjo=; b=LxCSiMxs2zLsTXeRVgGgx9hts4
 0op/+8PRq2FU7nO4ZPT124waeP2jdwlfhgFcCCZaSf/0k0+3cEtZKCT8OYsl5M0+X5EZpewWs0jqL
 1GBuefLPbJqk31ZCW2W1okyhZMKcYUsXTRB8NTfTKgzhHC5Yd2lqPtY37s8F1sNBk8R4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjdSo-00GRIx-5v
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 06:46:56 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id BDA7BC009; Fri, 12 Jun 2020 08:46:47 +0200 (CEST)
Date: Fri, 12 Jun 2020 08:46:32 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <20200612064632.GA19461@nautica>
References: <20200611014855.60550-1-wanghai38@huawei.com>
 <20200611145055.GA28945@nautica>
 <7bed531c-0ea5-b5f8-eaf8-4feb9ccf1b31@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bed531c-0ea5-b5f8-eaf8-4feb9ccf1b31@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjdSo-00GRIx-5v
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_fd: Fix concurrency del of
 req_list in p9_fd_cancelled/p9_read_work
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

d2FuZ2hhaSAoTSkgd3JvdGUgb24gRnJpLCBKdW4gMTIsIDIwMjA6Cj4gWW91IGFyZSByaWdodCwg
SSBnb3QgYSBzeXprYWxsZXIgYnVnLgo+IAo+ICJwOV9yZWFkX3dvcmsrMHg3YzMvMHhkOTAiIHBv
aW50cyB0byBsaXN0X2RlbCgmbS0+cnJlcS0+cmVxX2xpc3QpOwo+IAo+IFsgICA2Mi43MzM1OThd
IGthc2FuOiBDT05GSUdfS0FTQU5fSU5MSU5FIGVuYWJsZWQKPiBbICAgNjIuNzM0NDg0XSBrYXNh
bjogR1BGIGNvdWxkIGJlIGNhdXNlZCBieSBOVUxMLXB0ciBkZXJlZiBvciB1c2VyIG1lbW9yeSBh
Y2Nlc3MKPiBbICAgNjIuNzM1NjcwXSBnZW5lcmFsIHByb3RlY3Rpb24gZmF1bHQ6IDAwMDAgWyMx
XSBTTVAgS0FTQU4gUFRJCj4gWyAgIDYyLjczNjU3N10gQ1BVOiAzIFBJRDogODIgQ29tbToga3dv
cmtlci8zOjEgTm90IHRhaW50ZWQgNC4xOS4xMjQrICMyCj4gWyAgIDYyLjczNzU4Ml0gSGFyZHdh
cmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgMS4x
MC4yLTF1YnVudHUxIDA0LzAxLzIwMTQKPiBbICAgNjIuNzM4OTg4XSBXb3JrcXVldWU6IGV2ZW50
cyBwOV9yZWFkX3dvcmsKPiBbICAgNjIuNzM5NjQyXSBSSVA6IDAwMTA6cDlfcmVhZF93b3JrKzB4
N2MzLzB4ZDkwCj4gWyAgIDYyLjc0MDM0OF0gQ29kZTogNDggYzEgZTkgMDMgODAgM2MgMDEgMDAg
MGYgODUgY2IgMDUgMDAgMDAgNDggOGQgN2EgMDggNDggYjkgMDAgMDAgMDAgMDAgMDAgZmMgZmYg
ZGYgNDkgOGIgODcgYjggMDAgMDAgMDAgNDggODkgZmUgNDggYzEgZWUgMDMgPDgwPiAzYyAwZSAw
MCAwZiA4NSA4OSAwNSAwMCAwMCA0OCA4OSBjNiA0OCBiOSAwMCAwMCAwMCAwMCAwMCBmYyBmZgo+
IFsgICA2Mi43NDMyMzZdIFJTUDogMDAxODpmZmZmODg4M2VjZTE3Y2EwIEVGTEFHUzogMDAwMTBh
MDYKPiBbICAgNjIuNzQ0MDU5XSBSQVg6IGRlYWQwMDAwMDAwMDAyMDAgUkJYOiBmZmZmODg4M2Q0
NTY2NmIwIFJDWDogZGZmZmZjMDAwMDAwMDAwMAo+IFsgICA2Mi43NDUxNzNdIFJEWDogZGVhZDAw
MDAwMDAwMDEwMCBSU0k6IDFiZDVhMDAwMDAwMDAwMjEgUkRJOiBkZWFkMDAwMDAwMDAwMTA4Cj4g
WyAgIDYyLjc0NjI3OV0gUkJQOiBmZmZmODg4M2Q0NTY2NTkwIFIwODogZmZmZmVkMTA3YThhY2Yz
MSBSMDk6IGZmZmZlZDEwN2E4YWNmMzEKPiBbICAgNjIuNzQ3Mzk4XSBSMTA6IDAwMDAwMDAwMDAw
MDAwMDEgUjExOiBmZmZmZWQxMDdhOGFjZjMwIFIxMjogMWZmZmYxMTA3ZDljMmY5Ygo+IFsgICA2
Mi43NDg1MDVdIFIxMzogZmZmZjg4ODNkNDU2NjVkMCBSMTQ6IGZmZmY4ODgzZDQ1NjY2MDggUjE1
OiBmZmZmODg4M2UxZjFjMDAwCj4gWyAgIDYyLjc0OTYxNV0gRlM6ICAwMDAwMDAwMDAwMDAwMDAw
KDAwMDApIEdTOmZmZmY4ODgzZWYxODAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+
IFsgICA2Mi43NTA4ODFdIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAw
ODAwNTAwMzMKPiBbICAgNjIuNzUxNzg0XSBDUjI6IDAwMDAwMDAwMDAwMDAwMDAgQ1IzOiAwMDAw
MDAwMDljNjIyMDAzIENSNDogMDAwMDAwMDAwMDc2MDZlMAo+IFsgICA2Mi43NTI4OThdIERSMDog
MDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAwMDAw
MDAwCj4gWyAgIDYyLjc1NDAxMV0gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAwMDAwMDBm
ZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKPiBbICAgNjIuNzU1MTI2XSBQS1JVOiA1NTU1
NTU1NAo+IFsgICA2Mi43NTU1NjFdIENhbGwgVHJhY2U6Cj4gWyAgIDYyLjc1NTk2M10gID8gcDlf
d3JpdGVfd29yaysweGEwMC8weGEwMAo+IFsgICA2Mi43NTY1OTJdICBwcm9jZXNzX29uZV93b3Jr
KzB4YWU0LzB4MWIyMAo+IFsgICA2Mi43NTcyNTJdICA/IGFwcGx5X3dxYXR0cnNfY29tbWl0KzB4
M2UwLzB4M2UwCj4gWyAgIDYyLjc1Nzk4NV0gIHdvcmtlcl90aHJlYWQrMHg4Yy8weGU4MAo+IFsg
ICA2Mi43NTg2MDBdICA/IF9fa3RocmVhZF9wYXJrbWUrMHhlOS8weDE5MAo+IFsgICA2Mi43NTky
NTRdICA/IHByb2Nlc3Nfb25lX3dvcmsrMHgxYjIwLzB4MWIyMAo+IFsgICA2Mi43NTk5NTBdICBr
dGhyZWFkKzB4MzQxLzB4NDEwCj4gWyAgIDYyLjc2MDQ3OV0gID8ga3RocmVhZF9jcmVhdGVfd29y
a2VyX29uX2NwdSsweGYwLzB4ZjAKPiBbICAgNjIuNzYxMjk2XSAgcmV0X2Zyb21fZm9yaysweDNh
LzB4NTAKPiBbICAgNjIuNzYxODc0XSBNb2R1bGVzIGxpbmtlZCBpbjoKPiBbICAgNjIuNzYyMzc4
XSBEdW1waW5nIGZ0cmFjZSBidWZmZXI6Cj4gWyAgIDYyLjc2Mjk0Ml0gICAgKGZ0cmFjZSBidWZm
ZXIgZW1wdHkpCj4gWyAgIDYyLjc2MzU0N10gLS0tWyBlbmQgdHJhY2UgNjk2NzI4MTY2MTM5NDdh
MyBdLS0tCgpUaGlzIGxvb2tzIGxpa2U6Cmh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1
Zz9pZD01ZGY0Zjg1ZDc2NGVlODk4NjNkMDI5NGI0ZTBjODdlZjJmZDJjNjI0CkknbSBub3Qgc3Vy
ZSBob3cgYWN0aXZlIHRoaXMgc3RpbGwgaXMgYnV0IHBsZWFzZSBhbHNvIGFkZCB0aGlzClJlcG9y
dGVkLWJ5IHRhZzoKUmVwb3J0ZWQtYnk6IHN5emJvdCs3N2EyNWFjZmEwMzgyZTA2YWIyM0BzeXpr
YWxsZXIuYXBwc3BvdG1haWwuY29tCgooY2FuIGtlZXAgYm90aCkKCgo+IFllc++8jEluIHRoaXMg
Y2FzZSzCoCBhbGwgZnVydGhlciA5cCBtZXNzYWdlcyB3aWxsIG5vdCBiZSByZWFkLgo+ID5wOV9y
ZWFkX3dvcmsgcHJvYmFibHkgc2hvdWxkIGhhbmRsZSBSRVFfU1RBVFVTX0ZMU0hEIGluIGEgc3Bl
Y2lhbCBjYXNlCj4gPnRoYXQganVzdCB0aHJvd3MgdGhlIG1lc3NhZ2UgYXdheSB3aXRob3V0IGVy
cm9yIGFzIHdlbGwuCj4gCj4gQ2FuIGl0IGJlIHNvbHZlZCBsaWtlIHRoaXM/Cj4gCj4gLS0tIGEv
bmV0LzlwL3RyYW5zX2ZkLmMKPiArKysgYi9uZXQvOXAvdHJhbnNfZmQuYwo+IEBAIC0zNjIsNyAr
MzYyLDcgQEAgc3RhdGljIHZvaWQgcDlfcmVhZF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29y
aykKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG0tPnJyZXEtPnN0YXR1cyA9
PSBSRVFfU1RBVFVTX1NFTlQpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxpc3RfZGVsKCZtLT5ycmVxLT5yZXFfbGlzdCk7Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwOV9jbGllbnRfY2IobS0+Y2xpZW50
LCBtLT5ycmVxLCBSRVFfU1RBVFVTX1JDVkQpOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIH0gZWxzZSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIGlmICht
LT5ycmVxLT5zdGF0dXMgIT0gUkVRX1NUQVRVU19GTFNIRCkgewo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2soJm0tPmNsaWVudC0+bG9j
ayk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwOV9k
ZWJ1ZyhQOV9ERUJVR19FUlJPUiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJSZXF1ZXN0IHRhZyAlZCBlcnJvcmVkIG91
dCB3aGlsZQo+IHdlIHdlcmUgcmVhZGluZyB0aGUgcmVwbHlcbiIsCgpZZXMgdGhhdCBpcyBwcm9i
YWJseSBjb3JyZWN0LgpQbGVhc2UgYWRkIGEgY29tbWVudCBhYm92ZSBzYXlpbmcgd2UgaWdub3Jl
IHJlcGxpZXMgYXNzb2NpYXRlZCB3aXRoIGEKY2FuY2VsbGVkIHJlcXVlc3QuCgo+IFRoaXMgcGF0
Y2ggImFmZDhkNjU0MTEiIGp1c3QgbW92ZWQgbGlzdF9kZWwgaW50byBjYW5jZWxsZWQgb3BzLiBJ
dAo+IGlzIG5vdCBhY3R1YWxseSB0aGUgaW5pdGlhbCBwYXRjaCB0aGF0IGNhdXNlZCB0aGUgYnVn
Cj4gCj4gSW4gNjBmZjc3OWM0YWJiICgiOXA6IGNsaWVudDogcmVtb3ZlIHVudXNlZCBjb2RlIGFu
ZCBhbnkgcmVmZXJlbmNlCj4gdG8gImNhbmNlbGxlZCIgZnVuY3Rpb24iKQo+IAo+IEl0IG1vdmVk
IHNwaW5fbG9jayB1bmRlciAiaWYgKG9sZHJlcS0+c3RhdHVzID09IFJFUV9TVEFUVVNfRkxTSCki
IC4KPiAKPiBBZnRlciAiaWYgKG9sZHJlcS0+c3RhdHVzID09IFJFUV9TVEFUVVNfRkxTSCkiLCBv
bGRyZXEgbWF5IGJlCj4gY2hhbmdlZCBieSBvdGhlciB0aHJlYWQuCgpPaywgdGhhbmsgeW91IGZv
ciBleHBsYWluaW5nOyBJIGFncmVlIG5vdy4KCi0tIApEb21pbmlxdWUKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

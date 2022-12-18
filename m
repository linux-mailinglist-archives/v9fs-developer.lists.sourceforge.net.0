Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A757B65048D
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 20:53:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6zj2-0008UW-Cq;
	Sun, 18 Dec 2022 19:53:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6zir-0008UN-4v
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WBYzTifmHshHLbzV2OaE8+BkNgSKGYp9RT7BG1PKOmE=; b=H/f2GzrE/K6i4GDgvkFOzo4Ean
 oGkwvOBBVdwM6+tKH0Dce4oF98+SlGF7afdX5oRnJA3WYlH7/RhVRgqTZKUR96J2RpwxHHycyOcQc
 7qUTCmYGnsqxJSoKTXQClxvj3SRI5IY/85wEU0Z6EZVtOmuEGdS/vIXIs78GooLEtfyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WBYzTifmHshHLbzV2OaE8+BkNgSKGYp9RT7BG1PKOmE=; b=MpVbDCOOIFGTXvISrCiodMJqKy
 +42pOfqUvQgWnT2RVPjKxBC3pXPLzH+TNp4BpO//Tgrv+zHu1GRIihMEwENYlADzO/PQaxccJv1Jc
 4sTnm7cMBaUlHeaJPIeHXxHxK31PbQ67mecSqspSq31z0NqbrzUmDy5F6LYEtm9o7Wyc=;
Received: from ms11p00im-qufo17291401.me.com ([17.58.38.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6ziq-0042uD-Ih for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671393193;
 bh=WBYzTifmHshHLbzV2OaE8+BkNgSKGYp9RT7BG1PKOmE=;
 h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
 b=wPyWipnumGLH0TdfZyv2p+GlV/DMHWIbnPcYEusmayf/RcwciuK1qjzO9NCTFMzIt
 k5Hy/vDDOdNH0/P/ffYQ0M4l7M7SWcDt4Z50bjts4IlITijKmwePhkuhB/Un9DqNJi
 6cbRGAT+9CiHwbjEkH+Fl0L1nVWXDpJsWRPPC8yAiiOhus558rL2HuW3+5b+gWurXO
 gjQLd5boX+H4vgVesRve2CeF/F4a9Qv5LMLQfrP/uK2S0hWZdy14SlCyDlFwwF1n5X
 NfGkHBFuwvXZ5EhuvUDPiaVL+IYnVq5iwWsXn29E7/aIeFh//eD7kGfNIONLPWOhLw
 5QCBDWtk+TsTg==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291401.me.com (Postfix) with ESMTPSA id D5C998E041F;
 Sun, 18 Dec 2022 19:53:12 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
In-Reply-To: <Y59uIwoECw0yHhf1@codewreck.org>
Date: Sun, 18 Dec 2022 13:52:55 -0600
Message-Id: <7D65A826-F163-4200-8997-5DE6E79223B5@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
 <4530979.Ltmge6kleC@silver>
 <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
 <51FD8D16-4070-4DCF-AEB5-11640A82762E@icloud.com>
 <CAP6exY+BF+1fjjUKX20vvbTZXiZ2gxUN3zc8+ZaHTY-aX6fRFQ@mail.gmail.com>
 <Y59uIwoECw0yHhf1@codewreck.org>
To: asmadeus@codewreck.org
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Proofpoint-GUID: nZflBMZZIeodgn3tfr4Yyy-5igF09afa
X-Proofpoint-ORIG-GUID: nZflBMZZIeodgn3tfr4Yyy-5igF09afa
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.816,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-18=5F01:2022-01-14=5F01,2022-01-18=5F01,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 bulkscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180189
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Oh crap - I’m such an idiot - yeah IOHDRSZ was what I meant
    to use in the first place. Although I am left wondering why IOHDRSZ is 24
    - It does seem to be one extra byte, but I won’t begrudge luch [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.43 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [evanhensbergen[at]icloud.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6ziq-0042uD-Ih
Subject: Re: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account
 for p9 header
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
From: evanhensbergen--- via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: evanhensbergen@icloud.com
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Ron Minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T2ggY3JhcCAtIEnigJltIHN1Y2ggYW4gaWRpb3QgLSB5ZWFoIElPSERSU1ogd2FzIHdoYXQgSSBt
ZWFudCB0byB1c2UgaW4gdGhlIGZpcnN0IHBsYWNlLiAgQWx0aG91Z2ggSSBhbSBsZWZ0IHdvbmRl
cmluZyB3aHkgSU9IRFJTWiBpcyAyNCAtIEl0IGRvZXMgc2VlbSB0byBiZSBvbmUgZXh0cmEgYnl0
ZSwgYnV0IEkgd29u4oCZdCBiZWdydWRnZSBsdWNobyBmb3IgZ29pbmcgZm9yIGFuIGV2ZW4gbnVt
YmVyLgoKSeKAmWxsIGZpeCB0aGlzIHVwIGJlZm9yZSByZS1yZWxlYXNpbmcgdGhlIHBhdGNoc2V0
LiAgSeKAmW0ganVzdCBmaW5pc2hpbmcgYnJlYWtpbmcgdXAgbXkgd3JpdGUgYmFjayBmaXhlcyB0
byBtYWtlIHRoZW0gYSBiaXQgbW9yZSBjb25zdW1hYmxlIGFzIGEgcGF0Y2guCgogICAgICAgICAg
LWVyaWMKCgoKPiBPbiBEZWMgMTgsIDIwMjIsIGF0IDE6NDYgUE0sIGFzbWFkZXVzQGNvZGV3cmVj
ay5vcmcgd3JvdGU6Cj4gCj4gcm9uIG1pbm5pY2ggd3JvdGUgb24gU3VuLCBEZWMgMTgsIDIwMjIg
YXQgMDg6NTA6MThBTSAtMDgwMDoKPj4gaXQncyBmaW5lLiB0YmgsIEkgZG91YnQgdGhlIGZhY3Qg
dGhhdCB5b3Ugd2VyZSBmZXRjaGluZyAzMSB2cyAzMiBwYWdlcwo+PiBtYXR0ZXJlZCBhcyBtdWNo
IGFzIHRoZSBmYWN0IHRoYXQgeW91IHdlcmVuJ3QgZmV0Y2hpbmcgKjRrIGF0IGEgdGltZSogOi0p
Cj4gCj4gWWVzLCBJIHRoaW5rIHdlIGNhbiBqdXN0IGJsYW5rZXQgdGhpcyBhcyArNGsgYW5kIGl0
IHdvdWxkbid0IGNoYW5nZQo+IG11Y2g7IEkndmUgYmVlbiB1c2luZyAxTUIrNGsgZm9yIHJkbWEg
aW4gcHJldmlvdXMgdGVzdHMuLi4KPiAKPiBXZSBzdGlsbCBhcmVuJ3QgZG9pbmcgdGhpbmdzIDRr
IGF0IGEgdGltZSB3aXRoIHRoaXMgdGhvdWdoLCBJJ2Qgc3VnZ2VzdAo+IHJvdW5kaW5nIGRvd24g
dGhlIHJzaXplID4gbXNpemUgY2hlY2sgaW4gcDlfY2xpZW50X3JlYWRfb25jZSgpOgo+IAo+ICAg
ICAgICBpZiAoIXJzaXplIHx8IHJzaXplID4gY2xudC0+bXNpemUgLSBQOV9JT0hEUlNaKQo+ICAg
ICAgICAgICAgICAgIHJzaXplID0gY2xudC0+bXNpemUgLSBQOV9JT0hEUlNaOwo+IAo+IHRvIHNv
bWV0aGluZyB0aGF0J3MgYmV0dGVyIGFsaWduZWQ7IGZvciBzb21lIHJlYXNvbiBJIHRob3VnaHQg
d2UgaGFkCj4gdGhhdCBhbHJlYWR5LiAgLiAuIGJ1dCB0aGlua2luZyBhZ2FpbiB0aGUgc2l6ZXMg
YXJlIHByb2JhYmx5IGRyaXZlbiBieQo+IHRoZSBjYWNoZSBhbmQgd2lsbCBiZSA0ayBtdWx0aXBs
ZXMgYWxyZWFkeT8KPiAKPj4+IC0jZGVmaW5lIERFRkFVTFRfTVNJWkUgKDEyOCAqIDEwMjQpCj4+
PiArLyogREVGQVVMVCBNU0laRSA9IDMyIHBhZ2VzIHdvcnRoIG9mIHBheWxvYWQgKyBQOV9IRFJT
WiArCj4+PiArICogcm9vbSBmb3Igd3JpdGUgKDE2IGV4dHJhKSBvciByZWFkICgxMSBleHRyYSkg
b3BlcmFuZHMuCj4+PiArICovCj4+PiArCj4+PiArI2RlZmluZSBERUZBVUxUX01TSVpFICgoMTI4
ICogMTAyNCkgKyBQOV9IRFJTWiArIDE2KQo+IAo+IFRoZXJlJ3MgUDlfSU9IRFJTWiBmb3IgdGhh
dCA7KQo+IAo+IEJ1dCBJIGd1ZXNzIHdpdGggdGhlIGNvbW1lbnQgaXQgZG9lc24ndCBtYXR0ZXIg
bXVjaCBlaXRoZXIgd2F5Lgo+IAo+IC0tIAo+IERvbWluaXF1ZQoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

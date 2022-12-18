Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE85650494
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 20:59:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6zp6-0007Gy-RG;
	Sun, 18 Dec 2022 19:59:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6zp5-0007Gm-NR
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0dBBuqoCd8U0+o6FyXAbsKR0f14ajtRcyhXIVK95Pu4=; b=Iw3ai1KD2rZ+XuSxcq373aDO5g
 Pc0ims9LPZlC1jy6VtvRWitDnhY+4U2XxEskd33zJaEBt00KcC6hSZXiHI1NW/AyoAASyqCuNXzwa
 LtKNThdVzRcf7YH753usZ6xlDVgRA2l1wQgibw5ESRuhUmMGz/1nZMl19YqLoQo43gBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0dBBuqoCd8U0+o6FyXAbsKR0f14ajtRcyhXIVK95Pu4=; b=i+GTGzMU3YXhL5VXQ5EyU2+e3G
 /AcWM/eGfGpKKZz0x5GGdCBe0lTVyvJmG2VN0tmyXBJHDG+1LRTO6T1ysDpjN0JyBd3DS81WJrn4W
 mwHelrDB4q6DUAjPKwmzouGbs+XPBsM22GrcD811K8H4WyNhAcdU48tcfFrAUQW+FEHs=;
Received: from ms11p00im-qufo17291301.me.com ([17.58.38.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6zp4-0043DS-OY for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 19:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671393581;
 bh=0dBBuqoCd8U0+o6FyXAbsKR0f14ajtRcyhXIVK95Pu4=;
 h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
 b=QZKLWX0ki2k5IG9FzR7f0csE9iFp2q0JhoxLYCp85k9lsZQ7l2FsXq5G+ZLULDrxP
 zK7AXnwQo8LcOHc36QqWjnw8WxOtQ/WrKBOOFhI1gXXpYl/5ngRUg8mOZ9zMzAfwmE
 4xWj64UGKQ2pY7Ve0Sqzh3zQL2pGna6oHPqUt8xk/ZbYoYLI1tWNop1K4KoCioJRFD
 i4JBDfiEIUBQw+D5VZsYFJn0DfpcxNIYhxgXVgJvihQqIfJN3OTklUNn0G2nqX1Qpa
 0kFB4Zz9IR1qB93eV/YbYWMP/OvyP+1BQ1dIDOAxw9EAlMMUpXvx83xvI57PE04tKo
 U7fTY9MWWFNGg==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291301.me.com (Postfix) with ESMTPSA id 8C3339405EC;
 Sun, 18 Dec 2022 19:59:40 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
In-Reply-To: <Y59uz0aeuoLMU9W8@codewreck.org>
Date: Sun, 18 Dec 2022 13:59:29 -0600
Message-Id: <B272E6A0-C349-4B23-BE6F-7CBA8D6C4B6B@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
 <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
 <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
 <Y59uz0aeuoLMU9W8@codewreck.org>
To: asmadeus@codewreck.org
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Proofpoint-GUID: PBcmYKpuFmrQfzchqF5JpqRudNZCsgEl
X-Proofpoint-ORIG-GUID: PBcmYKpuFmrQfzchqF5JpqRudNZCsgEl
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2020-02-14=5F11:2020-02-14=5F02,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180190
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Can you send me your xfstest invocation formulas and I’ll
    add them to my regression tests. Yeah, I was torn on this merge window or
    next - the more complicated patches here are really fixes for things that
    are kinda broken in the code — so they might even be -rc candidate patches.
    Most of [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [evanhensbergen[at]icloud.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.42 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1p6zp4-0043DS-OY
Subject: Re: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Ron Minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Q2FuIHlvdSBzZW5kIG1lIHlvdXIgeGZzdGVzdCBpbnZvY2F0aW9uIGZvcm11bGFzIGFuZCBJ4oCZ
bGwgYWRkIHRoZW0gdG8gbXkgcmVncmVzc2lvbiB0ZXN0cy4KClllYWgsIEkgd2FzIHRvcm4gb24g
dGhpcyBtZXJnZSB3aW5kb3cgb3IgbmV4dCAtIHRoZSBtb3JlIGNvbXBsaWNhdGVkIHBhdGNoZXMg
aGVyZSBhcmUgcmVhbGx5IGZpeGVzIGZvciB0aGluZ3MgdGhhdCBhcmUga2luZGEgYnJva2VuIGlu
IHRoZSBjb2RlIOKAlCBzbyB0aGV5IG1pZ2h0IGV2ZW4gYmUgLXJjIGNhbmRpZGF0ZSBwYXRjaGVz
LiAgTW9zdCBvZiB0aGVtIG9ubHkgZWZmZWN0IGNhY2hlIG1vZGUsIHdoaWNoIGlzbuKAmXQgZGVm
YXVsdCDigJQgc28gaXRzIHByb2JhYmx5IGxvdy1yaXNrLCBidXQgSSBrbm93IHRoZSBwcmVmZXJl
bmNlIGlzIGZvciB0aGluZ3MgdG8gaGF2ZSBoYWQgbG9uZ2VyIGluIHRoZSByZXZpZXcgY3ljbGUg
dG8gbWFyaW5hdGUuCgpUaGUgc2ltcGxlIG9uZXMgcHJvYmFibHkgY291bGQgZ28gaW50byB0aGlz
IG1lcmdlIHdpbmRvdywgYnV0IEkgbGVhdmUgaXQgdXAgdG8geW91IHNpbmNlIHlvdeKAmXZlIGJl
ZW4gY2FycnlpbmcgdGhlIG1haW50YWluZXIgbWFudGxlIOKAlCBhbmQgbXkgUEdQIGtleSBhbmQg
a2VybmVsLm9yZyByZXBvcyBuZWVkIHRvIGJlIHJlLWVzdGFibGlzaGVkIGluIHRoZSB3ZWIgb2Yg
dHJ1c3QsIGJ1dCBtYWlubHkgYmVjYXVzZSB5b3XigJlyZSBhY3RpdmUgbWFpbnRhaW5lciBoZXJl
LgoKSeKAmWxsIGtlZXAgY3J1bmNoaW5nIGFuZCBzZW5kIG91dCB0aGUgbmV3IHBhdGNoIHNldCBi
eSB0aGUgZW5kIG9mIHRoZSBkYXkgcmVnYXJkbGVzcy4KCiAgICAgLWVyaWMKCgoKPiBPbiBEZWMg
MTgsIDIwMjIsIGF0IDE6NDkgUE0sIGFzbWFkZXVzQGNvZGV3cmVjay5vcmcgd3JvdGU6Cj4gCj4g
ZXZhbmhlbnNiZXJnZW5AaWNsb3VkLmNvbSB3cm90ZSBvbiBTdW4sIERlYyAxOCwgMjAyMiBhdCAx
MDozMjo1N0FNIC0wNjAwOgo+PiBPa2F5LCByZXByb2R1Y2VkIHRoZSBlcnJvciB5b3Ugc3VzcGVj
dGVkIG9uIHRoZSBwYXRjaC4gIEl04oCZcyBraW5kIG9mIGEKPj4gcGFpbiBiZWNhdXNlIHRoZSBj
b2RlIGFzIGlzIHdvbuKAmXQgd29yayB1bmxlc3MgSeKAmW0gcnVubmluZyB0aGUgZmlsZQo+PiBz
ZXJ2ZXIgYXMgcm9vdCBhbmQgY2hhbmdpbmcgYWxsIHRoZSBzZXJ2ZXJzIHRvIGlnbm9yZSByZXF1
ZXN0cyBzZWVtcwo+PiBvZmYuICBJdCBhbHNvIG9jY3VycmVkIHRvIG1lIHRoYXQgaGF2aW5nIGEg
cm9vdCBSL1cgd3JpdGUgYmFjayBjb3VsZAo+PiBiZSBhIHNlY3VyaXR5IHZ1bG5lcmFiaWxpdHku
ICBJIHRyaWVkIHBhdGNoaW5nIGl0IHdpdGgKPj4gZGZsdHVpZC9kZmx0Z2lkLCBidXQgb25seSBy
b290IGNhbiBvdmVycmlkZSB0aGUgbW9kZXMgc28gdGhhdCBkb2VzbuKAmXQKPj4gd29yay4KPj4g
Cj4+IFNpbmNlIEkgaGF2ZSB0aGUgYmV0dGVyIHdyaXRlIGJhY2sgZml4IHRlc3Rpbmcgb2theSwg
d2UgY291bGQgZHJvcAo+PiB0aGlzIHBhdGNoIGZyb20gdGhlIHNlcmllcyBhbmQgSSBjb3VsZCBq
dXN0IGZvY3VzIG9uIGdldHRpbmcgdGhhdAo+PiBwYXRjaCByZWFkeSAod2hpY2ggSSBzaG91bGQg
YmUgYWJsZSB0byBkbyB0b2RheSkuICBJdCBkb2VzIHNlZW0gdG8KPj4gd29yayB3aXRoIHRoZSBw
eXRob24gdGVzdCBjYXNlIHlvdSBnYXZlLCBzbyBpdCBkb2VzbuKAmXQgaGF2ZSB0aGUgc2FtZQo+
PiBpc3N1ZXMuCj4+IAo+PiBUaG91Z2h0cz8KPiAKPiBUaGF0IHNvdW5kcyBnb29kIHRvIG1lLCB0
aGFua3MhCj4gCj4gSSBoYXZlbid0IGhhZCB0aW1lIHRvIGxvb2sgYXQgdGhlIG90aGVyIHBhdGNo
ZXMgaW4gZGV0YWlsIGJ1dCB0aGV5IGxvb2sKPiBnb29kIHRvIG1lIGluIHByaW5jaXBsZS4KPiBJ
J2xsIHRyeSB0byBmaW5kIHRpbWUgdG8gcnVuIHNvbWUgeGZzdGVzdHMgdGhpcyB3ZWVrIHRvIGNo
ZWNrIGZvcgo+IHJlZ3Jlc3Npb25zIHdpdGggdGhlIG90aGVyIHBhdGNoZXMgKEkgZG9uJ3QgaGF2
ZSBhbnkgbGlzdCwgc28gcnVuIHNvbWUKPiBiZWZvcmUvYWZ0ZXIgd2l0aCBxZW11IGluIGNhY2hl
PW1tYXAvbG9vc2UgbW9kZXMgcGVyaGFwcz8pIGFuZCB3ZSBjYW4KPiBzdWJtaXQgdGhlbSBuZXh0
IG1lcmdlIHdpbmRvdyB1bmxlc3MgeW91J3JlIGluIGEgaHVycnkuCj4gU29tZSBhcmUgb2J2aW91
cyBmaXhlcyAobm90IGNhbGxpbmcgaW4gZnNjYWNoZSBjb2RlIGluIGxvb3NlIG1vZGUpIGFuZAo+
IGNvdWxkIGdldCBpbiBmYXN0ZXIgYnV0IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHJ1c2ggZS5n
LiBvcHRpb24KPiBwYXJzaW5nLi4uIFdlbGwgdGhhdCBwcm9iYWJseSB3b24ndCBnZXQgbXVjaCB0
ZXN0cyBpbiAtbmV4dCwgSSdsbCBsZWF2ZQo+IHRoYXQgdXAgdG8geW91Lgo+IAo+IERvIHlvdSAo
c3RpbGw/KSBoYXZlIGEgYnJhbmNoIHRoYXQgZ2V0cyBtZXJnZWQgaW4gbGludXgtbmV4dCwgb3Ig
c2hhbGwgSQo+IHRha2UgdGhlIHBhdGNoZXMgaW4gZm9yIHRoYXQsIG9yIGRvIHlvdSB3YW50IHRv
IGFzayBTdGVmZW4/Cj4gKEkgc2hvdWxkIHByb2JhYmx5IGp1c3QgY2hlY2sgbXlzZWxmLCBidXQg
aXQncyA1YW0gYW5kIEknbGwgYmUgbGF6eSkKPiAKPiAtLSAKPiBEb21pbmlxdWUKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

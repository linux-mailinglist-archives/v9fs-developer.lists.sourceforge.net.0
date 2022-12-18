Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 976A56501D4
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 17:36:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6weX-00069I-Ca;
	Sun, 18 Dec 2022 16:36:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6weV-00069C-Qt
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:To:Cc:In-Reply-To:Date:Subject:
 Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WSfjqrsqOggYSMMIjA6iiPMBW/QmlwojqhvfwN6ySwg=; b=R583LGd6JOHHdZGPRs0bThj0ju
 vGECNhU9vijkinyc9YRotyWgT6fBjhbydSdOdOiEEIjgTDPzlwrDqcGUCKCgQt055DABkaAI0M71s
 gvKQpdij5vgAO2eWqiUUYxvxnVCRKvgXbFwwPoee8lk/4g7qo6yVbxZdidB5UsvR9xGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Content-Type:
 Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WSfjqrsqOggYSMMIjA6iiPMBW/QmlwojqhvfwN6ySwg=; b=jBfjGFF7tOmaZ4Var5jpRwtT8O
 434CifTg5Whd0pogO+xJyPjfoIAUy9RDdYG0h6RxhnJDL56GfxoMnPc/HKOSxZZv3hCDK3ObTEjWd
 SRCwJfjV1Jfo/tDJskQKucjfFufns7M39iYdqdXxa9V1bE//kzhJIN94QeUvMrvvWbY8=;
Received: from ms11p00im-qufo17291201.me.com ([17.58.38.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6weU-0001Hp-1g for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671381392;
 bh=WSfjqrsqOggYSMMIjA6iiPMBW/QmlwojqhvfwN6ySwg=;
 h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
 b=VK7WJ0NsWHKUe6AsoymT/CYjEMPi/FXP6tseo0KNIeJA42qk6u1wfpWJ+2cLhcCD0
 8AHnr0AJzQ9OIMLfDU0EAWLTGLjIQYNwG4YfpiJNtzKoS2GlTXX7qXdqi7SK3QEFEt
 t1R3DMmI2TpZrhysjtHn56nR35Oi/N1ExDON1NrIEyeAgenor5P5Dmyz4X6+POsYGc
 cu/NI3I5YqCb0KjE6o2gzJCGxhFzD+OLVALifNnoAW01dN/FXbbxZ2lNc0Nn2YtQzq
 d9oHyN9I624rgy8SV1EwV/85LKH28j//LhNu5T9YIuWN+va+RvTUAGZdgj7qYOC6nu
 kpnmILaKShgJw==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291201.me.com (Postfix) with ESMTPSA id E7F59C80762;
 Sun, 18 Dec 2022 16:36:29 +0000 (UTC)
Message-Id: <51FD8D16-4070-4DCF-AEB5-11640A82762E@icloud.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Date: Sun, 18 Dec 2022 10:36:18 -0600
In-Reply-To: <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
 <4530979.Ltmge6kleC@silver>
 <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Proofpoint-GUID: J-JP-mYfTij6DJNg1iS6MfyaJXTMSGK1
X-Proofpoint-ORIG-GUID: J-JP-mYfTij6DJNg1iS6MfyaJXTMSGK1
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2020-02-14=5F11:2020-02-14=5F02,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0 mlxscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180156
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Okay, how does this look? Better? I can generate a new rev
    of the patch stream later today with this fix up and responses to some of
    the other comments. For now, I’m also pushing this to the GitHub [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.41 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [evanhensbergen[at]icloud.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.41 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6weU-0001Hp-1g
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Ron Minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ck9rYXksIGhvdyBkb2VzIHRoaXMgbG9vaz8gIEJldHRlcj8gIEkgY2FuIGdlbmVyYXRlIGEgbmV3
IHJldiBvZiB0aGUgcGF0Y2ggc3RyZWFtIGxhdGVyIHRvZGF5IHdpdGggdGhpcyBmaXggdXAgYW5k
IHJlc3BvbnNlcyB0byBzb21lIG9mIHRoZSBvdGhlciBjb21tZW50cy4gIEZvciBub3csIEnigJlt
IGFsc28gcHVzaGluZyB0aGlzIHRvIHRoZSBHaXRIdWIgYnJhbmNoLgoKZGlmZiAtLWdpdCBhL25l
dC85cC9jbGllbnQuYyBiL25ldC85cC9jbGllbnQuYwppbmRleCBmZWY2NTE2YTA2MzkuLjZlNDA1
ODliODdkNCAxMDA2NDQKLS0tIGEvbmV0LzlwL2NsaWVudC5jCisrKyBiL25ldC85cC9jbGllbnQu
YwpAQCAtMjgsNyArMjgsMTEgQEAKICNkZWZpbmUgQ1JFQVRFX1RSQUNFX1BPSU5UUwogI2luY2x1
ZGUgPHRyYWNlL2V2ZW50cy85cC5oPgoKLSNkZWZpbmUgREVGQVVMVF9NU0laRSAoMTI4ICogMTAy
NCkKKy8qIERFRkFVTFQgTVNJWkUgPSAzMiBwYWdlcyB3b3J0aCBvZiBwYXlsb2FkICsgUDlfSERS
U1ogKworICogcm9vbSBmb3Igd3JpdGUgKDE2IGV4dHJhKSBvciByZWFkICgxMSBleHRyYSkgb3Bl
cmFuZHMuCisgKi8KKworI2RlZmluZSBERUZBVUxUX01TSVpFICgoMTI4ICogMTAyNCkgKyBQOV9I
RFJTWiArIDE2KQoKIC8qIENsaWVudCBPcHRpb24gUGFyc2luZyAoY29kZSBpbnNwaXJlZCBieSBO
RlMgY29kZSkKICAqICAtIGEgbGl0dGxlIGxhenkgLSBwYXJzZSBhbGwgY2xpZW50IG9wdGlvbnMK
LS0gCjIuMzcuMgoKCj4gT24gRGVjIDE4LCAyMDIyLCBhdCA5OjM3IEFNLCBFcmljIFZhbiBIZW5z
YmVyZ2VuIDxlcmljdmhAZ21haWwuY29tPiB3cm90ZToKPiAKPiBTbyAtIGhlcmUgd2FzIG15IHRo
aW5raW5nIC0gd2hlbiB0aGUgY2FjaGUgaXMgZW5hYmxlZCwgd2UgYXJlIG1vc3RseSB0cmFuc2Zl
cnJpbmcgcGFnZSBzaXplZCBjaHVua3MuICBIYXZpbmcgdGhlIE1TSVpFIGJlIDEyOGsgZXhhY3Rs
eSBtZWFucyB3ZSBhcmUgdHJhbnNmZXJyaW5nIDMxIHBhZ2VzIGluc3RlYWQgb2YgMzIuCj4gCj4g
QnV0IEkgdGhpbmsgeW91IGFyZSByaWdodCBhbmQgSSBnb3QgdGhpcyB3cm9uZywgaXQgbmVlZHMg
dG8gYmUgUDlfUkRfSERSX1NaIG9yIHNvbWV0aGluZyBub3QgUDlfSERSU1ogLS0gCj4gUDlfSERS
U1oganVzdCBjb3ZlcnMgc2l6ZVs0XStvcFsxXSt0YWdbMl0gYW5kIEkgcmVhbGx5IHdhbnQgaXQg
dG8gY292ZXIgc2l6ZVs0XStvcFsxXSt0YWdbMl0rY291bnRbNF0gKDExIGZvciByZWFkKSBvciBz
aXplWzRdK29wWzFdK3RhZ1syXStmaWRbNF0rb2Zmc2V0WzhdK2NvdW50WzRdICgyMyBmb3Igd3Jp
dGUpLgo+IAo+IFNob3VsZCBoYXZlIGp1c3QgY29waWVkIHRoZSBjb2RlIGZyb20gbnBmcyAoc3J2
LT5tc2l6ZSA9ICgxMjgqMTAyNCkrMjQpIC0tIGJ1dCBJIHRoaW5rIEkgdGhvdWdodCBQOV9IRFJT
WiB3YXMgc29tZXRoaW5nIGRpZmZlcmVudCB0aGFuIGl0IGFjdHVhbGx5IHdhcyAoYW5kIHdhcyBz
dHVwaWQgZW5vdWdoIG5vdCB0byBjaGVjaykgLSBJIGd1ZXNzIHdlIG5lZWQgYSBjb25zdGFudCBm
b3IgdGhlIG1heGltdW0gcGFja2V0IHNpemUgb3RoZXIgdGhhbiBwYXlsb2FkLgo+IAo+ICAgICAg
IC1lcmljCj4gCj4gCj4gCj4gCj4gT24gU3VuLCBEZWMgMTgsIDIwMjIgYXQgODo1NSBBTSBDaHJp
c3RpYW4gU2Nob2VuZWJlY2sgPGxpbnV4X29zc0BjcnVkZWJ5dGUuY29tIDxtYWlsdG86bGludXhf
b3NzQGNydWRlYnl0ZS5jb20+PiB3cm90ZToKPj4gT24gU2F0dXJkYXksIERlY2VtYmVyIDE3LCAy
MDIyIDc6NTI6MDUgUE0gQ0VUIEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGU6Cj4+ID4gQWRkIG1h
eGltdW0gcDkgaGVhZGVyIHNpemUgdG8gTVNJWkUgdG8gbWFrZSBzdXJlIHdlIGNhbgo+PiA+IGhh
dmUgcGFnZSBhbGlnbmVkIGRhdGEuCj4+ID4gCj4+ID4gU2lnbmVkLW9mZi1ieTogRXJpYyBWYW4g
SGVuc2JlcmdlbiA8ZXZhbmhlbnNiZXJnZW5AaWNsb3VkLmNvbSA8bWFpbHRvOmV2YW5oZW5zYmVy
Z2VuQGljbG91ZC5jb20+Pgo+PiA+IC0tLQo+PiA+ICBuZXQvOXAvY2xpZW50LmMgfCAyICstCj4+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+PiA+IAo+
PiA+IGRpZmYgLS1naXQgYS9uZXQvOXAvY2xpZW50LmMgYi9uZXQvOXAvY2xpZW50LmMKPj4gPiBp
bmRleCBmZWY2NTE2YTA2MzkuLjQxNmJhZjJmMWVkZiAxMDA2NDQKPj4gPiAtLS0gYS9uZXQvOXAv
Y2xpZW50LmMKPj4gPiArKysgYi9uZXQvOXAvY2xpZW50LmMKPj4gPiBAQCAtMjgsNyArMjgsNyBA
QAo+PiA+ICAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMKPj4gPiAgI2luY2x1ZGUgPHRyYWNl
L2V2ZW50cy85cC5oPgo+PiA+ICAKPj4gPiAtI2RlZmluZSBERUZBVUxUX01TSVpFICgxMjggKiAx
MDI0KQo+PiA+ICsjZGVmaW5lIERFRkFVTFRfTVNJWkUgKCgxMjggKiAxMDI0KSArIFA5X0hEUlNa
KQo+PiAKPj4gQWRkaW5nIDcgd291bGQgbWFrZSB3aGF0IHBhZ2UgYWxpZ25lZCBleGFjdGx5LCB0
aGUgcGF5bG9hZD8gQW5kIGhvdz8KPj4gCj4+ID4gIAo+PiA+ICAvKiBDbGllbnQgT3B0aW9uIFBh
cnNpbmcgKGNvZGUgaW5zcGlyZWQgYnkgTkZTIGNvZGUpCj4+ID4gICAqICAtIGEgbGl0dGxlIGxh
enkgLSBwYXJzZSBhbGwgY2xpZW50IG9wdGlvbnMKPj4gPiAKPj4gCj4+IAo+PiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

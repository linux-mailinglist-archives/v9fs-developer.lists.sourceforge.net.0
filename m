Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D40D56C7B8
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 09:44:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oA58X-000450-RT; Sat, 09 Jul 2022 07:44:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oA58V-00044u-LL
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 07:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aqMSLUhf30cLoRWf9UhIC+PDXVJlySv5g44jgD71n/s=; b=lPrT3cdQnsSHRxxJhvbM6GONwA
 lKxWEN1O+ZztpVmDBQh9q9Ji3/rqe36Vn8hMmPFu/WimrQQ7HTEYTNPQyosPfUT5EfuIALiyhfncU
 LdwVFTDz5CCQI5VwSHXISk0gyTtNhITpTpwPellxW88R97KBJiMiGVZ7uPQdsVqe/JhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aqMSLUhf30cLoRWf9UhIC+PDXVJlySv5g44jgD71n/s=; b=AyaDRN0FelCu6P93O86wL0/zPx
 uQsMM16pDBiQV8axLTW9XwjkS4EvJyhleow+XsHLAtjINGg//xCoNgeuzhAJtUxrDxmOJ5aIN2QPY
 XVlpSCJL3b2ovDnhq6XSp3Z1NOiCXJJCo3oHv6mjET5dBDDiCmFoCtFQ1M5/QLJJdXdQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oA58R-00Br2z-PO
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 07:44:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id ED65CC01E; Sat,  9 Jul 2022 09:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657352648; bh=aqMSLUhf30cLoRWf9UhIC+PDXVJlySv5g44jgD71n/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CNPa3VWHF810hsPImhzE4iZvNmlSIr1p3s/EcH9vKjKAZSBsA1DQyfc9ljb6gjJNI
 8qy4CF2w3ZYa39yVan5KHwmJG30p/ESeKSp2cZ+Bcbs9udGMIpb9bwNRy2oNegYmFg
 mnPUKjEEi0PwYgn12V7Yqq4wn1OSlc28pyJScpSrp9x0VxOuog93AT0l/gMqygDooW
 7m9A6BhaXZte74E+Mb3oLsDfzTQ3YNpp7R/k7HGmddsvlLzEzFBHFcEVf61H/1yEbX
 FmIbxA4gsifihVwxZ7k5EW6ub090Py3CAdpbjmoPd90vDQQiAWOzH1vUIXw+wU1gUN
 O8vIFfQn9MMrg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2917DC009;
 Sat,  9 Jul 2022 09:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657352648; bh=aqMSLUhf30cLoRWf9UhIC+PDXVJlySv5g44jgD71n/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CNPa3VWHF810hsPImhzE4iZvNmlSIr1p3s/EcH9vKjKAZSBsA1DQyfc9ljb6gjJNI
 8qy4CF2w3ZYa39yVan5KHwmJG30p/ESeKSp2cZ+Bcbs9udGMIpb9bwNRy2oNegYmFg
 mnPUKjEEi0PwYgn12V7Yqq4wn1OSlc28pyJScpSrp9x0VxOuog93AT0l/gMqygDooW
 7m9A6BhaXZte74E+Mb3oLsDfzTQ3YNpp7R/k7HGmddsvlLzEzFBHFcEVf61H/1yEbX
 FmIbxA4gsifihVwxZ7k5EW6ub090Py3CAdpbjmoPd90vDQQiAWOzH1vUIXw+wU1gUN
 O8vIFfQn9MMrg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1ad9dda0;
 Sat, 9 Jul 2022 07:44:02 +0000 (UTC)
Date: Sat, 9 Jul 2022 16:43:47 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yskxs4uQ4v8l7Zb9@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <2335194.JbyEHpbE5P@silver> <YsLluKb1v5SqN2xD@codewreck.org>
 <72042449.h6Bkk5LDil@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72042449.h6Bkk5LDil@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I've taken the mempool patches to 9p-next Christian
 Schoenebeck
 wrote on Mon, Jul 04, 2022 at 03:56:55PM +0200: >> (I appreciate the need
 for testing, but this feels much less risky than >> the iovec series we've
 had recently... Famous last w [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oA58R-00Br2z-PO
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSd2ZSB0YWtlbiB0aGUgbWVtcG9vbCBwYXRjaGVzIHRvIDlwLW5leHQKCkNocmlzdGlhbiBTY2hv
ZW5lYmVjayB3cm90ZSBvbiBNb24sIEp1bCAwNCwgMjAyMiBhdCAwMzo1Njo1NVBNICswMjAwOgo+
PiAoSSBhcHByZWNpYXRlIHRoZSBuZWVkIGZvciB0ZXN0aW5nLCBidXQgdGhpcyBmZWVscyBtdWNo
IGxlc3Mgcmlza3kgdGhhbgo+PiB0aGUgaW92ZWMgc2VyaWVzIHdlJ3ZlIGhhZCByZWNlbnRseS4u
LiBGYW1vdXMgbGFzdCB3b3Jkcz8pCj4gCj4gR290IGl0LCBjb25zaWRlciBteSBmYW1vdXMgbGFz
dCB3b3JkcyBkcm9wcGVkLiA7LSkKCk9rLCBzbyBJIHRoaW5rIHlvdSB3b24gdGhpcyBvbmUuLi4K
CldlbGwgLS0gd2hlbiB0ZXN0aW5nIG5vcm1hbGx5IGl0IG9idmlvdXNseSB3b3JrcyB3ZWxsLCBw
ZXJmb3JtYW5jZSB3aXNlCmlzIHJvdWdobHkgdGhlIHNhbWUgKG9idmlvdXNseSBzaW5jZSBpdCB0
cmllcyB0byBhbGxvY2F0ZSBmcm9tIHNsYWIKZmlyc3QgYW5kIGluIG5vcm1hbCBjYXNlIHRoYXQg
d2lsbCB3b3JrKQoKV2hlbiBJIHRyaWVkIGdhbWluZyBpdCB3aXRoIHZlcnkgbG93IG1lbW9yeSB0
aG91Z2ggSSB0aG91Z2h0IGl0IHdvcmtlZAp3ZWxsLCBidXQgSSBtYW5hZ2VkIHRvIGdldCBhIGJ1
bmNoIG9mIHByb2Nlc3NlcyBzdHVjayBpbiBtZW1wb29sX2FsbG9jCndpdGggbm8gb2J2aW91cyB0
aWQgd2FpdGluZyBmb3IgYSByZXBseS4KSSBoYWQgdGhlIGJyaWdodCBpZGVhIG9mIHVzaW5nIGZp
byB3aXRoIGlvX3VyaW5nIGFuZCBpbnRlcmVzdGluZ2x5IHRoZQp1cmluZyB3b3JrZXIgZG9lc24n
dCBzaG93IHVwIGluIHBzIG9yIC9wcm9jLzxwaWQ+LCBidXQgd2l0aCBxZW11J3MgZ2RiCmFuZCBs
eC1wcyBJIGNvdWxkIGZpbmQgYSBidW5jaCBvZiBpb3Utd3JrLTxwaWQ+IHRoYXQgYXJlIGFsbCB3
aXRoCnNpbWlsYXIgc3RhY2tzCiAgIDEgICDilIIgWzwwPl0gbWVtcG9vbF9hbGxvYysweDEzNi8w
eDE4MAogICAyICAg4pSCIFs8MD5dIHA5X2ZjYWxsX2luaXQrMHg2My8weDgwIFs5cG5ldF0KICAg
MyAgIOKUgiBbPDA+XSBwOV9jbGllbnRfcHJlcGFyZV9yZXErMHhhOS8weDI5MCBbOXBuZXRdCiAg
IDQgICDilIIgWzwwPl0gcDlfY2xpZW50X3JwYysweDY0LzB4NjEwIFs5cG5ldF0KICAgNSAgIOKU
giBbPDA+XSBwOV9jbGllbnRfd3JpdGUrMHhjYi8weDIxMCBbOXBuZXRdCiAgIDYgICDilIIgWzww
Pl0gdjlmc19maWxlX3dyaXRlX2l0ZXIrMHg0ZC8weGMwIFs5cF0KICAgNyAgIOKUgiBbPDA+XSBp
b193cml0ZSsweDEyOS8weDJjMAogICA4ICAg4pSCIFs8MD5dIGlvX2lzc3VlX3NxZSsweGExLzB4
MjViMAogICA5ICAg4pSCIFs8MD5dIGlvX3dxX3N1Ym1pdF93b3JrKzB4OTAvMHgxOTAKICAxMCAg
IOKUgiBbPDA+XSBpb193b3JrZXJfaGFuZGxlX3dvcmsrMHgyMTEvMHg1NTAKICAxMSAgIOKUgiBb
PDA+XSBpb193cWVfd29ya2VyKzB4MmM1LzB4MzQwCiAgMTIgICDilIIgWzwwPl0gcmV0X2Zyb21f
Zm9yaysweDFmLzB4MzAKCm9yLCBhbmQgdGhhdCdzIHRoZSBpbnRlcmVzdGluZyBwYXJ0CiAgIDEg
ICDilIIgWzwwPl0gbWVtcG9vbF9hbGxvYysweDEzNi8weDE4MAogICAyICAg4pSCIFs8MD5dIHA5
X2ZjYWxsX2luaXQrMHg2My8weDgwIFs5cG5ldF0KICAgMyAgIOKUgiBbPDA+XSBwOV9jbGllbnRf
cHJlcGFyZV9yZXErMHhhOS8weDI5MCBbOXBuZXRdCiAgIDQgICDilIIgWzwwPl0gcDlfY2xpZW50
X3JwYysweDY0LzB4NjEwIFs5cG5ldF0KICAgNSAgIOKUgiBbPDA+XSBwOV9jbGllbnRfZmx1c2gr
MHg4MS8weGMwIFs5cG5ldF0KICAgNiAgIOKUgiBbPDA+XSBwOV9jbGllbnRfcnBjKzB4NTkxLzB4
NjEwIFs5cG5ldF0KICAgNyAgIOKUgiBbPDA+XSBwOV9jbGllbnRfd3JpdGUrMHhjYi8weDIxMCBb
OXBuZXRdCiAgIDggICDilIIgWzwwPl0gdjlmc19maWxlX3dyaXRlX2l0ZXIrMHg0ZC8weGMwIFs5
cF0KICAgOSAgIOKUgiBbPDA+XSBpb193cml0ZSsweDEyOS8weDJjMAogIDEwICAg4pSCIFs8MD5d
IGlvX2lzc3VlX3NxZSsweGExLzB4MjViMAogIDExICAg4pSCIFs8MD5dIGlvX3dxX3N1Ym1pdF93
b3JrKzB4OTAvMHgxOTAKICAxMiAgIOKUgiBbPDA+XSBpb193b3JrZXJfaGFuZGxlX3dvcmsrMHgy
MTEvMHg1NTAKICAxMyAgIOKUgiBbPDA+XSBpb193cWVfd29ya2VyKzB4MmM1LzB4MzQwCiAgMTQg
ICDilIIgWzwwPl0gcmV0X2Zyb21fZm9yaysweDFmLzB4MzAKClRoZSBwcm9ibGVtIGlzIHRoZXNl
IGZsdXNoZXMgOiB0aGUgc2FtZSB0YXNrIGlzIGhvbGRpbmcgYSBidWZmZXIgZm9yIHRoZQpvcmln
aW5hbCBycGMgYW5kIHRyaWVzIHRvIGdldCBhIG5ldyBvbmUsIGJ1dCB3YWl0cyBmb3Igc29tZW9u
ZSB0byBmcmVlCmFuZC4uIG9idmlvdXNseSB0aGVyZSBpc24ndCBhbnlvbmUgKEkgY291bmQgMTEg
Zmx1c2hlcyBwZW5kaW5nLCBzbyBtb3JlCnRoYW4gdGhlIG1pbmltdW0gbnVtYmVyIG9mIGJ1ZmZl
cnMgd2UnZCBleHBlY3QgZnJvbSB0aGUgbWVtcG9vbCwgYW5kIEkKZG9uJ3QgdGhpbmsgd2UgbWlz
c2VkIGFueSBmcmVlKQoKCk5vdyBJJ20gbm90IHN1cmUgd2hhdCdzIGJlc3QgaGVyZS4KVGhlIGJl
c3QgdGhpbmcgdG8gZG8gd291bGQgcHJvYmFibHkgdG8ganVzdCB0ZWxsIHRoZSBjbGllbnQgaXQg
Y2FuJ3QgdXNlCnRoZSBtZW1wb29scyBmb3IgZmx1c2hlcyAtLSB0aGUgZmx1c2hlcyBhcmUgcmFy
ZSBhbmQgd2lsbCB1c2Ugc21hbGwKYnVmZmVycyB3aXRoIHlvdXIgc21hbGxlciBhbGxvY2F0aW9u
cyBwYXRjaDsgSSBiZXQgSSB3b3VsZG4ndCBiZSBhYmxlIHRvCnJlcHJvZHVjZSB0aGF0IGFueW1v
cmUgYnV0IGl0IHNob3VsZCBwcm9iYWJseSBqdXN0IGZvcmJpZCB0aGUgbWVtcG9vbApqdXN0IGlu
IGNhc2UuCgoKQW55d2F5LCBJJ20gbm90IGNvbWZvcnRhYmxlIHdpdGggdGhpcyBwYXRjaCByaWdo
dCBub3csIGEgaGFuZyBpcyB3b3JzZQp0aGFuIGFuIGFsbG9jYXRpb24gZmFpbHVyZSB3YXJuaW5n
LgoKCj4gPiA+IEhvdyBhYm91dCBJIGFkZHJlc3MgdGhlIGFscmVhZHkgZGlzY3Vzc2VkIGlzc3Vl
cyBhbmQgcG9zdCBhIHY1IG9mIHRob3NlCj4gPiA+IHBhdGNoZXMgdGhpcyB3ZWVrIGFuZCB0aGVu
IHdlIGNhbiBjb250aW51ZSBmcm9tIHRoZXJlPwo+ID4gCj4gPiBJIHdvdWxkIGhhdmUgYmVlbiBo
YXBweSB0byByZWJhc2UgeW91ciBwYXRjaGVzIDkuLjEyIG9uIHRvcCBvZiBLZW50J3MKPiA+IHRo
aXMgd2Vla2VuZCBidXQgaWYgeW91IHdhbnQgdG8gcmVmcmVzaCB0aGVtIHRoaXMgd2VlayB3ZSBj
YW4gY29udGludWUKPiA+IGZyb20gdGhlcmUsIHN1cmUuCj4gCj4gSSdsbCByZWJhc2UgdGhlbSBv
biBtYXN0ZXIgYW5kIGFkZHJlc3Mgd2hhdCB3ZSBkaXNjdXNzZWQgc28gZmFyLiBUaGVuIHdlJ2xs
IAo+IHNlZS4KCkZXSVcgYW5kIHJlZ2FyZGluZyB0aGUgb3RoZXIgdGhyZWFkIHdpdGggdmlyaXRv
IHF1ZXVlIHNpemVzLCBJIHdhcyBvbmx5CmNvbnNpZGVyaW5nIHRoZSBsYXRlciBwYXRjaGVzIHdp
dGggc21hbGwgUlBDcyBmb3IgdGhpcyBtZXJnZSB3aW5kb3cuCgpTaGFsbCB3ZSB0cnkgdG8gZm9j
dXMgb24gdGhhdCBmaXJzdCwgYW5kIHRoZW4gcmV2aXNpdCB0aGUgdmlydGlvIGFuZAptZW1wb29s
IHBhdGNoZXMgb25jZSB0aGF0J3MgZG9uZT8KCi0tIApEb21pbmlxdWUKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

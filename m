Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EAC34F440
	for <lists+v9fs-developer@lfdr.de>; Wed, 31 Mar 2021 00:32:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lRMtz-0007xD-Bf; Tue, 30 Mar 2021 22:31:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lRMtx-0007x5-A7
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 22:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zx8ni7bXpv+YaUKmwi5pdjQo0oUP9rEvUbkdyzjkpAA=; b=hUCRShK2TAePwuKTifDmXJR0TJ
 FrR6wsNvhMO/H8qG+lyAElEs+w+1SfG8gwGipxBjjbDa+7H725rxnQlq/l2bUKKd89oW9tIr3xnla
 UUwYolhKstGfJq8Ofzyex15jMCZSs2Nyy6DqNQNVZX5DlRnslG9ocM0rWQZFJQX6p8sY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zx8ni7bXpv+YaUKmwi5pdjQo0oUP9rEvUbkdyzjkpAA=; b=kBDAM1EKTmAdfGSq9X7kNRvUJ6
 rYcf5hbozXyQ7FZLBwm4LTrM0vrRievmLXHUnKRmBh7Q7n03vo30I94QBtx5wdNEeuFGtCzXHbzG9
 H+3Ozag8yXWWGSj8xVF0P/E/TnrZTXGY4cseDBOzii2EjwyNlX5NRQiOEFYVjtoKg8QE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRMtp-0003Kp-B1
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 22:31:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F2D82C01C; Wed, 31 Mar 2021 00:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1617143497; bh=Zx8ni7bXpv+YaUKmwi5pdjQo0oUP9rEvUbkdyzjkpAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Te5VYfLpZxhDD0l4vjyZeOmmom8Psdb4PYLy8xEao1Jdaexrr5ZgT+ejbKeqIYcum
 VbjoEHAALbde+1KGq12OzjwQzESjnbmYA8UUokR0x258CqPR6SC5VNc9jkobYIaXii
 7bjIwlRECuue/5QU5ItGQgIX4vdmPs+YmtwE7u9ViUTe6LnE9dnHuubT6l8LIo7zqT
 ftKpvU2coeihl/4+MGkBKsYfpOMsLAOzrYwHfW2fW0d5vjEKPjEYSXaPE1v87E5kKc
 2OghtY/qd2CwJ8FrTqf1lux7L0vDoh1Ox6dty+CS9rQMA2isVVM3c/b45UhyD5lOo/
 SKqxpMyA+D+7Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AF3B4C01A;
 Wed, 31 Mar 2021 00:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1617143496; bh=Zx8ni7bXpv+YaUKmwi5pdjQo0oUP9rEvUbkdyzjkpAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z0CuWRmnmSXhvVbGe2Avc+LphhB3/uUfmZsr1n47ZQenA7QBMVvY2f29kC8wNeJgl
 tmd8u0w7Jxar7NGyXGcOrCxEgkbwLo2SPtGojKnMc6nc8kYTiUE/A/T/S/4YSbpLf7
 esEg1DcT7DsVFVSB4OFzaVLv0xZEHnaZroo3HEONwFTuC+3VuZZjj26oAme0F0i1t+
 z/o5uX89zipkmkW2LyFNR8qbMxxDGWn/JGwu18BI138xguH/PSFYUAvLVx5RGJ4N+V
 +qAJqUCTxcqLxsz2pYOdTpBFf6vq42trya/JczlgjNgAKmINv5e9nyMgKDY0ZhAsBj
 Z+N48ZMMkbkbg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 38661fb1;
 Tue, 30 Mar 2021 22:31:33 +0000 (UTC)
Date: Wed, 31 Mar 2021 07:31:18 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Nicola Girardi <idrarig.alocin@gmail.com>
Message-ID: <YGOmtkhr8NSMAr9z@codewreck.org>
References: <20210322163553.19888-1-nicolagi@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322163553.19888-1-nicolagi@sdf.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: githubusercontent.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lRMtp-0003Kp-B1
Subject: Re: [V9fs-developer] [PATCH] fs/9p: if O_APPEND,
 seek to EOF on write, not open
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgphZGRpbmcgbGludXgtZnNkZXZlbEB2Z2VyIGluIENjLCB0aGVyZSdzIG1vcmUgcGVvcGxl
IHdobyBrbm93IGFib3V0IHRoaXMKdGhhbiBtZSB0aGVyZQoKTmljb2xhIEdpcmFyZGkgd3JvdGUg
b24gTW9uLCBNYXIgMjIsIDIwMjEgYXQgMDQ6MzU6NTNQTSArMDAwMDoKPiBRdW90aW5nIHRoZSBQ
T1NJWCBzdGFuZGFyZDrCuQo+IAo+IAlJZiB0aGUgT19BUFBFTkQgZmxhZyBvZiB0aGUgZmlsZSBz
dGF0dXMgZmxhZ3MgaXMgc2V0LCB0aGUgZmlsZQo+IAlvZmZzZXQgc2hhbGwgYmUgc2V0IHRvIHRo
ZSBlbmQgb2YgdGhlIGZpbGUgcHJpb3IgdG8gZWFjaCB3cml0ZSBhbmQKPiAJbm8gaW50ZXJ2ZW5p
bmcgZmlsZSBtb2RpZmljYXRpb24gb3BlcmF0aW9uIHNoYWxsIG9jY3VyIGJldHdlZW4KPiAJY2hh
bmdpbmcgdGhlIGZpbGUgb2Zmc2V0IGFuZCB0aGUgd3JpdGUgb3BlcmF0aW9uLgo+IAo+IFByZXZp
b3VzbHksIHRoZSBzZWVrIHRvIEVPRiB3YXMgb25seSBkb25lIG9uIG9wZW4gaW5zdGVhZC4KPiAK
PiDCuSBodHRwczovL3B1YnMub3Blbmdyb3VwLm9yZy9vbmxpbmVwdWJzLzk2OTk5MTk3OTkvZnVu
Y3Rpb25zL3dyaXRlLmh0bWwKPiAtLS0KPiAKPiBJIG5vdGljZWQgdGhlIGFib3ZlIG1pbm9yIGRl
dmlhdGlvbiBmcm9tIFBPU0lYIHdoaWxlIHJ1bm5pbmcgYSB0ZXN0ZXIKPiB0aGF0IGxvb2tzIGZv
ciBkaWZmZXJlbmNlcyBiZXR3ZWVuIGV4dDQgYW5kIGEgZnMgb2YgbWluZSwgbW91bnRlZAo+IHVz
aW5nIHY5ZnMuIEkgd3JvdGUgYSBzbWFsbCBwcm9ncmFtIHRvIHJlcHJvZHVjZSB0aGUgcHJvYmxl
bSBhbmQKPiB2YWxpZGF0ZSB0aGUgZml4Ogo+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50
LmNvbS9uaWNvbGFnaS9mc2RpZmYvbWFzdGVyL2MvcmVwcm8tcmVhZC1hcHBlbmQuYy4KClNvcnJ5
IGZvciB0aGUgZGVsYXkgaW4gcmVwbHlpbmcsIEkganVzdCBkaWRuJ3QgdGFrZSB0aW1lIHRvIHRl
c3QgdW50aWwKbm93LgpTbyB0aGUgdGhpbmcgaXMgZ2l2ZW4gaG93IHRoZSBjdXJyZW50IDlwIHNl
cnZlcnMgSSBrbm93IGFyZSBpbXBsZW1lbnRlZCwKZmlsZSBJT3Mgd2lsbCBiZSBiYWNrZWQgYnkg
YSBmaWxlIHdoaWNoIGhhcyBiZWVuIG9wZW5lZCBpbiBPX0FQUEVORCBhbmQKdGhlIGJlaGF2aW91
ciB3aWxsIHRyYW5zcGFyZW50bHkgYmUgY29ycmVjdCBmb3IgdGhlbTsgdGhhdCdzIHByb2JhYmx5
CndoeSBub2JvZHkgZXZlciBjYXVnaHQgdXAgb24gdGhpcyB1bnRpbCBub3cuCgoKSSB0aGluayBp
dCBtYWtlcyBzZW5zZSBob3dldmVyLCBzbyBJJ2xsIHRha2UgdGhlIHBhdGNoIHVubGVzcyBzb21l
b25lCmNvbXBsYWluczsgcGxlYXNlIG5vdGUgdGhhdCBpbiBjYXNlIG9mIGNvbmN1cnJlbnQgYWNj
ZXNzZXMgYSBjbGllbnQtc2lkZQppbXBsZW1lbnRhdGlvbiB3aWxsIG5vdCBndWFyYW50ZWUgcHJv
cGVyIE9fQVBQRU5EIGJlaGF2aW91ciBzbyBpdCBzaG91bGQKcmVhbGx5IGJlIGVuZm9yY2VkIGJ5
IHRoZSBzZXJ2ZXI7IGJlY2F1c2UgZ2VuZXJpY19maWxlX2xsc2VlayByZWxpZXMgb24KdGhlIHNp
emUgc3RvcmVkIGluIHRoZSBpbm9kZSBpbiBjYWNoZSAoYW5kIGl0IHdvdWxkIGJlIHJhY3kgYW55
d2F5IGlmIGl0CndlcmUgdG8gcmVmcmVzaCBhdHRyaWJ1dGVzKQoKZS5nLiBpZiB0d28gY2xpZW50
cyBhcmUgb3BlbmluZyB0aGUgc2FtZSBmaWxlIGluIE9fQVBQRU5EIGFuZCBhbHRlcm5hdGUKd3Jp
dGluZyB0byBpdCwgdGhleSB3aWxsIGp1c3QgYmUgb3ZlcndyaXRpbmcgZWFjaCBvdGhlciBvbiB5
b3VyIHNlcnZlcgppbXBsZW1lbnRhdGlvbi4KCgpXZWxsLCBnZW5lcmljX2ZpbGVfbGxzZWVrIGhh
cyBjbG9zZSB0byB6ZXJvIGV4dHJhIGNvc3Qgc28gaXQgZG9lc24ndApjb3N0IG11Y2ggdG8gaW5j
bHVkZSB0aGlzIHNhZmV0eSwgSSdsbCBqdXN0IGFkanVzdCB0aGUgY29tbWl0IG1lc3NhZ2UgdG8K
d2FybiBvZiB0aGlzIHBpdGZhbGwgYW5kIGluY2x1ZGUgdGhlIHBhdGNoIGFmdGVyIHNvbWUgbW9y
ZSB0ZXN0aW5nLgoKVGhhbmtzLAoKPiAKPiAgZnMvOXAvdmZzX2ZpbGUuYyB8IDUgKystLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZnMvOXAvdmZzX2ZpbGUuYyBiL2ZzLzlwL3Zmc19maWxlLmMKPiBpbmRleCBiZTU3
Njg5NDljYjEuLjhlOWRhM2FiZDQ5OCAxMDA2NDQKPiAtLS0gYS9mcy85cC92ZnNfZmlsZS5jCj4g
KysrIGIvZnMvOXAvdmZzX2ZpbGUuYwo+IEBAIC02OCw5ICs2OCw2IEBAIGludCB2OWZzX2ZpbGVf
b3BlbihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiAgCQkJcDlfY2xp
ZW50X2NsdW5rKGZpZCk7Cj4gIAkJCXJldHVybiBlcnI7Cj4gIAkJfQo+IC0JCWlmICgoZmlsZS0+
Zl9mbGFncyAmIE9fQVBQRU5EKSAmJgo+IC0JCQkoIXY5ZnNfcHJvdG9fZG90dSh2OXNlcykgJiYg
IXY5ZnNfcHJvdG9fZG90bCh2OXNlcykpKQo+IC0JCQlnZW5lcmljX2ZpbGVfbGxzZWVrKGZpbGUs
IDAsIFNFRUtfRU5EKTsKPiAgCX0KPiAgCj4gIAlmaWxlLT5wcml2YXRlX2RhdGEgPSBmaWQ7Cj4g
QEAgLTQxOSw2ICs0MTYsOCBAQCB2OWZzX2ZpbGVfd3JpdGVfaXRlcihzdHJ1Y3Qga2lvY2IgKmlv
Y2IsIHN0cnVjdCBpb3ZfaXRlciAqZnJvbSkKPiAgCWlmIChyZXR2YWwgPD0gMCkKPiAgCQlyZXR1
cm4gcmV0dmFsOwo+ICAKPiArCWlmIChmaWxlLT5mX2ZsYWdzICYgT19BUFBFTkQpCj4gKwkJZ2Vu
ZXJpY19maWxlX2xsc2VlayhmaWxlLCAwLCBTRUVLX0VORCk7Cj4gIAlvcmlnaW4gPSBpb2NiLT5r
aV9wb3M7Cj4gIAlyZXR2YWwgPSBwOV9jbGllbnRfd3JpdGUoZmlsZS0+cHJpdmF0ZV9kYXRhLCBp
b2NiLT5raV9wb3MsIGZyb20sICZlcnIpOwo+ICAJaWYgKHJldHZhbCA+IDApIHsKLS0gCkRvbWlu
aXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK

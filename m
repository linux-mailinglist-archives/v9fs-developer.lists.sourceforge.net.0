Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2873D05F6
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 02:01:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m5zfX-0001m6-AE; Wed, 21 Jul 2021 00:00:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1m5zfV-0001lz-74
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 00:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1m/49sW9SGddmQz68wce3youlP3OtO+i7VEXL4PC+U=; b=KfEF98tyLkk7vBWEDzGf3MWigd
 qn/rQaSWukFQJFnrYfIb6/WPRzwq4JXr4D3uE1zBtCfxwvwbS9gNHOjvog7Wee+Y9w59kBXtYw3zh
 rLIVJXy2zzW2SxthqI8FOEQsXQpJNXQs2rvZnwmcXdOb77KJ5O+093/VRZnBYcKC/U5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d1m/49sW9SGddmQz68wce3youlP3OtO+i7VEXL4PC+U=; b=FJHhWi0yJjEbJVAK54qkwDX1cx
 4tIr9UQ/8k379oL12/11OMt2tGS/U8C+sTPgTIZaxPW/YJcY1cPXebBReUuGik4IHc10k7OS/YWnU
 MrVql9NK5veDOXH2c47wzJE65ZdLEGaZos3M2HpWCZ2r2m6xjP3GUZamGBi9RURs7hfc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m5zfP-00F8xa-4p
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 00:00:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0A464C009; Wed, 21 Jul 2021 02:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1626825642; bh=d1m/49sW9SGddmQz68wce3youlP3OtO+i7VEXL4PC+U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uMjyokqhR2LJRt7AhQ/Mw0DfM8U+BXCpCivDRaroyqiOD3bXw4rXlzOwJ0gQqiQHE
 5HI0H0/FSywjwGiGee72wzqWJuBB+K5mwuWdGS4mR7WvkTwLQa+2cUrUORjSomxxy2
 hmEjZ2M+xHbcblooh8zUdO8Xmvq1+PtokutJNYnzFs2+1NNOGGLLsZkTuP1RiFeyoa
 lnJGwtgIuwcYl7To0swQNHoL2QvIdQbmdiq6/bGwsSRup252kaM3vQTTZc97EOPWqH
 i921zrPOiI0nJ9MllwyVsR+HP9ku0+IW+II+clvbidMqI8JVq3YA0ZAX/Axvrp3NAS
 IEClt+4VfJD/w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id EB13FC009;
 Wed, 21 Jul 2021 02:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1626825641; bh=d1m/49sW9SGddmQz68wce3youlP3OtO+i7VEXL4PC+U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qMYQsgfmU9kW8PEYFFzSQ0XSjduB09jJfZrmmK7P/rWNymZIWO85TajWGuzvmeAWc
 NHV3cRDIz9Q6bMY8P5py9sCDJiRQ0L3JBSwkwV7ORAfNGJRYogKce+68TT6KbgOcOT
 lAF18ARpSLfyHHs5CBiJ0pR2qfIGYZj9r21WmFu8mjlEjeAkbFF8WBPN/Ui2M0vdNx
 dsRAh5VfCf3nIyrGbxcBzXH1ax5G4Zk3OPd6dWGBz7yO4sGE4CI/z3sv6ttkE7IJDX
 C3WaOsrWzAnnM5XMgpzAO4EoVgyE2iErpbmL78WsAQhRhAer46P3J/NFK+Spq/W6R/
 Ge71ltrrY0Pdw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7de815b5;
 Wed, 21 Jul 2021 00:00:35 +0000 (UTC)
Date: Wed, 21 Jul 2021 09:00:20 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Message-ID: <YPdjlDaM5DupjHU+@codewreck.org>
References: <2672527.YDO70zjxOC@silver>
 <cc5323fd-f4b2-5180-80f1-387ce712341e@cs.ucla.edu>
 <YPZs4YGVBy92zAtP@album.bayer.uni.cx> <2830932.JSSdzbctmW@silver>
 <20210720163701.78e68147@bahia.lan>
 <20210720165803.19b85cc9@bahia.lan> <YPcEjQ7ZQhm3WSyx@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YPcEjQ7ZQhm3WSyx@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1m5zfP-00F8xa-4p
Subject: Re: [V9fs-developer] tar does not support partial reads
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
Cc: Christian Schoenebeck <qemu_oss@crudebyte.com>, Greg Kurz <groug@kaod.org>,
 Sergey Alirzaev <l29ah@cock.li>, Nikos Tsipinakis <nikos@tsipinakis.com>,
 v9fs-developer@lists.sourceforge.net, bug-tar@gnu.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpEYW5pZWwgUC4gQmVycmFuZ8OpIHdyb3RlIG9uIFR1ZSwgSnVsIDIwLCAyMDIxIGF0IDA2
OjE0OjUzUE0gKzAxMDA6Cj4gPiA+IFdoZW4gYXR0ZW1wdGluZyB0byByZWFkIGEgZmlsZSAob3Ro
ZXIgdGhhbiBhIHBpcGUgb3IgRklGTykgdGhhdCBzdXBwb3J0cyBub24tYmxvY2tpbmcgcmVhZHMg
YW5kIGhhcyBubyBkYXRhIGN1cnJlbnRseSBhdmFpbGFibGU6Cj4gPiA+IAo+ID4gPiAgICAgLSBJ
ZiBPX05PTkJMT0NLIGlzIHNldCwgcmVhZCgpIHNoYWxsIHJldHVybiAtMSBhbmQgc2V0IGVycm5v
IHRvIFtFQUdBSU5dLgo+ID4gPiAKPiA+ID4gICAgIC0gSWYgT19OT05CTE9DSyBpcyBjbGVhciwg
cmVhZCgpIHNoYWxsIGJsb2NrIHRoZSBjYWxsaW5nIHRocmVhZCB1bnRpbCBzb21lIGRhdGEgYmVj
b21lcyBhdmFpbGFibGUuCj4gPiA+IAo+ID4gPiAgICAgLSBUaGUgdXNlIG9mIHRoZSBPX05PTkJM
T0NLIGZsYWcgaGFzIG5vIGVmZmVjdCBpZiB0aGVyZSBpcyBzb21lIGRhdGEgYXZhaWxhYmxlLgo+
ID4gPiAKPiA+ID4gYW5kCj4gPiA+IAo+ID4gPiBbRUFHQUlOXQo+ID4gPiAgICAgVGhlIGZpbGUg
aXMgbmVpdGhlciBhIHBpcGUsIG5vciBhIEZJRk8sIG5vciBhIHNvY2tldCwgdGhlIE9fTk9OQkxP
Q0sgZmxhZyBpcyBzZXQgZm9yIHRoZSBmaWxlIGRlc2NyaXB0b3IsIGFuZCB0aGUgdGhyZWFkIHdv
dWxkIGJlIGRlbGF5ZWQgaW4gdGhlIHJlYWQgb3BlcmF0aW9uLgoKTm90IG11Y2ggdGltZSB0byBy
ZXBseSBub3cgKHdpbGwgZm9sbG93IHVwIGluIG1vcmUgZGV0YWlscyB0b21vcnJvdyksCmJ1dCB0
aGF0IHdhcyAodW5mb3J0dW5hdGVseT8pIGEgdm9sdW50YXJ5IGNoYW5nZToKCmh0dHA6Ly9sa21s
Lmtlcm5lbC5vcmcvci8yMDIwMDIwNTAwMzQ1Ny4yNDM0MC0yLWwyOWFoQGNvY2subGkKCndpdGgg
dGhlIGFyZ3VtZW50IHRoYXQgaWYgc29tZSBwcm9ncmFtIGdvZXMgb3V0IG9mIGl0cyB3YXkgdG8g
dXNlCk9fTk9OQkxPQ0sgb24gb3BlbiBpdCBjYW4gYWxzbyBoYW5kbGUgc2hvcnQgcmVhZHMgKHdo
aWNoIGJ5IHRoZSB3YXkgY2FuCmFsc28gaGFwcGVuIHdpdGhvdXQgT19OT05CTE9DSyBhcyBidWdz
IG9uIG90aGVyIGZpbGVzeXN0ZW1zLCBzbyBpbiBteQpvcGluaW9uIGlzIHNvbWV0aGluZyB0aGF0
IHNob3VsZCBiZSBoYW5kbGVkIHJlZ2FyZGxlc3Mgb2Ygd2hhdCB3ZSBkbwpoZXJlIC0tIEkndmUg
c2VlbiBlbm91Z2ggZGF0YSBiZWluZyBlYXRlbiBieSBwcm9ncmFtcyB0aGF0IHRha2UKc2hvcnRj
dXRzIG9uIElPIGFzIHNvb24gYXMgc29tZXRoaW5nIGdvZXMgd3JvbmcgaW5zdGVhZCBvZiBlcnJv
cmluZyBvcgp0YWtpbmcgY2FyZSBvZiB0aGVzZSkKClVuZm9ydHVuYXRlbHkgR05VIHRhciBkb2Vz
bid0LCBhbmQgTmlrb3MgVHNpcGluYWtpcyAoYWRkZWQgdG8gQ2NzKSBzZW50CmEgcGF0Y2ggdG8g
YnVnLXRhckAgaW4gLi4uIHNlcHRlbWJlciBsYXN0IHllYXIgd2hpY2ggbG9va2VkIGdvb2QgZW5v
dWdoCnRvIG1lIGJ1dCBkaWRuJ3Qgc2VlbSB0byBiZSB0YWtlbj8gSSBkaWRuJ3QgY2hlY2suCgoK
SSBhZ3JlZSB0aGlzIGlzbid0IHBvc2l4LCBidXQgaXQgd2FzIGRpc2N1c3NlZCBhcyBhIHF1aXJr
IHRoYXQgc2VlbWVkCmJldHRlciB0aGFuIHlldCBhbm90aGVyIHdlaXJkIG1vdW50IG9wdGlvbiB0
aGF0IGUuZy4gTkZTIGhhcyBmb3Igc3BlY2lhbApuZXRmcyBiZWhhdmlvdXIuCgpUaGUgYXJndW1l
bnQgd2FzIGZvciBzeW50aGV0aWMgZnMgaGF2aW5nIGEgZmlsZSB0aGF0IHdvdWxkIHN0cmVhbSB0
aGluZ3MKYW5kIGltcGxlbWVudGluZyB0YWlsIC1mIGxpa2UgYmVoYXZpb3VyIG9uIGl0LCBwcm9i
bGVtIGJlaW5nIHRoYXQgaWYKdGhleSB3b3VsZCBtYWtlIHRoZSBmYWtlLWZpbGUgYSBwaXBlIGl0
IHdvdWxkIHN0YXkgbG9jYWwgdG8gdGhlIGxpbnV4CmNsaWVudCBhbmQgbm90IGdvIHRocm91Z2gg
dGhlIDlwIHNlcnZlciwgc28gaXQgd2FzIGRlZW1lZCBkaWZmaWN1bHQgdG8KZW11bGF0ZSB0aGUg
YmVoYXZpb3VyLgpJZiB5b3UgaGF2ZSBhIHByYWN0aWNhbCB3YXkgb2YgZG9pbmcgdGhpcyB0aGVu
IEknbGwgYmUgaGFwcHkgdG8gcmV2ZXJ0ClNlcmdleSdzIGNvbW1pdCAoYWxzbyBhZGRlZCB0byBj
YyksIGFzIEkgY2FuIGFncmVlIHN0aWNraW5nIHRvIHBvc2l4CndoZW4gcG9zc2libGUgaXMgYmV0
dGVyLgoKPiA+IEkgd2FzIHRoaW5raW5nIHRvIHNvbWV0aGluZyBsaWtlIHRoYXQgKG5vdCB0ZXN0
ZWQgeWV0KToKPiA+IAo+ID4gLS0tIGEvZnMvOXAvdmZzX2ZpbGUuYwo+ID4gKysrIGIvZnMvOXAv
dmZzX2ZpbGUuYwo+ID4gQEAgLTM4OSw4ICszODksMjIgQEAgdjlmc19maWxlX3JlYWRfaXRlcihz
dHJ1Y3Qga2lvY2IgKmlvY2IsIHN0cnVjdCBpb3ZfaXRlciAqdD4KPiA+ICAgICAgICAgcDlfZGVi
dWcoUDlfREVCVUdfVkZTLCAiY291bnQgJXp1IG9mZnNldCAlbGxkXG4iLAo+ID4gICAgICAgICAg
ICAgICAgICBpb3ZfaXRlcl9jb3VudCh0byksIGlvY2ItPmtpX3Bvcyk7Cj4gPiAgCj4gPiAtICAg
ICAgIGlmIChpb2NiLT5raV9maWxwLT5mX2ZsYWdzICYgT19OT05CTE9DSykKPiA+ICsgICAgICAg
aWYgKGlvY2ItPmtpX2ZpbHAtPmZfZmxhZ3MgJiBPX05PTkJMT0NLKSB7Cj4gPiArICAgICAgICAg
ICAgICAgc2l6ZV90IGNvdW50ID0gaW92X2l0ZXJfY291bnQodG8pOwo+ID4gKwo+ID4gICAgICAg
ICAgICAgICAgIHJldCA9IHA5X2NsaWVudF9yZWFkX29uY2UoZmlkLCBpb2NiLT5raV9wb3MsIHRv
LCAmZXJyKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAoIXJldCkKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiBlcnI7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsg
ICAgICAgICAgICAgICAgKiBQT1NJWCByZXF1aXJlcyB0byBpZ25vcmUgT19OT05CTE9DSyBpZiBz
b21lIGRhdGEgaXMKPiA+ICsgICAgICAgICAgICAgICAgKiBhbHJlYWR5IGF2YWlsYWJsZS4KPiA+
ICsgICAgICAgICAgICAgICAgKi8KPiA+ICsgICAgICAgICAgICAgICBpZiAocmV0ICE9IGNvdW50
KSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBpb2NiLT5raV9wb3MgKz0gcmV0Owo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gcDlfY2xpZW50X3JlYWQoZmlkLCBpb2NiLT5r
aV9wb3MsIHRvLCAmZXJyKTsKPiA+ICsgICAgICAgICAgICAgICB9CgpUaGF0IHNlZW1zIG92ZXJs
eSBjb21wbGljYXRlZCwganVzdCB1c2UgcDlfY2xpZW50X3JlYWQgYXMgcGVyIHRoZSBlbHNlCihl
LmcuIHJlbW92ZSB0aGUgY29uZGl0aW9uKSBpZiB0aGF0J3Mgd2hhdCB5b3Ugd2FudC4KCi0tIApE
b21pbmlxdWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==

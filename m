Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A5E56CD8F
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 08:45:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAQgy-00020W-Og; Sun, 10 Jul 2022 06:45:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1oAQgx-00020Q-2p
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 06:45:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SuxhVONG9quAbA4ZGLT2XDljoXjAptxAeH3M8Kl1+kk=; b=Tc2Y7xXVtZ2+K79MH5DviaN9JB
 asAaPrC+tdlmrrIqHJEANw2U+vLFTvODsBhlChCcV+zVvPDsYBhoT1DN17HSRa9F9GRJIZUH5Q4h4
 hbkA0c7qHjgQYoSihDpCEF2Wy1FLIjU7OKci/DjFn+7KOfMWgnoFx5zdsopJN28v8MY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SuxhVONG9quAbA4ZGLT2XDljoXjAptxAeH3M8Kl1+kk=; b=MpbPODf5feOH2II1zbyFYnt/qk
 Wk4WLSky9ChIutQ7nC6BuAd6K2fl7jFFOERt8kEjqP61jmvHZVrCBzFJAMVWGNkoKcp3prE+1HDTb
 ow4s6Ou6KGkGSwE6fjJycm7jYbMxuatYw2c2W1IQ6bYs6SZhDYSvELrRmcPGu32GTsMM=;
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oAQgt-0001AI-Sg
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 06:45:19 +0000
Received: from [192.168.1.18] ([90.11.190.129]) by smtp.orange.fr with ESMTPA
 id AQgjoJcy1Zfs8AQgjo80s7; Sun, 10 Jul 2022 08:45:07 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 10 Jul 2022 08:45:07 +0200
X-ME-IP: 90.11.190.129
Message-ID: <311190f4-3eba-b2d2-1a5e-a00aad8d64dc@wanadoo.fr>
Date: Sun, 10 Jul 2022 08:45:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Tyler Hicks <tyhicks@linux.microsoft.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 09/07/2022 à 22:00, Tyler Hicks a écrit : > Ensure that
    the fid's iounit field is set to zero when a new fid is > created. Certain
    9P operations, such as OPEN and CREATE, allow the > server to r [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.12.242.124 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oAQgt-0001AI-Sg
Subject: Re: [V9fs-developer] [PATCH] net/9p: Initialize the iounit field
 during fid creation
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TGUgMDkvMDcvMjAyMiDDoCAyMjowMCwgVHlsZXIgSGlja3MgYSDDqWNyaXTCoDoKPiBFbnN1cmUg
dGhhdCB0aGUgZmlkJ3MgaW91bml0IGZpZWxkIGlzIHNldCB0byB6ZXJvIHdoZW4gYSBuZXcgZmlk
IGlzCj4gY3JlYXRlZC4gQ2VydGFpbiA5UCBvcGVyYXRpb25zLCBzdWNoIGFzIE9QRU4gYW5kIENS
RUFURSwgYWxsb3cgdGhlCj4gc2VydmVyIHRvIHJlcGx5IHdpdGggYW4gaW91bml0IHNpemUgd2hp
Y2ggdGhlIGNsaWVudCBjb2RlIGFzc2lnbnMgdG8gdGhlCj4gZmlkIHN0cnVjdCBzaG9ydGx5IGFm
dGVyIHRoZSBmaWQgaXMgY3JlYXRlZCBpbiBwOV9maWRfY3JlYXRlKCkuIE90aGVyCj4gb3BlcmF0
aW9ucyB0aGF0IGZvbGxvdyBhIGNhbGwgdG8gcDlfZmlkX2NyZWF0ZSgpLCBzdWNoIGFzIGFuIFhB
VFRSV0FMSywKPiBkb24ndCBpbmNsdWRlIGFuIGlvdW5pdCB2YWx1ZSBpbiB0aGUgcmVwbHkgbWVz
c2FnZSBmcm9tIHRoZSBzZXJ2ZXIuIEluCj4gdGhlIGxhdHRlciBjYXNlLCB0aGUgaW91bml0IGZp
ZWxkIHJlbWFpbmVkIHVuaW5pdGlhbGl6ZWQuIERlcGVuZGluZyBvbgo+IGFsbG9jYXRpb24gcGF0
dGVybnMsIHRoZSBpb3VuaXQgdmFsdWUgY291bGQgaGF2ZSBiZWVuIHNvbWV0aGluZwo+IHJlYXNv
bmFibGUgdGhhdCB3YXMgY2FycmllZCBvdmVyIGZyb20gcHJldmlvdXNseSBmcmVlZCBmaWRzIG9y
LCBpbiB0aGUKPiB3b3JzdCBjYXNlLCBjb3VsZCBoYXZlIGJlZW4gYXJiaXRyYXJ5IHZhbHVlcyBm
cm9tIG5vbi1maWQgcmVsYXRlZCB1c2FnZXMKPiBvZiB0aGUgbWVtb3J5IGxvY2F0aW9uLgo+IAo+
IFRoZSBidWcgd2FzIGRldGVjdGVkIGluIHRoZSBXaW5kb3dzIFN1YnN5c3RlbSBmb3IgTGludXgg
MiAoV1NMMikga2VybmVsCj4gYWZ0ZXIgdGhlIHVuaW5pdGlhbGl6ZWQgaW91bml0IGZpZWxkIHJl
c3VsdGVkIGluIHRoZSB0eXBpY2FsIHNlcXVlbmNlIG9mCj4gdHdvIGdldHhhdHRyKDIpIHN5c2Nh
bGxzLCBvbmUgdG8gZ2V0IHRoZSBzaXplIG9mIGFuIHhhdHRyIGFuZCBhbm90aGVyCj4gYWZ0ZXIg
YWxsb2NhdGluZyBhIHN1ZmZpY2llbnRseSBzaXplZCBidWZmZXIgdG8gZml0IHRoZSB4YXR0ciB2
YWx1ZSwgdG8KPiBoaXQgYW4gdW5leHBlY3RlZCBFUkFOR0UgZXJyb3IgaW4gdGhlIHNlY29uZCBj
YWxsIHRvIGdldHhhdHRyKDIpLiBBbgo+IHVuaW5pdGlhbGl6ZWQgaW91bml0IGZpZWxkIHdvdWxk
IHNvbWV0aW1lcyBmb3JjZSByc2l6ZSB0byBiZSBzbWFsbGVyCj4gdGhhbiB0aGUgeGF0dHIgdmFs
dWUgc2l6ZSBpbiBwOV9jbGllbnRfcmVhZF9vbmNlKCkgYW5kIHRoZSA5UCBzZXJ2ZXIgaW4KPiBX
U0wgcmVmdXNlZCB0byBjaHVuayB1cCB0aGUgUkVBRCBvbiB0aGUgYXR0cl9maWQgYW5kLCBpbnN0
ZWFkLCByZXR1cm5lZAo+IEVSQU5HRSB0byB0aGUgY2xpZW50LiBUaGUgdmlydGZzIHNlcnZlciBp
biBRRU1VIHNlZW1zIGhhcHB5IHRvIGNodW5rIHVwCj4gdGhlIFJFQUQgYW5kIHRoaXMgcHJvYmxl
bSBnb2VzIHVuZGV0ZWN0ZWQgdGhlcmUuIEhvd2V2ZXIsIHRoZXJlIGFyZQo+IGxpa2VseSBvdGhl
ciBub24teGF0dHIgaW1wbGljYXRpb25zIG9mIHRoaXMgYnVnIHRoYXQgY291bGQgY2F1c2UKPiBp
bmVmZmljaWVudCBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIGNsaWVudCBhbmQgc2VydmVyLgo+
IAo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogVHlsZXIgSGlj
a3MgPHR5aGlja3NAbGludXgubWljcm9zb2Z0LmNvbT4KPiAtLS0KPiAKPiBOb3RlIHRoYXQgSSBo
YXZlbid0IGhhZCBhIGNoYW5jZSB0byBpZGVudGlmeSB3aGVuIHRoaXMgYnVnIHdhcwo+IGludHJv
ZHVjZWQgc28gSSBkb24ndCB5ZXQgaGF2ZSBhIHByb3BlciBGaXhlcyB0YWcuIFRoZSBoaXN0b3J5
IGxvb2tlZCBhCj4gbGl0dGxlIHRyaWNreSB0byBtZSBidXQgSSdsbCBoYXZlIGFub3RoZXIgbG9v
ayBpbiB0aGUgY29taW5nIGRheXMuIFdlCj4gc3RhcnRlZCBoaXR0aW5nIHRoaXMgYnVnIGFmdGVy
IHRyeWluZyB0byBtb3ZlIGZyb20gbGludXgtNS4xMC55IHRvCj4gbGludXgtNS4xNS55IGJ1dCBJ
IGRpZG4ndCBzZWUgYW55IG9idmlvdXMgY2hhbmdlcyBiZXR3ZWVuIHRob3NlIHR3bwo+IHNlcmll
cy4gSSdtIG5vdCBjb25maWRlbnQgb2YgdGhpcyB0aGVvcnkgYnV0IHBlcmhhcHMgdGhlIGZpZCBy
ZWZjb3VudGluZwo+IGNoYW5nZXMgaW1wYWN0ZWQgdGhlIGZpZCBhbGxvY2F0aW9uIHBhdHRlcm5z
IGVub3VnaCB0byB1bmNvdmVyIHRoZQo+IGxhdGVudCBidWc/Cj4gCj4gICBuZXQvOXAvY2xpZW50
LmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1n
aXQgYS9uZXQvOXAvY2xpZW50LmMgYi9uZXQvOXAvY2xpZW50LmMKPiBpbmRleCA4YmJhMGQ5Y2Y5
NzUuLjFkZmNlYjkxNTRmNyAxMDA2NDQKPiAtLS0gYS9uZXQvOXAvY2xpZW50LmMKPiArKysgYi9u
ZXQvOXAvY2xpZW50LmMKPiBAQCAtODk5LDYgKzg5OSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcDlfZmlk
ICpwOV9maWRfY3JlYXRlKHN0cnVjdCBwOV9jbGllbnQgKmNsbnQpCj4gICAJZmlkLT5jbG50ID0g
Y2xudDsKPiAgIAlmaWQtPnJkaXIgPSBOVUxMOwo+ICAgCWZpZC0+ZmlkID0gMDsKPiArCWZpZC0+
aW91bml0ID0gMDsKPiAgIAlyZWZjb3VudF9zZXQoJmZpZC0+Y291bnQsIDEpOwo+ICAgCj4gICAJ
aWRyX3ByZWxvYWQoR0ZQX0tFUk5FTCk7CgpIaSwKeW91IGNvdWxkIGFsc28ga3phbGxvYyAnZmlk
JyBhbmQgcmVtb3ZlIHRoZSBtZW1zZXQsICI9IE5VTEwiIGFuZCAiPSAwIi4KVGhpcyB3b3VsZCBi
ZSBldmVuIG1vcmUgZnV0dXJlIHByb29mIGFuZCB3b3VsZCBzYXZlIHNvbWUgTG9DLgoKSnVzdCBt
eSAyYywKCkNKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=

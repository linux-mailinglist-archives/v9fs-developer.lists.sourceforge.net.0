Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FBD6CC71B
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 17:52:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phBcJ-00063s-MA;
	Tue, 28 Mar 2023 15:52:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1phBcI-00063h-46
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 15:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e3G5lMN0QEUYC4Qox2hs9k7l4ZdTOZOuw9tIXiq/0Fg=; b=dOmQjUiAQrfQ3TZ8h0w5BTlwGe
 6QRpIvSweZT1tVzYICMCRTwCOpFPqVmAQuB68qOw/606ztGYnW68iI/IdURySFpKy+mIYzeIkQPrg
 2hhTgB0A+RfKtpyz9zy0WhCSh/uoijWLvJTSd2+yAaidCcYrDv0kVnwiSQ9IcAV7kF2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e3G5lMN0QEUYC4Qox2hs9k7l4ZdTOZOuw9tIXiq/0Fg=; b=O/Oj/M2MJPNIWgLxfp+DTLTwZ7
 Mn/egLwZG2AmSUDGuaMxAH8onCl8JzXMhfcJs0awzlYJmvmWRCsKMp+Ct+ja6ziKIUNAEqiegtn5I
 Lq8FlzV0ra8JrOAkjZWpuvjNnkvE+r4xstEWRX3hS6hLGQGNJ8kNe4/3nI3lwTB9xnUw=;
Received: from mail-yb1-f179.google.com ([209.85.219.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phBcH-0007JO-8x for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 15:52:09 +0000
Received: by mail-yb1-f179.google.com with SMTP id z83so15680169ybb.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Mar 2023 08:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680018723;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e3G5lMN0QEUYC4Qox2hs9k7l4ZdTOZOuw9tIXiq/0Fg=;
 b=DPPJhfzTip0i0zk2bPuZuLckRa2iJVTpAHAnPvYVJp5dAFt4JERB8z7Mho/gcph0IV
 lgIgOW0VTQdrHNgQ0+OkoFcVDywTJku3c31KHPVHctSzJLWqZzRXPMuYf9piRBhlIlt0
 tLrTRlZHaz7CjEKgvjFyCdZu0MAfONMKRhxonCo5ST8w/OEU9LArkGtF4YKUh9W5MOYR
 e9jhZEKpa+WMihQMl9hi1kvgfgJRPhEcDvqmrtP/3/OJ3GUbtQ/SSbEtc5vYfeugulIv
 E1UxrQ/NmhGrUoJAnNU56HUoRU7xZ7WPiKXJcw1WqGZiIK3D+2VtIKsD1MhNPSvqs38B
 cKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680018723;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=e3G5lMN0QEUYC4Qox2hs9k7l4ZdTOZOuw9tIXiq/0Fg=;
 b=RGTNsEzA9XfHNLB1WLM8GlihtYV5Ao0VYEUHLzBIvgEYwrpXPxlk5bWln71Q8ijHHz
 Sl0drJVKcF7HZ9+k71y8X0yqsQ3DQt5f0HnH89Wq+8Ryr9LRZ2rbq621KSMX9v5+TL2+
 CoSfvkYZ/8xgUww2ZUxSFkYo5hgvqaE00Pk8GsNPTj2zDcugmLIt7BH0zik7RTbz+fz3
 R+cOiOPkdrdvwDT+ifYX7UjUqpTM20en/sfSmQvuJ2rb7JCkOFMQq/4ed6d0H+upmwqy
 O5DI8BREEKxRPkcWg96u4UeoMVC6Gr6faJHjRgOgw6Yvm+J1aY4GBHVaFUuffA5ti0xk
 /o1A==
X-Gm-Message-State: AAQBX9emT12UPHpChLf6fZOHCMzK2h1NmrJzn1wqII6Ifpx+T5xtq5kc
 S0Gd1T0VqfJOU5Fqv7bEyUwf9o46tt+0oCXnNVs=
X-Google-Smtp-Source: AKy350ZfTgUeEwFQTG2UMGEsb0KpsteEhATGz400mc3KzrBJRXixMW1G6R2KRNzU29dD9BMfwWo93zONg0vVXS+TKD4=
X-Received: by 2002:a05:6902:18d5:b0:b75:3fd4:1b31 with SMTP id
 ck21-20020a05690218d500b00b753fd41b31mr10707743ybb.1.1680018722397; Tue, 28
 Mar 2023 08:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <ZCEIEKC0s/MFReT0@7e9e31583646> <3443961.DhAEVoPbTG@silver>
In-Reply-To: <3443961.DhAEVoPbTG@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 28 Mar 2023 10:51:51 -0500
Message-ID: <CAFkjPT=j1esw=q-w5KTyHKDZ42BEKCERy-56TiP+Z7tdC=y05w@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As I work through the documentation rework and to some extent
 the testing matrix -- I am reconsidering some choices and wanted to open
 up the discussion here. TLDR; I'm thinking of reworking the cache options
 before the merge window to keep things simple while setting up for some of
 the future options. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phBcH-0007JO-8x
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Add new options to Documentation
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QXMgSSB3b3JrIHRocm91Z2ggdGhlIGRvY3VtZW50YXRpb24gcmV3b3JrIGFuZCB0byBzb21lIGV4
dGVudCB0aGUKdGVzdGluZyBtYXRyaXggLS0gSSBhbSByZWNvbnNpZGVyaW5nIHNvbWUgY2hvaWNl
cyBhbmQgd2FudGVkIHRvIG9wZW4KdXAgdGhlIGRpc2N1c3Npb24gaGVyZS4KClRMRFI7IEknbSB0
aGlua2luZyBvZiByZXdvcmtpbmcgdGhlIGNhY2hlIG9wdGlvbnMgYmVmb3JlIHRoZSBtZXJnZQp3
aW5kb3cgdG8ga2VlcCB0aGluZ3Mgc2ltcGxlIHdoaWxlIHNldHRpbmcgdXAgZm9yIHNvbWUgb2Yg
dGhlIGZ1dHVyZQpvcHRpb25zLgoKV2hpbGUgd2UgaGF2ZSBhIGJ1bmNoIG9mIG5ldyBvcHRpb25z
LCBpbiBwcmFjdGljZSBJIGV4cGVjdCB1c2VycyB0bwpwcm9iYWJseSBjb25zb2xpZGF0ZSBhcm91
bmQgdGhyZWUgbW9kZWxzOiBubyBjYWNoaW5nLCB0aWdodCBjYWNoZXMsCmFuZCBleHBpcmluZyBj
YWNoZXMgd2l0aCBmc2NhY2hlIGJlaW5nIGFuIG9ydGhvZ29uYWwgYWRkLW9uIHRvIHRoZQpsYXN0
IHR3by4KClRoZSB1bHRpbWF0ZSBnb2FsIGlzIHRvIHNpbXBsaWZ5IHRoZSBvcHRpb25zIGJhc2Vk
IG9uIGV4cGVjdGVkIHVzZSBtb2RlbHM6CgotIGNhY2hlPVsgbm9uZSwgZmlsZSwgYWxsIF0gKG5v
bmUgaXMgY3VycmVudGx5IGRlZmF1bHQpCi0gd3JpdGVfcG9saWN5ID0gWyAqd3JpdGV0aHJvdWdo
LCB3cml0ZWJhY2sgXSAod3JpdGV0aHJvdWdoIHdvdWxkIGJlIGRlZmF1bHQpCi0gY2FjaGVfdmFs
aWRhdGUgPSBbIG5ldmVyLCAqb3BlbiwgeCAoc2Vjb25kcykgXSAgKGNhY2hlX3ZhbGlkYXRlCndv
dWxkIGRlZmF1bHQgdG8gb3BlbikKLSBmc2NhY2hlCgpTbywgbWFwcGluZyBvZiBleGlzdGluZyAo
ZGVwcmVjYXRlZCkgbGVnYWN5IG1vZGVzOgotIG5vbmUgKG9idmlvdXMpIHdyaXRlX3BvbGljeT13
cml0ZXRocm91Z2gKLSAqcmVhZGFoZWFkIC0+IGNhY2hlPWZpbGUgY2FjaGVfdmFsaWRhdGVfb3Bl
biB3cml0ZV9wb2xpY3k9d3JpdGV0aHJvdWdoCi0gbW1hcCAtPiBjYWNoZT1maWxlIGNhY2hlX3Zh
bGlkYXRlPW9wZW4gd3JpdGVfcG9saWN5PXdyaXRlYmFjawotIGxvb3NlIC0+IGNhY2hlPWFsbCBj
YWNoZV92YWxpZGF0ZT1uZXZlciB3cml0ZV9wb2xpY3k9d3JpdGViYWNrCi0gZnNjYWNoZSAtPiBj
YWNoZT1hbGwgY2FjaGVfdmFsaWRhdGU9bmV2ZXIgd3JpdGVfcG9saWN5PXdyaXRlYmFjayAmCmZz
Y2FjaGUgZW5hYmxlZAoKU29tZSB0aGluZ3MgSSdtIGxlc3MgY2VydGFpbiBvZjogY2FjaGVfdmFs
aWRhdGlvbiBpcyBwcm9iYWJseSBhbgppbXBlcmZlY3QgdGVybSBhcyBpcyB1c2luZyAnb3Blbicg
YXMgb25lIG9mIHRoZSBvcHRpb25zLCBpbiB0aGlzIGNhc2UKSSdtIGVudmlzaW9uaW5nICdvcGVu
JyB0byBtZWFuIG9wZW4tdG8tY2xvc2UgY29oZXJlbmN5IGZvciBmaWxlCmNhY2hpbmcgKGNhY2hl
IGlzIG9ubHkgdmFsaWRhdGVkIG9uIG9wZW4pIGFuZCB2YWxpZGF0aW9uIG9uIGxvb2t1cCBmb3IK
ZGlyLWNhY2hlIGNvaGVyZW5jeSAodXNpbmcgcWlkLnZlcnNpb24pLiBTcGVjaWZ5aW5nIGEgbnVt
YmVyIGhlcmUKZXhwaXJlcyBleGlzdGluZyBjYWNoZXMgYW5kIHJlcXVpcmVzIHZhbGlkYXRpb24g
YWZ0ZXIgYSBjZXJ0YWluIG51bWJlcgpvZiBzZWNvbmRzIChpcyB0aGF0IHRoZSByaWdodCBncmFu
dWxhcml0eSk/CgpTbywgSSB0aGluayB0aGlzIGlzIG1vcmUgY2xlYXIgZnJvbSBhIGRvY3VtZW50
YXRpb24gc3RhbmRwb2ludCwgYnV0CnVuZm9ydHVhbnRlbHkgSSBoYXZlbid0IHJlZHVjZWQgdGhl
IHRlc3QgbWF0cml4IG11Y2ggLSBpbiBmYWN0IEkndmUKcHJvYmFibHkgbWFkZSBpdCB3b3JzZS4g
SSBleHBlY3QgdGhlIGNvbW1vbiBjYXNlcyB0byBiYXNpY2FsbHkgYmU6Ci0gY2FjaGU9bm9uZQot
IG5ldyBkZWZhdWx0PyAoY2FjaGU9YWxsLCB3cml0ZV9wb2xpY3k9d3JpdGViYWNrLCBjYWNoZV92
YWxpZGF0ZT1vcGVuKQotIGZzY2FjaGUgdy8oY2FjaGU9YWxsLCB3cml0ZV9wb2xpY3k9d3JpdGVi
YWNrLCBjYWNoZV92YWxpZGF0ZT01KQoKV2hpY2ggd291bGQgZ2l2ZSB1cyAzIGNvbmZpZ3VyYXRp
b25zIHRvIHRlc3QgYWdhaW5zdCB2ZXJzdXMgMjUKKGFzc3VtaW5nIHRlc3RpbmcgZm9yIG9uZSB0
aW1lIHZhbHVlIGZvciBjYWNoZS12YWxpZGF0ZT14KS4gSW1wb3J0YW50CnRvIHJlbWVtYmVyIHRo
YXQgdGhpcyBpcyBqdXN0IGNhY2hlIG1vZGUgdGVzdHMsIHRoZSBvdGhlciBtb3VudApvcHRpb25z
IGFjdCBhcyBtdWx0aXBsaWVycy4KClRob3VnaHRzPyAgQWx0ZXJuYXRpdmVzPwoKICAgICAgICAt
ZXJpYwoKT24gTW9uLCBNYXIgMjcsIDIwMjMgYXQgMTA6MzjigK9BTSBDaHJpc3RpYW4gU2Nob2Vu
ZWJlY2sKPGxpbnV4X29zc0BjcnVkZWJ5dGUuY29tPiB3cm90ZToKPgo+IE9uIE1vbmRheSwgTWFy
Y2ggMjcsIDIwMjMgNTowNTo1MiBBTSBDRVNUIEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGU6Cj4g
PiBOZWVkIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgbmV3IG1vdW50IGZsYWdzCj4g
PiBhbmQgY2FjaGUgbW9kZXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRXJpYyBWYW4gSGVuc2Jl
cmdlbiA8ZXJpY3ZoQGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2ZpbGVz
eXN0ZW1zLzlwLnJzdCB8IDI5ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zLzlwLnJzdCBiL0RvY3VtZW50YXRp
b24vZmlsZXN5c3RlbXMvOXAucnN0Cj4gPiBpbmRleCAwZTgwMGI4ZjczY2MuLjZkMjU3ODU0YTAy
YSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0Cj4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zLzlwLnJzdAo+ID4gQEAgLTc4LDE5ICs3OCwx
OCBAQCBPcHRpb25zCj4gPiAgICAgICAgICAgICAgIG9mZmVyaW5nIHNldmVyYWwgZXhwb3J0ZWQg
ZmlsZSBzeXN0ZW1zLgo+ID4KPiA+ICAgIGNhY2hlPW1vZGUgc3BlY2lmaWVzIGEgY2FjaGluZyBw
b2xpY3kuICBCeSBkZWZhdWx0LCBubyBjYWNoZXMgYXJlIHVzZWQuCj4gPiAtCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgbm9uZQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZGVmYXVsdCBubyBjYWNoZSBwb2xpY3ksIG1ldGFkYXRhIGFuZCBkYXRhCj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBhbGlrZSBhcmUgc3luY2hyb25vdXMuCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgbG9vc2UKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5v
IGF0dGVtcHRzIGFyZSBtYWRlIGF0IGNvbnNpc3RlbmN5LAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW50ZW5kZWQgZm9yIGV4Y2x1c2l2ZSwgcmVhZC1vbmx5IG1vdW50cwo+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgIGZzY2FjaGUKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVzZSBGUy1DYWNoZSBmb3IgYSBwZXJzaXN0ZW50LCByZWFkLW9ubHkKPiA+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNhY2hlIGJhY2tlbmQuCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgbW1hcAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bWluaW1hbCBjYWNoZSB0aGF0IGlzIG9ubHkgdXNlZCBmb3IgcmVhZC13cml0ZQo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbW1hcC4gIE5vcnRoaW5nIGVsc2UgaXMgY2FjaGVk
LCBsaWtlIGNhY2hlPW5vbmUKPiA+ICsgICAgICAgICAgICAgTW9kZXMgYXJlIHByb2dyZXNzaXZl
IGFuZCBpbmNsdXNpdmUuICBGb3IgZXhhbXBsZSwgc3BlY2lmeWluZyBmc2NhY2hlCj4gPiArICAg
ICAgICAgICAgIHdpbGwgdXNlIGxvb3NlIGNhY2hlcywgd3JpdGViYWNrLCBhbmQgcmVhZGFoZWFk
LiAgRHVlIHRvIHRoZWlyCj4gPiArICAgICAgICAgICAgIGluY2x1c2l2ZSBuYXR1cmUsIG9ubHkg
b25lIGNhY2hlIG1vZGUgY2FuIGJlIHNwZWNpZmllZCBwZXIgbW91bnQuCj4KPiBJIHdvdWxkIGhp
Z2hseSByZWNvbW1lbmQgdG8gcmF0aGVyIHNwZWNpZnkgYmVsb3cgZm9yIGVhY2ggb3B0aW9uICJ0
aGlzIG9wdGlvbgo+IGltcGxpZXMgd3JpdGViYWNrLCByZWFkYWhlYWQgLi4uIiBldGMuLCBhcyBp
dCBpcyBub3Qgb2J2aW91cyBvdGhlcndpc2Ugd2hpY2gKPiBvcHRpb24gd291bGQgZXhhY3RseSBp
bXBseSB3aGF0LiBJdCBpcyB3b3J0aCB0aG9zZSBleHRyYSBmZXcgbGluZXMgSU1PIHRvCj4gYXZv
aWQgY29uZnVzaW9uLgo+Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgPT09PT09PT09
ICAgICAgID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIG5vbmUgICAgICAgICAgICBubyBjYWNoZSBvZiBmaWxlIG9y
IG1ldGFkYXRhCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVhZGFoZWFkICAgICAgIHJlYWRh
aGVhZCBjYWNoaW5nIG9mIGZpbGVzCj4gPiArICAgICAgICAgICAgICAgICAgICAgd3JpdGViYWNr
ICAgICAgIGRlbGF5ZWQgd3JpdGViYWNrIG9mIGZpbGVzCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgbW1hcCAgICAgICAgICAgIHN1cHBvcnQgbW1hcCBvcGVyYXRpb25zIHJlYWQvd3JpdGUgd2l0
aCBjYWNoZQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxvb3NlICAgICAgICAgICBtZXRhLWRh
dGEgYW5kIGZpbGUgY2FjaGUgd2l0aCBubyBjb2hlcmVuY3kKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBmc2NhY2hlICAgICAgICAgdXNlIEZTLUNhY2hlIGZvciBhIHBlcnNpc3RlbnQgY2FjaGUg
YmFja2VuZAo+ID4gKyAgICAgICAgICAgICAgICAgICAgID09PT09PT09PSAgICAgICA9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+Cj4gPiAgICBkZWJ1Zz1u
ICAgIHNwZWNpZmllcyBkZWJ1ZyBsZXZlbC4gIFRoZSBkZWJ1ZyBsZXZlbCBpcyBhIGJpdG1hc2su
Cj4gPgo+ID4gQEAgLTEzNyw2ICsxMzYsMTAgQEAgT3B0aW9ucwo+ID4gICAgICAgICAgICAgICBU
aGlzIGNhbiBiZSB1c2VkIHRvIHNoYXJlIGRldmljZXMvbmFtZWQgcGlwZXMvc29ja2V0cyBiZXR3
ZWVuCj4gPiAgICAgICAgICAgICAgIGhvc3RzLiAgVGhpcyBmdW5jdGlvbmFsaXR5IHdpbGwgYmUg
ZXhwYW5kZWQgaW4gbGF0ZXIgdmVyc2lvbnMuCj4gPgo+ID4gKyAgZGlyZWN0aW8gICBieXBhc3Mg
cGFnZSBjYWNoZSBvbiBhbGwgcmVhZC93cml0ZSBvcGVyYXRpb25zCj4gPiArCj4gPiArICBpZ25v
cmVxdiAgIGlnbm9yZSBxaWQudmVyc2lvbj09MCBhcyBhIG1hcmtlciB0byBpZ25vcmUgY2FjaGUK
PiA+ICsKPiA+ICAgIG5veGF0dHIgICAgZG8gbm90IG9mZmVyIHhhdHRyIGZ1bmN0aW9ucyBvbiB0
aGlzIG1vdW50Lgo+ID4KPiA+ICAgIGFjY2VzcyAgICAgdGhlcmUgYXJlIGZvdXIgYWNjZXNzIG1v
ZGVzLgo+ID4KPgo+Cj4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK

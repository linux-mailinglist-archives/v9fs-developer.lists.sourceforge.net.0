Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 012973110DC
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Feb 2021 20:15:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l86ZQ-0001d3-RN; Fri, 05 Feb 2021 19:15:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <collectors.158t@gmail.com>) id 1l86ZM-0001cl-8o
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 19:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3vrZrz9z6102/q5p/Yo2UFXdr+Qbd+1+NvyEMWoYkr8=; b=J2x8BJRBi0qxCjjtBuOxX3tK5+
 M5/qQz4lNq66YZuQV1PMlCXTPyWJ8GxftiTik0DBqRR8ABodvBTr06/0E9SgztIPB8FWS/fm3IvP5
 kD5zdc8+CmjtuLnJdqCfGz3V6kgpA5XKzXA9S1Pr4jG87t/f0P9bIiTerJTCvIP4Fpbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3vrZrz9z6102/q5p/Yo2UFXdr+Qbd+1+NvyEMWoYkr8=; b=gKcalwWhXyVyJ+qbA5TBoLjfZj
 uEtQ34t92hmsNytYfcRGTgXRRLDcvbXTvFRglM5dAAezBScKKB4eSYzLvCGGHdG0ZQ9XV0sdD+5ta
 wFvbY6m66QpFhsCPmH08IpELKL2zi4QxDkQJCOkWz1aS8HUPSToxYvU38dhW/Ej9yzoo=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l86ZE-008idE-Lq
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 19:15:04 +0000
Received: by mail-ed1-f42.google.com with SMTP id l12so10136565edt.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 05 Feb 2021 11:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3vrZrz9z6102/q5p/Yo2UFXdr+Qbd+1+NvyEMWoYkr8=;
 b=f31M4L/oVbBMgtecd7MIW0JuNV9zAQbYPNcqkkEtDGOaGW4byiQfIN/LW+x8LmoPuT
 KsS2xGEIuQnsykqjUP6q/GfBs+xmXXGw6A61KIvYEtgQKDdxikIS/Vhiba3V+Al311YC
 tLOOg9+Qq6Vy9jBtm668IcuE5XUVjBn+wmn7Um90aVwwLGlH0U1wq7H5OvRudJc3F6+7
 fleb2rD+Bl14SiEnuGFdR76Z2ya2EeuFpY/5vg+CJZbWVtoSPOtTqf+m0GHCFlx/ZVS1
 zNnkRSgb5b9TgWtMLc1LlZl1epTc1N5+xW6uUV/meHHR673ELauYvUnpDML0bTZ3YLRY
 rnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3vrZrz9z6102/q5p/Yo2UFXdr+Qbd+1+NvyEMWoYkr8=;
 b=nUAuEFEjID12mm8f1oIDbWsRX7seIi5ic2tnuc6NHP9TY2zEB7YS/fMhwptSXiCcG3
 na4QkbX8FjmVaQZXTaMvJq5sQPFvs6+8adD8qpYO2ICu2cqlP/s0aDVLXn0zu90y/rgF
 p2RwhGmNyXUb/PpQThgfFrb3U5RngXv8e86cLi6a60fREQp3e8axcDJmsOK3fdJI+1A1
 7xPWStTv5M4cCoB/NOdcNLpJNffr9HD4Q5hniyujNPGuiqQnI8klqE/4reiTrB9f8Ucg
 AguXtx8Q6qHTP7dpmUpv81X9+2eGRDkq4ioV8SyQpnlnDtWH4tCcDR6tOjWMSYSkpYrz
 g/0g==
X-Gm-Message-State: AOAM532IOhMpO1IUhaEw0Iwz/yabGXx0+82FWCzpG8j4elIgBZp/O5Mf
 X7/MFcVrqhvGhUU5pckY9gUk2i5hUKHM+XA4S/Y=
X-Google-Smtp-Source: ABdhPJzwflfPMhrL1yPYw8pW24zjXZjY31dcraedjZW00KVv/98TWGXhBgFZABs3wJdR/SH6bxrYenKfLOby6RO5Phg=
X-Received: by 2002:a05:6402:1c0f:: with SMTP id
 ck15mr3818942edb.16.1612552490410; 
 Fri, 05 Feb 2021 11:14:50 -0800 (PST)
MIME-Version: 1.0
References: <2522190.1612544534@warthog.procyon.org.uk>
In-Reply-To: <2522190.1612544534@warthog.procyon.org.uk>
From: Spam Collector <collectors.158t@gmail.com>
Date: Fri, 5 Feb 2021 11:14:37 -0800
Message-ID: <CAEBBD4pwOeEP449-XALhAb3XZEK+B4zvprmwMeRmfdOg2UiwjA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (collectors.158t[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.42 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l86ZE-008idE-Lq
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Upcoming for next merge window: fscache and
 netfs lib
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, Anna Schumaker <anna.schumaker@netapp.com>,
 David Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

bGludXMKCk9uIEZyaSwgRmViIDUsIDIwMjEgYXQgOToxNiBBTSBEYXZpZCBIb3dlbGxzIDxkaG93
ZWxsc0ByZWRoYXQuY29tPiB3cm90ZToKCj4KPiBIaSBMaW51cywKPgo+IFRvIGFwcHJpc2UgeW91
IGluIGFkdmFuY2UsIEknbSBpbnRlbmRpbmcgdG8gc3VibWl0IGEgcHVsbCByZXF1ZXN0IGZvciBh
Cj4gcGFydGlhbCBtb2Rlcm5pc2F0aW9uIG9mIHRoZSBmc2NhY2hlIEkvTyBzdWJzeXN0ZW0sIHdo
aWNoIGNhbiBiZSBmb3VuZAo+IGhlcmU6Cj4KPgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2Rob3dlbGxzL2xpbnV4LWZzLmdpdC9sb2cvP2g9ZnNjYWNo
ZS1uZXh0Cj4KPiBUaGUgbWFpbiBwYXJ0cyBvZiBpdCBhcmU6Cj4KPiAgKDEpIEluc3RpdHV0ZSBh
IGhlbHBlciBsaWJyYXJ5IGZvciBuZXR3b3JrIGZpbGVzeXN0ZW1zLiAgVGhlIGZpcnN0IHN0YWdl
Cj4gb2YKPiAgICAgIHRoaXMgaGFuZGxlcyAtPnJlYWRwYWdlKCksIC0+cmVhZGFoZWFkKCkgYW5k
IHBhcnQgb2YgLT53cml0ZV9iZWdpbigpCj4gb24KPiAgICAgIGJlaGFsZiBvZiB0aGUgbmV0ZnMs
IHJlcXVpcmluZyB0aGUgbmV0ZnMgdG8gcHJvdmlkZSBhIHZlY3RvciB0bwo+IHBlcmZvcm0gYQo+
ICAgICAgcmVhZCB0byBzb21lIHBhcnQgb2YgYW4gaW5vZGUuCj4KPiAgICAgIFRoaXMgYWxsb3dz
IGhhbmRsaW5nIG9mIHRoZSBmb2xsb3dpbmcgdG8gYmUgKGF0IGxlYXN0IHBhcnRpYWxseSkgbW92
ZWQKPiAgICAgIG91dCBvZiBhbGwgdGhlIG5ldHdvcmsgZmlsZXN5c3RlbXMgYW5kIGNvbnNvbGlk
YXRlZCBpbiBvbmUgcGxhY2U6Cj4KPiAgICAgICAgIC0gY2hhbmdlcyBpbiBWTSB2ZWN0b3JzIChN
YXR0aGV3IFdpbGNveCdzIEdyYW5kIFBsYW5z4oSiOy0pCj4gICAgICAgICAgIC0gdHJhbnNwYXJl
bnQgaHVnZSBwYWdlIHN1cHBvcnQKPiAgICAgICAgIC0gc2hhcGluZyBvZiByZWFkcwo+ICAgICAg
ICAgICAtIHJlYWRhaGVhZCBleHBhbnNpb24KPiAgICAgICAgICAgLSBmcyBhbGlnbm1lbnQvZ3Jh
bnVsYXJpdHkgKGNlcGgsIHBuZnMpCj4gICAgICAgICAgIC0gY2FjaGUgYWxpZ25tZW50L2dyYW51
bGFyaXR5Cj4gICAgICAgICAtIHNsaWNpbmcgb2YgcmVhZHMKPiAgICAgICAgICAgLSByc2l6ZQo+
ICAgICAgICAgICAtIGtlZXBpbmcgbXVsdGlwbGUgcmVhZCBpbiBmbGlnaHQgICAgIH0gU3RldmUg
RnJlbmNoIHdvdWxkIGxpa2UKPiAgICAgICAgICAgLSBtdWx0aWNoYW5uZWwgZGlzdHJpYnV0aW9u
ICAgICAgICAgICB9IGJ1dCBmb3IgdGhlIGZ1dHVyZQo+ICAgICAgICAgICAtIG11bHRpc2VydmVy
IGRpc3RyaWJ1dGlvbiAoY2VwaCwgcG5mcykKPiAgICAgICAgICAgLSBzdGl0Y2hpbmcgdG9nZXRo
ZXIgcmVhZHMgZnJvbSB0aGUgY2FjaGUgYW5kIHJlYWRzIGZyb20gdGhlCj4gbmV0d29yawo+ICAg
ICAgICAgLSBzYXZpbmcgZGF0YSByZWFkIGZyb20gdGhlIHNlcnZlciBpbnRvIHRoZSBjYWNoZQo+
ICAgICAgICAgLSByZXRyeS9yZWlzc3VlIGhhbmRsaW5nCj4gICAgICAgICAgIC0gZmFsbGJhY2sg
YWZ0ZXIgY2FjaGUgZmFpbHVyZQo+ICAgICAgICAgLSBzaG9ydCByZWFkcwo+ICAgICAgICAgLSBm
c2NyeXB0IGRhdGEgZGVjcnlwdGlvbiAoSmVmZiBMYXl0b24gaXMgY29uc2lkZXJpbmcgZm9yIHRo
ZQo+IGZ1dHVyZSkKPgo+ICAoMikgQWRkIGFuIGFsdGVybmF0ZSBjYWNoZSBJL08gQVBJIGZvciB1
c2Ugd2l0aCB0aGUgbmV0ZnMgbGliIHRoYXQgbWFrZXMKPiB1c2UKPiAgICAgIG9mIGtpb2NicyBp
biB0aGUgY2FjaGUgdG8gZG8gZGlyZWN0IEkvTyBiZXR3ZWVuIHRoZSBjYWNoZSBmaWxlcyBhbmQK
PiB0aGUKPiAgICAgIG5ldGZzIHBhZ2VzLgo+Cj4gICAgICBUaGlzIGlzIGludGVuZGVkIHRvIHJl
cGxhY2UgdGhlIGN1cnJlbnQgSS9PIEFQSSB0aGF0IGNhbGxzIHRoZQo+IGJhY2tpbmcgZnMKPiAg
ICAgIHJlYWRwYWdlIG9wIGFuZCB0aGFuIHNub29waW5nIHRoZSB3YWl0IHF1ZXVlcyBmb3IgY29t
cGxldGlvbiB0byByZWFkCj4gYW5kCj4gICAgICB1c2luZyB2ZnNfd3JpdGUoKSB0byB3cml0ZS4g
IEl0IHdhc24ndCBwb3NzaWJsZSB0byBkbyBpbi1rZXJuZWwgRElPCj4gd2hlbgo+ICAgICAgSSBm
aXJzdCB3cm90ZSBjYWNoZWZpbGVzIC0gYW5kIHRoaXMgbWFrZXMgaXQgYSBsb3Qgc2ltcGxlciBh
bmQgbW9yZQo+ICAgICAgcm9idXN0IChhbmQgdXNlcyBhIGxvdCBsZXNzIG1lbW9yeSkuCj4KPiAg
KDMpIEFkZCBhbiBJVEVSX1hBUlJBWSBpb3ZfaXRlciB0aGF0IGFsbG93cyBJL08gaXRlcmF0aW9u
IHRvIGJlIGRvbmUgb24gYW4KPiAgICAgIHhhcnJheSBvZiBwaW5uZWQgcGFnZXMgKHN1Y2ggYXMg
aW5vZGUtPmlfbWFwcGluZy0+aV9wYWdlcyksIHRoZXJlYnkKPiAgICAgIGF2b2lkaW5nIHRoZSBu
ZWVkIHRvIGFsbG9jYXRlIGEgYnZlYyBhcnJheSB0byByZXByZXNlbnQgdGhpcy4KPgo+ICAgICAg
VGhpcyBpcyB1c2VkIHRvIHByZXNlbnQgYSBzZXQgb2YgbmV0ZnMgcGFnZXMgdG8gdGhlIGNhY2hl
IHRvIGRvIERJTyBvbgo+ICAgICAgYW5kIGlzIGFsc28gdXNlZCBieSBhZnMgdG8gcHJlc2VudCBu
ZXRmcyBwYWdlcyB0byBzZW5kbXNnLiAgSXQgY291bGQKPiBhbHNvCj4gICAgICBiZSB1c2VkIGJ5
IHVuZW5jcnlwdGVkIGNpZnMgdG8gcGFzcyB0aGUgcGFnZXMgdG8gdGhlIFRDUCBzb2NrZXQgaXQK
PiB1c2VzCj4gICAgICAoaWYgaXQncyBkb2luZyBUQ1ApIGFuZCBteSBwYXRjaCBmb3IgOXAgKHdo
aWNoIGlzbid0IGluY2x1ZGVkIGhlcmUpCj4gY2FuCj4gICAgICBtYWtlIHVzZSBvZiBpdC4KPgo+
ICAoNCkgTWFrZSBhZnMgdXNlIHRoZSBhYm92ZS4gIEl0IHBhc3NlcyB0aGUgc2FtZSB4ZnN0ZXN0
cyAoYW5kIGhhcyB0aGUgc2FtZQo+ICAgICAgZmFpbHVyZXMpIGFzIHRoZSB1bnBhdGNoZWQgYWZz
IGNsaWVudC4KPgo+ICAoNSkgTWFrZSBjZXBoIHVzZSB0aGUgYWJvdmUgKEkndmUgbWVyZ2VkIGEg
YnJhbmNoIGZyb20gSmVmZiBMYXl0b24gZm9yCj4gdGhpcykuCj4gICAgICBUaGlzIGFsc28gcGFz
c2VzIHhmc3Rlc3RzLgo+Cj4gRGF2ZSBXeXNvY2hhbnNraSBoYXMgYSBwYXRjaCBzZXJpZXMgZm9y
IG5mcy4gIE5vcm1hbCBuZnMgd29ya3MgZmluZSBhbmQKPiBwYXNzZXMKPiB2YXJpb3VzIHRlc3Rz
LCBidXQgaXQgdHVybmVkIG91dCBwbmZzIGhhcyBhIHByb2JsZW0gLSBwbmZzIGRvZXMgc3BsaXR0
aW5nCj4gb2YKPiByZXF1ZXN0cyBpdHNlbGYgYW5kIHNlbmRpbmcgdGhlbSB0byB2YXJpb3VzIHBs
YWNlcywgYnV0IGl0IG5lZWRzIHRvCj4gY29vcGVyYXRlCj4gbW9yZSBjbG9zZWx5IHdpdGggbmV0
ZnMgb3ZlciB0aGlzLiAgSGUncyB3b3JraW5nIG9uIHRoaXMuCj4KPiBJJ3ZlIGdpdmVuIERvbWlu
aXF1ZSBNYXJ0aW5ldCBhIHBhdGNoIGZvciA5cCBhbmQgU3RldmUgRnJlbmNoIGEgcGFydGlhbAo+
IHBhdGNoCj4gZm9yIGNpZnMsIGJ1dCBuZWl0aGVyIG9mIHRob3NlIGlzIGdvaW5nIHRvIGJlIHJl
YWR5IHRoaXMgbWVyZ2Ugd2luZG93Cj4gZWl0aGVyLgo+Cj4gLX4tCj4KPiBBc3N1bWluZyB5b3Un
cmUgd2lsbGluZyB0byB0YWtlIHRoaXMsIHNob3VsZCBJIHN1Ym1pdCBvbmUgcHVsbCByZXF1ZXN0
IGZvcgo+IHRoZQo+IGNvbWJpbmVkIGxvdCwgb3Igc2hvdWxkIEkgYnJlYWsgaXQgdXAgaW50byBz
bWFsbGVyIHJlcXVlc3RzIChzYXkgd2l0aCBhCj4gc2VwYXJhdGUgcmVxdWVzdCBmcm9tIEplZmYg
Zm9yIHRoZSBjZXBoIHN0dWZmKS4KPgo+IElmIHdlIGNhbiBnZXQgdGhlIG5ldGZzIGxpYiBpbiB0
aGlzIG1lcmdlIHdpbmRvdywgdGhhdCBzaW1wbGlmaWVzIGRlYWxpbmcKPiB3aXRoCj4gbmZzIGFu
ZCBjaWZzIHBhcnRpY3VsYXJseSBhcyB0aGUgY2hhbmdlcyBzcGVjaWZpYyB0byB0aG9zZSBjYW4g
Z28gdGhyb3VnaAo+IHRoZQo+IG1haW50YWluZXIgdHJlZXMuCj4KPiBUaGFua3MsCj4gRGF2aWQK
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBs
aW51eC1hZnMgbWFpbGluZyBsaXN0Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hZnMKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=

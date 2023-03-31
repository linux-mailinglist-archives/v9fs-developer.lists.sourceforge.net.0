Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5EA6D261D
	for <lists+v9fs-developer@lfdr.de>; Fri, 31 Mar 2023 18:47:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1piHuV-0001hD-N8;
	Fri, 31 Mar 2023 16:47:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1piHuU-0001gz-OL
 for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Mar 2023 16:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sZS7d7+T0OxQvYK3IXahXhyZfGvpeL3UaMkf6s2Bw4Y=; b=hTmnBgVS5t6VlmCn2vC/pFMjo/
 uNMe2w2o98KsEjFlLlu11zAzVV8VS6vV9Y6o1LEdLaTnEX0E9FPBZn4wN2xiLP05hVAQIEB2IhNdi
 E7GxbztjqkxCYijHHgIFgauYLaIqJ3F6IHTI5rXl3mJz4RJdho+knw2aYKO+jv15+Whg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sZS7d7+T0OxQvYK3IXahXhyZfGvpeL3UaMkf6s2Bw4Y=; b=AjxqlcN191cmzJ15BVjgau4GiA
 7dMUNFS6pWbpjroEhfVWfCXrqZATf6hRsacjLQhWOC+TudZnR3Zn1w6GFcYyw9jVaVlE1bd7mE9ec
 BZVlWFOdAPPfSfJpu7QW0Dl79xQtpY2TxqwWoLoA70WlJ8OBvnLINaI9CPStJ14HZ/rE=;
Received: from mail-yw1-f176.google.com ([209.85.128.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1piHuT-00B4V5-0E for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Mar 2023 16:47:29 +0000
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-54601d90118so270101107b3.12
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 31 Mar 2023 09:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680281243;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sZS7d7+T0OxQvYK3IXahXhyZfGvpeL3UaMkf6s2Bw4Y=;
 b=NRAWWllwTLVGvMSvyrYM2t7yJQGQzEtzX1s2+wMIffidrBT850ocAuhwKJ8I9hVoGg
 yDfjxOpBet9evCqoOrFf3NZBsJGt4hXaaoxQ543woJGWS3FfaYED6NuJvWOgEvwQf0a3
 t5lCwIuEhmsNwsYmdxcdxBBVQ/Hi6leXSVYCTHy9Uqm3wPPvsvaLR7+IhkiFcX/IkmD+
 iWL04tMGSyGPGLK4XqeqmNEKkpd6ToKj3ulrm+2kwPaAmSm6uWOUg6TkooiFfyHTE8Nq
 HLyvOZxSSW2+PPGnHKllK98ass29UoTkbWUCm92/V8hS86BFcTOeCHoldlLJW7VkevTX
 lBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680281243;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sZS7d7+T0OxQvYK3IXahXhyZfGvpeL3UaMkf6s2Bw4Y=;
 b=Skq/yCUSoLvRe2V6eeKLSyXP8cBDFPn5TDKuwmIya5H+x3RHlS8LsLzqgVg3pTCW7V
 4CeisafxK9EuG0JV4zXMbz30LUQwv+QkvxBFJMICEUuZV+bI3hapm4CoNRrch++ADdzg
 brc4bDK6ekwMkVDAQ7gFm3dSxjJnnQ+urF3HaHYxWrJx0Aw6zsOxadd+/RxDdIM8dodd
 g3ssVnUYwQnLGVryrjsRUQZx0hJR8h3VlLOR9Ik4p4WOPe5TaY2fcc5GrHjrGdkLXSKL
 12qRnx/glshdaatxrddE5bN+y3EtFhg1zbyJwwVofqIqulxArmZFBL5g+j9GLy9SWOxS
 rZmw==
X-Gm-Message-State: AAQBX9dFAgvF27B6MsqfeoOMpmTyhiBxlt5T7qtgnUwLOeZJOf1biFZJ
 UdRD6bqLymKIII0zKuNCdH9u104MjBYSUiitonE=
X-Google-Smtp-Source: AKy350Y7/xO/rQJYMGqdUAlYBMUfzqrigzlpMOS5N8Qw02cwN6O7P8VBYSLpWwCpGzVxUPz6viRUZkwqJzCzP1Od9uU=
X-Received: by 2002:a81:b50f:0:b0:544:b8d8:339e with SMTP id
 t15-20020a81b50f000000b00544b8d8339emr14051696ywh.5.1680281242941; Fri, 31
 Mar 2023 09:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCMmrnmZFcH65Orp@bombadil.infradead.org>
 <ZCNlWnQTbWoBBPd2@codewreck.org> <2322056.HEUtEhvpMu@silver>
 <6f89f0ac34956e7f527c7efa3d162b4a1f5ea71a.camel@kernel.org>
In-Reply-To: <6f89f0ac34956e7f527c7efa3d162b4a1f5ea71a.camel@kernel.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 31 Mar 2023 11:47:12 -0500
Message-ID: <CAFkjPT=gJBELBg1gCjYFrZKVp5fy1vmidByOstB8tfqcuCUvLA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I like the sliding window concept - I wasn't aware NFS was
 doing that, I'll have a look as part of my rework. The unmount/mount should
 indeed flush any cache (unless using fscache), so that might be a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.176 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1piHuT-00B4V5-0E
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Amir Goldstein <amir73il@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net,
 v9fs@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSBsaWtlIHRoZSBzbGlkaW5nIHdpbmRvdyBjb25jZXB0IC0gSSB3YXNuJ3QgYXdhcmUgTkZTIHdh
cyBkb2luZyB0aGF0LApJJ2xsIGhhdmUgYSBsb29rIGFzIHBhcnQgb2YgbXkgcmV3b3JrLgpUaGUg
dW5tb3VudC9tb3VudCBzaG91bGQgaW5kZWVkIGZsdXNoIGFueSBjYWNoZSAodW5sZXNzIHVzaW5n
CmZzY2FjaGUpLCBzbyB0aGF0IG1pZ2h0IGJlIGEgZ29vZCB3b3JrYXJvdW5kIGlmIGl0IGNhbiBi
ZSBhdXRvbWF0ZWQgaW4KdGhlIHdvcmtmbG93LgoKICAgICAgICAgIC1lcmljCgpPbiBXZWQsIE1h
ciAyOSwgMjAyMyBhdCA2OjMy4oCvQU0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4g
d3JvdGU6Cj4KPiBPbiBXZWQsIDIwMjMtMDMtMjkgYXQgMTM6MTkgKzAyMDAsIENocmlzdGlhbiBT
Y2hvZW5lYmVjayB3cm90ZToKPiA+IE9uIFdlZG5lc2RheSwgTWFyY2ggMjksIDIwMjMgMTI6MDg6
MjYgQU0gQ0VTVCBEb21pbmlxdWUgTWFydGluZXQgd3JvdGU6Cj4gPiA+IEx1aXMgQ2hhbWJlcmxh
aW4gd3JvdGUgb24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6NDE6MDJBTSAtMDcwMDoKPiA+ID4g
PiA+ICAgIlRvIHNwZWVkdXAgdGhpbmdzIHlvdSBjYW4gYWxzbyBjb25zaWRlciB0byB1c2UgZS5n
LiBjYWNoZT1sb29zZSBpbnN0ZWFkLgo+ID4gPiA+Cj4gPiA+ID4gTXkgZXhwZXJpZW5jZSBpcyB0
aGF0IGNhY2hlPWxvb3NlIGlzIHRvdGFsbHkgdXNlbGVzcy4KPiA+ID4KPiA+ID4gSWYgdGhlIGZz
IHlvdSBtb3VudCBpc24ndCBhY2Nlc3NlZCBieSB0aGUgaG9zdCB3aGlsZSB0aGUgVk0gaXMgdXAs
IGFuZAo+ID4gPiBpc24ndCBzaGFyZWQgd2l0aCBhbm90aGVyIGd1ZXN0IChlLmcuICJleGNsdXNp
dmUgc2hhcmUiKSwgeW91J2xsIGdldAo+ID4gPiB3aGF0IHlvdSBleHBlY3QuCj4gPiA+Cj4gPiA+
IEkgaGF2ZSBubyBpZGVhIHdoYXQgcGVvcGxlIHVzZSBxZW11J3MgdmlydGZzIGZvciBidXQgdGhp
cyBpcyBhcHBhcmVudGx5Cj4gPiA+IGNvbW1vbiBlbm91Z2ggdGhhdCBpdCB3YXMgcmVjb21tZW5k
ZWQgYmVmb3JlIHdpdGhvdXQgYW55b25lIGNvbXBsYWluaW5nCj4gPiA+IHNpbmNlIHRoYXQgc3Rh
cnRlZCBiZWluZyByZWNvbW1lbmRlZCBpbiAyMDExWzFdIHVudGlsIG5vdz8KPiA+ID4KPiA+ID4g
WzFdIGh0dHBzOi8vd2lraS5xZW11Lm9yZy9pbmRleC5waHA/dGl0bGU9RG9jdW1lbnRhdGlvbi85
cHNldHVwJmRpZmY9MjE3OCZvbGRpZD0yMTc3Cj4gPiA+Cj4gPiA+IChub3cgSSdtIG5vdCBhcmd1
aW5nIGl0IHNob3VsZCBiZSByZWNvbW1lbmRlZCwgbXkgc3RhbmNlIGFzIGEgOXAKPiA+ID4gbWFp
bnRhaW5lciBpcyB0aGF0IHRoZSBkZWZhdWx0IHNob3VsZCBiZSB1c2VkIHVubGVzcyB5b3Uga25v
dyB3aGF0Cj4gPiA+IHlvdSdyZSBkb2luZywgc28gdGhlIG5ldyBjb2RlIHNob3VsZCBqdXN0IHJl
bW92ZSB0aGUgJ2NhY2hlPW5vbmUnCj4gPiA+IGFsdG9nZXRoZXIgYXMgdGhhdCdzIHRoZSBkZWZh
dWx0Lgo+ID4gPiBXaXRoIHRoZSBuZXcgY2FjaGUgbW9kZWxzIEVyaWMgaXMgcHJlcGFyaW5nIGNv
bWVzLCB3ZSdsbCBnZXQgYSBuZXcgc2FmZQo+ID4gPiBkZWZhdWx0IHRoYXQgd2lsbCBsaWtlbHkg
YmUgYmV0dGVyIHRoYW4gY2FjaGU9bm9uZSwgdGhlcmUgaXMgbm8gcmVhc29uCj4gPiA+IHRvIGV4
cGxpY2l0bHkgcmVjb21tZW5kIHRoZSBoaXN0b3JpYyBzYWZlIG1vZGVsIGFzIHRoZSBkZWZhdWx0
IGhhcwo+ID4gPiBhbHdheXMgYmVlbiBvbiB0aGUgc2FmZSBzaWRlIGFuZCB3ZSBoYXZlIG5vIHBs
YW4gb2YgY2hhbmdpbmcgdGhhdC4pCj4gPgo+ID4gSXQncyBub3QgdGhhdCBJIHJlY2VpdmUgYSBs
b3Qgb2YgZmVlZGJhY2sgZm9yIHdoYXQgcGVvcGxlIHVzZSA5cCBmb3IsIG5vciBhbSBJCj4gPiBR
RU1VJ3MgOXAgbWFpbnRhaW5lciBmb3IgYSBsb25nIHRpbWUsIGJ1dCBzbyBmYXIgY29udHJpYnV0
b3JzIGNhcmVkIG1vcmUgYWJvdXQKPiA+IHBlcmZvcm1hbmNlIGFuZCBvdGhlciBpc3N1ZXMgdGhh
biBwcm9wYWdhdGluZyBjaGFuZ2VzIGhvc3QgLT4gZ3Vlc3Qgd2l0aG91dAo+ID4gcmVib290L3Jl
bW91bnQvZHJvcF9jYWNoZXMuIEF0IGxlYXN0IHRoZXkgZGlkIG5vdCBjYXJlIGVub3VnaCB0byB3
b3JrIG9uCj4gPiBwYXRjaGVzLgo+ID4KPiA+IFBlcnNvbmFsbHkgSSBhbHNvIHVzZSBjYWNoZT1s
b29zZSBhbmQgb25seSBuZWVkIHRvIHB1c2ggY2hhbmdlcyBob3N0LT5ndWVzdAo+ID4gb25jZSBp
biBhIHdoaWxlLgo+ID4KPiA+ID4gPiA+ICAgIFRoYXQgd2lsbCBkZXBsb3kgYSBmaWxlc3lzdGVt
IGNhY2hlIG9uIGd1ZXN0IHNpZGUgYW5kIHJlZHVjZXMgdGhlIGFtb3VudCBvZgo+ID4gPiA+ID4g
ICAgOXAgcmVxdWVzdHMgdG8gaG9zdHMuIEFzIGEgY29uc2VxdWVuY2UgaG93ZXZlciBndWVzdCBt
aWdodCBub3Qgc2VlIGZpbGUKPiA+ID4gPiA+ICAgIGNoYW5nZXMgcGVyZm9ybWVkIG9uIGhvc3Qg
c2lkZSAqYXQqICphbGwqCj4gPiA+ID4KPiA+ID4gPiBJIHRoaW5rIHRoYXQgbWFrZXMgaXQgcHJl
dHR5IHVzZWxlc3MsIGFyZW4ndCBtb3N0IHNldHVwcyBvbiB0aGUgZ3Vlc3QgcmVhZC1vbmx5Pwo+
ID4gPiA+Cj4gPiA+ID4gSXQgaXMgbm90IGFib3V0ICJtYXkgbm90IHNlZSIsIGp1c3Qgd29uJ3Qu
IEZvciBleGFtcGxlIEkgbW9kaWZpZWQgdGhlCj4gPiA+ID4gTWFrZWZpbGUgYW5kIGNvbXBpbGVk
IGEgZnVsbCBrZXJuZWwgYW5kIGV2ZW4gd2l0aCB0aG9zZSBzZXJpZXMgb2YKPiA+ID4gPiBjaGFu
Z2VzLCB0aGUgZ3Vlc3QgKm1pbnV0ZXMgbGF0ZXIqIG5ldmVyIHNhdyBhbnkgdXBkYXRlcy4KPiA+
ID4KPiA+ID4gcmVhZC1vbmx5IG9uIHRoZSBndWVzdCBoYXMgbm90aGluZyB0byBkbyB3aXRoIGl0
LCBub3IgaGFzIHRpbWUuCj4gPiA+Cj4gPiA+IElmIHRoZSBkaXJlY3RvcnkgaXMgbmV2ZXIgYWNj
ZXNzZWQgb24gdGhlIGd1ZXN0IGJlZm9yZSB0aGUga2VybmVsIGhhcwo+ID4gPiBiZWVuIGJ1aWx0
LCB5b3UnbGwgYmUgYWJsZSB0byBtYWtlIGluc3RhbGwgb24gdGhlIGd1ZXN0IC0tIG9uY2UsIGV2
ZW4gaWYKPiA+ID4gdGhlIGJ1aWxkIHdhcyBkb25lIGFmdGVyIHRoZSBWTSBib290ZWQgYW5kIGZz
IG1vdW50ZWQuCj4gPiA+Cj4gPiA+IEFmdGVyIGl0J3MgYmVlbiByZWFkIG9uY2UsIGl0J2xsIHN0
YXkgaW4gY2FjaGUgdW50aWwgbWVtb3J5IHByZXNzdXJlIChvcgo+ID4gPiBhbiBhZG1pbiBhY3Rp
b24gbGlrZSB1bW91bnQvbW91bnQgb3Igc3lzY3RsIHZtLmRyb3BfY2FjaGVzPTMpIGNsZWFycyBp
dC4KPiA+ID4KPiA+ID4gSSBiZWxpZXZlIHRoYXQncyB3aHkgaXQgYXBwZWFyZWQgdG8gd29yayB1
bnRpbCB5b3Ugbm90aWNlZCB0aGUgaXNzdWUgYW5kCj4gPiA+IGhhZCB0byBjaGFuZ2UgdGhlIG1v
dW50IG9wdGlvbiAtLSBJJ2QgZXhwZWN0IGluIG1vc3QgY2FzZSB5b3UnbGwgcnVuCj4gPiA+IG1h
a2UgaW5zdGFsbCBvbmNlIGFuZCByZWJvb3Qva2V4ZWMgaW50byB0aGUgbmV3IGtlcm5lbC4KPiA+
ID4KPiA+ID4gSXQncyBub3Qgc2FmZSBmb3IgeW91ciB1c2VjYXNlIGFuZCBjYWNoZT1ub25lIGRl
ZmluaXRlbHkgc291bmRzIGJldHRlcgo+ID4gPiB0byBtZSwgYnV0IHBlb3BsZSBzaG91bGQgdXNl
IGRlZmF1bHRzIG1ha2UgdGhlaXIgb3duIGluZm9ybWVkIGRlY2lzaW9uLgo+ID4KPiA+IEl0IGFw
cGVhcnMgdG8gbWUgdGhhdCByZWFkLW9ubHkgc2VlbXMgbm90IHRvIGJlIHRoZSBhdmVyYWdlIHVz
ZSBjYXNlIGZvciA5cCwKPiA+IGF0IGxlYXN0IGZyb20gdGhlIGNvbW1hbmQgbGluZXMgSSByZWNl
aXZlZC4gSXQgaXMgb2Z0ZW4gdXNlZCBpbiBjb21iaW5hdGlvbgo+ID4gd2l0aCBvdmVybGF5ZnMg
dGhvdWdoLgo+ID4KPiA+IEkgKHRoaW5rKSB0aGUgcmVhc29uIHdoeSBjYWNoZT1sb29zZSB3YXMg
cmVjb21tZW5kZWQgYXMgZGVmYXVsdCBvcHRpb24gb24gdGhlCj4gPiBRRU1VIHdpa2kgcGFnZSBh
Z2VzIGFnbywgd2FzIGJlY2F1c2Ugb2YgaXRzIHJlYWxseSBwb29yIHBlcmZvcm1hbmNlIGF0IHRo
YXQKPiA+IHBvaW50LiBJIHdvdWxkIHBlcnNvbmFsbHkgbm90IGdvIHRoYXQgZmFyIGFuZCBkaXNj
b3VyYWdlIHBlb3BsZSBmcm9tIHVzaW5nCj4gPiBjYWNoZT1sb29zZSBpbiBnZW5lcmFsLCBhcyBs
b25nIGFzIHRoZXkgZ2V0IGluZm9ybWVkIGFib3V0IHRoZSBjb25zZXF1ZW5jZXMuCj4gPiBZb3Ug
c3RpbGwgZ2V0IGEgZ3JlYXQgZGVhbCBvZiBwZXJmb3JtYW5jZSBib29zdCwgdGhlIHJlc3QgaXMg
Zm9yIGVhY2gKPiA+IGluZGl2aWR1YWwgdG8gZGVjaWRlLgo+ID4KPiA+IENvbnNpZGVyaW5nIHRo
YXQgRXJpYyBhbHJlYWR5IGhhcyBwYXRjaGVzIGZvciByZXZhbGlkYXRpbmcgdGhlIGNhY2hlIGlu
IHRoZQo+ID4gd29ya3MsIEkgdGhpbmsgdGhlIGNoYW5nZXMgSSBtYWRlIG9uIHRoZSBvdGhlciBR
RU1VIHdpa2kgcGFnZSBhcmUgYXBwcm9wcmlhdGUsCj4gPiBpbmNsdWRpbmcgdGhlIHdvcmQgIm1p
Z2h0IiBhcyBpdCdzIHNvb24gb25seSBhIG1hdHRlciBvZiBrZXJuZWwgdmVyc2lvbi4KPiA+Cj4g
PiA+ID4gPiAgIEluIHRoZSBhYm92ZSBleGFtcGxlIHRoZSBmb2xkZXIgL2hvbWUvZ3Vlc3QvOXBf
c2V0dXAvIHNoYXJlZCBvZiB0aGUKPiA+ID4gPiA+ICAgaG9zdCBpcyBzaGFyZWQgd2l0aCB0aGUg
Zm9sZGVyIC90bXAvc2hhcmVkIG9uIHRoZSBndWVzdC4gV2UgdXNlIG5vCj4gPiA+ID4gPiAgIGNh
Y2hlIGJlY2F1c2UgY3VycmVudCBjYWNoaW5nIG1lY2hhbmlzbXMgbmVlZCBtb3JlIHdvcmsgYW5k
IHRoZQo+ID4gPiA+ID4gICByZXN1bHRzIGFyZSBub3Qgd2hhdCB5b3Ugd291bGQgZXhwZWN0LiIK
PiA+ID4gPgo+ID4gPiA+IEkgZ290IGEgd2lraSBhY2NvdW50IG5vdyBhbmQgSSB3YXMgdGhlIG9u
ZSB3aG8gaGFkIGNsYXJpZmllZCB0aGlzLgo+ID4gPgo+ID4gPiBUaGFua3MgZm9yIGhlbHBpbmcg
bWFraW5nIHRoaXMgY2xlYXJlci4KPiA+Cj4gPiBZZXAsIGFuZCB0aGFua3MgZm9yIG1ha2luZyBh
IHdpa2kgYWNjb3VudCBhbmQgaW1wcm92aW5nIHRoZSBjb250ZW50IHRoZXJlCj4gPiBkaXJlY3Rs
eS4gQWx3YXlzIGFwcHJlY2lhdGVkIQo+ID4KPgo+IENhdGNoaW5nIHVwIG9uIHRoaXMgdGhyZWFk
Lgo+Cj4gR2V0dGluZyBjYWNoZSBjb2hlcmVuY3kgcmlnaHQgb24gYSBuZXR3b3JrIGZpbGVzeXN0
ZW0gaXMgcXVpdGUKPiBkaWZmaWN1bHQuIEl0J3MgYWx3YXlzIGEgYmFsYW5jZSBiZXR3ZWVuIGNv
cnJlY3RuZXNzIGFuZCBwZXJmb3JtYW5jZS4KPgo+IFNvbWUgcHJvdG9jb2xzIChlLmcuIENJRlMg
YW5kIENlcGgpIHRha2UgYSB2ZXJ5IGhlYXZ5LWhhbmRlZCBhcHByb2FjaCB0bwo+IHRyeSBlbnN1
cmUgdGhhdCB0aGUgY2FjaGVzIGFyZSBhbHdheXMgY29oZXJlbnQuIEJhc2ljYWxseSwgdGhlc2Ug
Y2xpZW50cwo+IGFyZSBvbmx5IGFsbG93ZWQgdG8gY2FjaGUgd2hlbiB0aGUgc2VydmVyIGdyYW50
cyBwZXJtaXNzaW9uIGZvciBpdC4gVGhhdAo+IGNhbiBoYXZlIGEgbmVnYXRpdmUgZWZmZWN0IG9u
IHBlcmZvcm1hbmNlLCBvZiBjb3Vyc2UuCj4KPiBORlMgYXMgYSBwcm90b2NvbCBpcyBtb3JlICJs
b29zZSIsIGJ1dCB3ZSd2ZSBnZW5lcmFsbHkgYmVhdCBpdHMgY2FjaGUKPiBjb2hlcmVuY3kgbWVj
aGFuaXNtcyBpbnRvIHNoYXBlIG92ZXIgdGhlIHllYXJzLCBzbyB5b3UgZG9uJ3Qgc2VlIHRoZXNl
Cj4gc29ydHMgb2YgcHJvYmxlbXMgdGhlcmUgYXMgbXVjaC4gRldJVywgTkZTIHVzZXMgYSBzbGlk
aW5nIHRpbWUgd2luZG93IHRvCj4gcmV2YWxpZGF0ZSB0aGUgY2FjaGUsIHN1Y2ggdGhhdCBpdCds
bCByZXZhbGlkYXRlIGZyZXF1ZW50bHkgd2hlbiBhbgo+IGlub2RlcyBpcyBjaGFuZ2luZyBmcmVx
dWVudGx5LCBidXQgbGVzcyBzbyB3aGVuIGl0J3MgbW9yZSBzdGFibGUuCj4KPiA5UCBJIGhhdmVu
J3Qgd29ya2VkIHdpdGggYXMgbXVjaCwgYnV0IGl0IHNvdW5kcyBsaWtlIGl0IGRvZXNuJ3QgdHJ5
IHRvCj4ga2VlcCBjYWNoZXMgY29oZXJlbnQgKGF0IGxlYXN0IG5vdCB3aXRoIGNhY2hlPWxvb3Nl
KS4KPgo+IFByb2JhYmx5IHRoZSBzaW1wbGVzdCBzb2x1dGlvbiBoZXJlIGlzIHRvIHNpbXBseSB1
bm1vdW50L21vdW50IGJlZm9yZQo+IHlvdSBoYXZlIHRoZSBjbGllbnRzIGNhbGwgIm1ha2UgbW9k
dWxlc19pbnN0YWxsICYmIG1ha2UgaW5zdGFsbCIuIFRoYXQKPiBzaG91bGQgZW5zdXJlIHRoYXQg
dGhlIGNsaWVudCBkb2Vzbid0IGhhdmUgYW55IHN0YWxlIGRhdGEgaW4gdGhlIGNhY2hlCj4gd2hl
biB0aGUgdGltZSBjb21lcyB0byBkbyB0aGUgcmVhZHMuIEEgZnVsbCByZWJvb3Qgc2hvdWxkbid0
IGJlCj4gcmVxdWlyZWQuCj4KPiAtLQo+IEplZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=

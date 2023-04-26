Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAEC6EF89B
	for <lists+v9fs-developer@lfdr.de>; Wed, 26 Apr 2023 18:45:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1priGz-0002Uz-2l;
	Wed, 26 Apr 2023 16:45:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1priGv-0002Us-13
 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 16:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=61oNrvAeThETlTQAwFfkkVQp335+XtKZNiHrB5Kl804=; b=aMNQIITZRCHJ1JtcL9QNJJLYEr
 a/deAEJdKvRQ/34ilzU/tPYJbTkMrlQWGkGmqtiZn8tmCMw0wh0vFom81aWzVSAlODvKPbPGQVqSM
 TzyImTb0NWY7JA7ppx6Var/uODzsbHboUh3W2c9Xo0b33pHB0LbvZhpZdI5vcgrytxOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=61oNrvAeThETlTQAwFfkkVQp335+XtKZNiHrB5Kl804=; b=kLOIbrNqzHDjlBzZ4DZFz4Y0zh
 59lN3kY72oX/FrnVSvXaCHHCt+dlLwCdQ5QM+dadDVUs43dRDQptRO1bqPMvYDkk9mPxk0RByoEzk
 E7EEPhVF6BKNjoE3JVKMqNTbKTD8CpSNrajlx0WnfejkZHavb16c7SI4Zjp7n846du04=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1priGt-002Pm7-D0 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Apr 2023 16:45:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 10C2761012
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 16:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75975C4339B
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682527529;
 bh=vNWyFjSCdQ0qoIQWjhEsyjxX4mfCg7rJeTy5a+Hx31A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gjVKFxRLQq2ABo70Wt+XfRFLd9Haz5CKkoEJb0nlBG60tSpDleT+NiT4S8ntuzfTV
 1a1Jo1V4LaEIZFbiIgcUvIxsSElDxtoqvuupJDcc/j+OcPnIxETUwecF9NOhC94lbf
 dGjPwRMfpWknpxKhFk38KO9fkZNBHx7fYKo/HKHD+Jc6Czzsjm0ZcWgeyRApdmZoD6
 hnT+jrad3IdBUzAOM6X+sl9v9iN0sC8K+DdlE1zrk57g9fdJ03/tIQZNTtmOPFW/D+
 vLx827sgG6bRV7SQFNRQTWzUqInDFOcoG2RVv0bnopBBdKTCZ8ABWrBBWwyxZKqbtc
 R56ALIIObcfiw==
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-5562c93f140so45304857b3.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Apr 2023 09:45:29 -0700 (PDT)
X-Gm-Message-State: AC+VfDyYrWBvadw72XRLoD0oAUXcGxGVvnXc3fmFuBqhRdLvnL/t+m/U
 kXFCHvNGU/FsEwY2YTuxBBNBx7gcx2dgGXKxW3U=
X-Google-Smtp-Source: ACHHUZ7W+RSWN8ee1XW23t02WOrGZqYOZfR3bexqXK16qkxJFF31xbxgrozrJ0VyPJ+EVLQzajLBOxG4dM191Zh7Hv8=
X-Received: by 2002:a81:89c5:0:b0:556:b029:e101 with SMTP id
 z188-20020a8189c5000000b00556b029e101mr6159408ywf.19.1682527528553; Wed, 26
 Apr 2023 09:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230218003323.2322580-11-ericvh@kernel.org>
 <ZCEGmS4FBRFClQjS@7e9e31583646>
 <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
 <CAFkjPT=-EvCf1HKT2-k73G4SVBwRDp=YtvfwhNAcjv6BzS4f9Q@mail.gmail.com>
In-Reply-To: <CAFkjPT=-EvCf1HKT2-k73G4SVBwRDp=YtvfwhNAcjv6BzS4f9Q@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Wed, 26 Apr 2023 09:45:17 -0700
X-Gmail-Original-Message-ID: <CAFkjPTmzvxV1O0kwg-wVg9z_WPZnuOL_qEmeja3+SH2yFb+25w@mail.gmail.com>
Message-ID: <CAFkjPTmzvxV1O0kwg-wVg9z_WPZnuOL_qEmeja3+SH2yFb+25w@mail.gmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  going back over the patch series I realized that this same
 bitops problem was in vfs_file and that's the fix I remember doing, but it
 didn't propagate to the atomic open variants. Thanks again for fin [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1priGt-002Pm7-D0
Subject: Re: [V9fs-developer] [PATCH v5] fs/9p: remove writeback fid and fix
 per-file modes
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: v9fs-developer@lists.sourceforge.net, linux_oss@crudebyte.com,
 v9fs@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Z29pbmcgYmFjayBvdmVyIHRoZSBwYXRjaCBzZXJpZXMgSSByZWFsaXplZCB0aGF0IHRoaXMgc2Ft
ZSBiaXRvcHMKcHJvYmxlbSB3YXMgaW4gdmZzX2ZpbGUgYW5kIHRoYXQncyB0aGUgZml4IEkgcmVt
ZW1iZXIgZG9pbmcsIGJ1dCBpdApkaWRuJ3QgcHJvcGFnYXRlIHRvIHRoZSBhdG9taWMgb3BlbiB2
YXJpYW50cy4gIFRoYW5rcyBhZ2FpbiBmb3IKZmluZGluZyB0aGlzIENocmlzdG9waGUuCgogICAg
ICAtZXJpYwoKT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgNTowMeKAr1BNIEVyaWMgVmFuIEhlbnNi
ZXJnZW4gPGVyaWN2aEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IEkgc3dlYXIgSSBmaXhlZCB0aGF0
LCBtdXN0IGhhdmUgYmVlbiBvbmUgb2YgbXkgZml4ZXMgZ290IGRyb3BwZWQgaW4KPiB0aGUgcHJv
Y2VzcyBvZiBjaHVybmluZyBvdmVyIHRoaXMgcGF0Y2guICBJJ20gcXVpdGUgY29uY2VybmVkIHRo
YXQKPiB0aGlzIGlzIGNvbWluZyB1cCBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdyBiZWNhdXNlIEkn
ZCByZWFsbHkgcmF0aGVyCj4gbm90IHB1bnQgdGhpcyBwYXRjaCBzZXJpZXMgYW5vdGhlciB0d28g
bW9udGhzLiAgSSdtIGdvaW5nIHRvIGFwcGx5IHRoZQo+IGZpeCBhcyBhbiBhZGRpdGlvbmFsIHBh
dGNoIHdoaWNoIGhvcGVmdWxseSBMaW51cyB3aWxsIGFjY2VwdCB3aXRoIHRoZQo+IHJlc3Qgb2Yg
dGhlIHNlcmllcy4KPgo+IE9uIFR1ZSwgQXByIDI1LCAyMDIzIGF0IDEyOjEx4oCvQU0gQ2hyaXN0
b3BoZSBKQUlMTEVUCj4gPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPiB3cm90ZToKPiA+
Cj4gPiBMZSAyNy8wMy8yMDIzIMOgIDA0OjU5LCBFcmljIFZhbiBIZW5zYmVyZ2VuIGEgw6ljcml0
IDoKPiA+ID4gVGhpcyBwYXRjaCByZW1vdmVzIHRoZSBjcmVhdGluZyBvZiBhbiBhZGRpdGlvbmFs
IHdyaXRlYmFja19maWQKPiA+ID4gZm9yIG9wZW5lZCBmaWxlcy4gIFRoZSBwYXRjaCBhZGRyZXNz
ZXMgcHJvYmxlbXMgd2hlbiBmaWxlcwo+ID4gPiB3ZXJlIG9wZW5lZCB3cml0ZS1vbmx5IG9yIGdl
dGF0dHIgb24gZmlsZXMgd2l0aCBkaXJ0eSBjYWNoZXMuCj4gPiA+Cj4gPiA+IFRoaXMgcGF0Y2gg
YWxzbyBpbmNvcnBvcmF0ZXMgaW5mb3JtYXRpb24gYWJvdXQgY2FjaGUgYmVoYXZpb3IKPiA+ID4g
aW4gdGhlIGZpZCBmb3IgZXZlcnkgZmlsZS4gIFRoaXMgYWxsb3dzIHVzIHRvIHJlZmxlY3QgY2Fj
aGUKPiA+ID4gYmVoYXZpb3IgZnJvbSBtb3VudCBmbGFncywgb3BlbiBtb2RlLCBhbmQgaW5mb3Jt
YXRpb24gZnJvbQo+ID4gPiB0aGUgc2VydmVyIHRvIGluZm9ybSByZWFkYWhlYWQgYW5kIHdyaXRl
YmFjayBiZWhhdmlvci4KPiA+ID4KPiA+ID4gVGhpcyBpbmNsdWRlcyBhZGRpbmcgc3VwcG9ydCBm
b3IgYSA5cCBzZW1hbnRpYyB0aGF0IHFpZC52ZXJzaW9uPT0wCj4gPiA+IGlzIHVzZWQgdG8gbWFy
ayBhIGZpbGUgYXMgbm9uLWNhY2hhYmxlIHdoaWNoIGlzIGltcG9ydGFudCBmb3IKPiA+ID4gc3lu
dGhldGljIGZpbGVzLiAgVGhpcyBtYXkgaGF2ZSBhIHNpZGUtZWZmZWN0IG9mIG5vdCBzdXBwb3J0
aW5nCj4gPiA+IGNhY2hpbmcgb24gY2VydGFpbiBsZWdhY3kgZmlsZSBzZXJ2ZXJzIHRoYXQgZG8g
bm90IHByb3Blcmx5IHNldAo+ID4gPiBxaWQudmVyc2lvbi4gIFRoZXJlIGlzIGFsc28gbm93IGEg
bW91bnQgZmxhZyB3aGljaCBjYW4gZGlzYWJsZQo+ID4gPiB0aGUgcWlkLnZlcnNpb24gYmVoYXZp
b3IuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEVyaWMgVmFuIEhlbnNiZXJnZW4gPGVyaWN2
aEBrZXJuZWwub3JnPgo+ID4gPiAtLS0KPiA+ID4gICBmcy85cC9maWQuYyAgICAgICAgICAgIHwg
NDggKysrKysrKysrLS0tLS0tLS0tLS0tLQo+ID4gPiAgIGZzLzlwL2ZpZC5oICAgICAgICAgICAg
fCAzMyArKysrKysrKysrKysrKy0KPiA+ID4gICBmcy85cC92OWZzLmggICAgICAgICAgIHwgIDEg
LQo+ID4gPiAgIGZzLzlwL3Zmc19hZGRyLmMgICAgICAgfCAyMiArKysrKy0tLS0tCj4gPiA+ICAg
ZnMvOXAvdmZzX2ZpbGUuYyAgICAgICB8IDkxICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ID4gPiAgIGZzLzlwL3Zmc19pbm9kZS5jICAgICAgfCA0NSArKysrKysr
LS0tLS0tLS0tLS0tLS0KPiA+ID4gICBmcy85cC92ZnNfaW5vZGVfZG90bC5jIHwgNDggKysrKysr
KysrLS0tLS0tLS0tLS0tLQo+ID4gPiAgIGZzLzlwL3Zmc19zdXBlci5jICAgICAgfCAzMyArKysr
LS0tLS0tLS0tLS0KPiA+ID4gICA4IGZpbGVzIGNoYW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCAx
ODYgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPgo+ID4gSGksCj4gPgo+ID4gdGhpcyBwYXRjaCBoYXMg
YWxyZWFkeSByZWFjaGVkIC1uZXh0LCBidXQgdGhlcmUgaXMgc29tZSBzcHVyaW91cyBjb2RlLgo+
ID4KPiA+IEFzLCBJJ20gbm90IHN1cmUgd2hhdCB0aGUgcmVhbCBpbnRlbnQgaXMsIEkgcHJlZmVy
IHRvIHJlcGx5IGhlcmUgaW5zdGVhZAo+ID4gb2Ygc2VuZGluZyBhIHBhdGNoLgo+ID4KPiA+Cj4g
PiBbLi4uXQo+ID4KPiA+ID4gQEAgLTgxNyw5ICs4MTQsMTQgQEAgdjlmc192ZnNfYXRvbWljX29w
ZW4oc3RydWN0IGlub2RlICpkaXIsIHN0cnVjdCBkZW50cnkgKmRlbnRyeSwKPiA+ID4KPiA+ID4g
ICAgICAgdjlzZXMgPSB2OWZzX2lub2RlMnY5c2VzKGRpcik7Cj4gPiA+ICAgICAgIHBlcm0gPSB1
bml4bW9kZTJwOW1vZGUodjlzZXMsIG1vZGUpOwo+ID4gPiAtICAgICBmaWQgPSB2OWZzX2NyZWF0
ZSh2OXNlcywgZGlyLCBkZW50cnksIE5VTEwsIHBlcm0sCj4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHY5ZnNfdWZsYWdzMm9tb2RlKGZsYWdzLAo+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdjlmc19wcm90b19kb3R1KHY5c2VzKSkp
Owo+ID4gPiArICAgICBwOV9vbW9kZSA9IHY5ZnNfdWZsYWdzMm9tb2RlKGZsYWdzLCB2OWZzX3By
b3RvX2RvdHUodjlzZXMpKTsKPiA+ID4gKwo+ID4gPiArICAgICBpZiAoKHY5c2VzLT5jYWNoZSA+
PSBDQUNIRV9XUklURUJBQ0spICYmIChwOV9vbW9kZSAmIFA5X09XUklURSkpIHsKPiA+ID4gKyAg
ICAgICAgICAgICBwOV9vbW9kZSA9IChwOV9vbW9kZSAmICFQOV9PV1JJVEUpIHwgUDlfT1JEV1I7
Cj4gPgo+ID4gVGhpcyBjb2RlIGxvb2tzIHN0cmFuZ2UuCj4gPiBQOV9PV1JJVEUgaXMgMHgwMSwg
c28gIVA5X09XUklURSBpcyAwLgo+ID4gU28gdGhlIGNvZGUgaXMgZXF1aXZhbGVudCB0byAicDlf
b21vZGUgPSBQOV9PUkRXUjsiCj4gPgo+ID4gSXMgaXQgd2hhdCBpcyBleHBleHRlZD8KPiA+Cj4g
PiBNYXliZQo+ID4gICAgICAgICBwOV9vbW9kZSA9IChwOV9vbW9kZSAmIH5QOV9PV1JJVEUpIHwg
UDlfT1JEV1I7Cj4gPiA/Cj4gPgo+ID4gPiArICAgICAgICAgICAgIHA5X2RlYnVnKFA5X0RFQlVH
X0NBQ0hFLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIndyaXRlLW9ubHkgZmlsZSB3aXRo
IHdyaXRlYmFjayBlbmFibGVkLCBjcmVhdGluZyB3LyBPX1JEV1JcbiIpOwo+ID4gPiArICAgICB9
Cj4gPiA+ICsgICAgIGZpZCA9IHY5ZnNfY3JlYXRlKHY5c2VzLCBkaXIsIGRlbnRyeSwgTlVMTCwg
cGVybSwgcDlfb21vZGUpOwo+ID4gPiAgICAgICBpZiAoSVNfRVJSKGZpZCkpIHsKPiA+ID4gICAg
ICAgICAgICAgICBlcnIgPSBQVFJfRVJSKGZpZCk7Cj4gPiA+ICAgICAgICAgICAgICAgZ290byBl
cnJvcjsKPiA+Cj4gPiBbLi4uXQo+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2ZzLzlwL3Zmc19pbm9k
ZV9kb3RsLmMgYi9mcy85cC92ZnNfaW5vZGVfZG90bC5jCj4gPiA+IGluZGV4IGEyOGViM2FlYWIy
OS4uNGI5NDg4Y2I3YTU2IDEwMDY0NAo+ID4gPiAtLS0gYS9mcy85cC92ZnNfaW5vZGVfZG90bC5j
Cj4gPiA+ICsrKyBiL2ZzLzlwL3Zmc19pbm9kZV9kb3RsLmMKPiA+ID4gQEAgLTIzMiwxMiArMjMy
LDEyIEBAIHY5ZnNfdmZzX2F0b21pY19vcGVuX2RvdGwoc3RydWN0IGlub2RlICpkaXIsIHN0cnVj
dCBkZW50cnkgKmRlbnRyeSwKPiA+ID4gICAgICAgaW50IGVyciA9IDA7Cj4gPiA+ICAgICAgIGtn
aWRfdCBnaWQ7Cj4gPiA+ICAgICAgIHVtb2RlX3QgbW9kZTsKPiA+ID4gKyAgICAgaW50IHA5X29t
b2RlID0gdjlmc19vcGVuX3RvX2RvdGxfZmxhZ3MoZmxhZ3MpOwo+ID4gPiAgICAgICBjb25zdCB1
bnNpZ25lZCBjaGFyICpuYW1lID0gTlVMTDsKPiA+ID4gICAgICAgc3RydWN0IHA5X3FpZCBxaWQ7
Cj4gPiA+ICAgICAgIHN0cnVjdCBpbm9kZSAqaW5vZGU7Cj4gPiA+ICAgICAgIHN0cnVjdCBwOV9m
aWQgKmZpZCA9IE5VTEw7Cj4gPiA+IC0gICAgIHN0cnVjdCB2OWZzX2lub2RlICp2OWlub2RlOwo+
ID4gPiAtICAgICBzdHJ1Y3QgcDlfZmlkICpkZmlkID0gTlVMTCwgKm9maWQgPSBOVUxMLCAqaW5v
ZGVfZmlkID0gTlVMTDsKPiA+ID4gKyAgICAgc3RydWN0IHA5X2ZpZCAqZGZpZCA9IE5VTEwsICpv
ZmlkID0gTlVMTDsKPiA+ID4gICAgICAgc3RydWN0IHY5ZnNfc2Vzc2lvbl9pbmZvICp2OXNlczsK
PiA+ID4gICAgICAgc3RydWN0IHBvc2l4X2FjbCAqcGFjbCA9IE5VTEwsICpkYWNsID0gTlVMTDsK
PiA+ID4gICAgICAgc3RydWN0IGRlbnRyeSAqcmVzID0gTlVMTDsKPiA+ID4gQEAgLTI4MiwxNCAr
MjgyLDE5IEBAIHY5ZnNfdmZzX2F0b21pY19vcGVuX2RvdGwoc3RydWN0IGlub2RlICpkaXIsIHN0
cnVjdCBkZW50cnkgKmRlbnRyeSwKPiA+ID4gICAgICAgLyogVXBkYXRlIG1vZGUgYmFzZWQgb24g
QUNMIHZhbHVlICovCj4gPiA+ICAgICAgIGVyciA9IHY5ZnNfYWNsX21vZGUoZGlyLCAmbW9kZSwg
JmRhY2wsICZwYWNsKTsKPiA+ID4gICAgICAgaWYgKGVycikgewo+ID4gPiAtICAgICAgICAgICAg
IHA5X2RlYnVnKFA5X0RFQlVHX1ZGUywgIkZhaWxlZCB0byBnZXQgYWNsIHZhbHVlcyBpbiBjcmVh
dCAlZFxuIiwKPiA+ID4gKyAgICAgICAgICAgICBwOV9kZWJ1ZyhQOV9ERUJVR19WRlMsICJGYWls
ZWQgdG8gZ2V0IGFjbCB2YWx1ZXMgaW4gY3JlYXRlICVkXG4iLAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgIGVycik7Cj4gPiA+ICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiA+ICAgICAg
IH0KPiA+ID4gLSAgICAgZXJyID0gcDlfY2xpZW50X2NyZWF0ZV9kb3RsKG9maWQsIG5hbWUsIHY5
ZnNfb3Blbl90b19kb3RsX2ZsYWdzKGZsYWdzKSwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG1vZGUsIGdpZCwgJnFpZCk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKCh2
OXNlcy0+Y2FjaGUgPj0gQ0FDSEVfV1JJVEVCQUNLKSAmJiAocDlfb21vZGUgJiBQOV9PV1JJVEUp
KSB7Cj4gPiA+ICsgICAgICAgICAgICAgcDlfb21vZGUgPSAocDlfb21vZGUgJiAhUDlfT1dSSVRF
KSB8IFA5X09SRFdSOwo+ID4KPiA+IFNhbWUgaGVyZS4KPiA+Cj4gPiBDSgo+ID4KPiA+ID4gKyAg
ICAgICAgICAgICBwOV9kZWJ1ZyhQOV9ERUJVR19DQUNIRSwKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICJ3cml0ZS1vbmx5IGZpbGUgd2l0aCB3cml0ZWJhY2sgZW5hYmxlZCwgY3JlYXRpbmcg
dy8gT19SRFdSXG4iKTsKPiA+ID4gKyAgICAgfQo+ID4gPiArICAgICBlcnIgPSBwOV9jbGllbnRf
Y3JlYXRlX2RvdGwob2ZpZCwgbmFtZSwgcDlfb21vZGUsIG1vZGUsIGdpZCwgJnFpZCk7Cj4gPiA+
ICAgICAgIGlmIChlcnIgPCAwKSB7Cj4gPiA+IC0gICAgICAgICAgICAgcDlfZGVidWcoUDlfREVC
VUdfVkZTLCAicDlfY2xpZW50X29wZW5fZG90bCBmYWlsZWQgaW4gY3JlYXQgJWRcbiIsCj4gPiA+
ICsgICAgICAgICAgICAgcDlfZGVidWcoUDlfREVCVUdfVkZTLCAicDlfY2xpZW50X29wZW5fZG90
bCBmYWlsZWQgaW4gY3JlYXRlICVkXG4iLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgIGVy
cik7Cj4gPiA+ICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiA+ICAgICAgIH0KPiA+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DCF55BCC9
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 02:58:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5zYr-00062k-O7; Tue, 28 Jun 2022 00:58:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gustavoars@kernel.org>)
 id 1o5zYq-00062Z-9Z; Tue, 28 Jun 2022 00:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FnuEByhlLOETaCt9p00l15nxUzK4cS1FJXHJqiDfAkQ=; b=EhYEVrw2ENu/EHbiNEsGpJ6G1r
 sG67R8OT5tPuI9f541E+mT6CY5Qr9N+w/6kUiC+kEezoGStDV+3f7SDmD5jlQQ+eDpX4YvE5ZhfKf
 0ZphW4IsMidEA/kBlh+A3m7WEre165I4oQuR3s2k6d2lj4BFkqMqQgP7lYFDiBcufos8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FnuEByhlLOETaCt9p00l15nxUzK4cS1FJXHJqiDfAkQ=; b=fG34AdtCpsEpxnZLJDt5/Hz0fU
 lxp7Qog0zpNjLV+NSALYd68+NXgkKhoqBKE2C5Tm2crB4xzlAeCXCzfawklrXZ0u2D1W2d6v2u1Gt
 SaeG7GqyEoafhEESnbQezaOrxj4JeUWNJ9V2H0rqd4OxniGlkLBUFEyIc6Kq7dEMNM9c=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o5zYq-0001qn-62; Tue, 28 Jun 2022 00:58:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B6EC2616BE;
 Tue, 28 Jun 2022 00:58:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBEABC341C8;
 Tue, 28 Jun 2022 00:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656377910;
 bh=x4KMhmowxPAczUMJ6x4nBeCjlIDio89Zlndd34Eza5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rmtqPrxs/EakAnLyUZ+T1Y6Y2PuUVWE1p/lPmqQBXiapPC1WBd92tcHfgEnTJibSz
 8Cqh6wp+mGRPQenFwVH/ncudi5b7Tg0x4DYK6LYwUDkNgU3v8Yk/6Or0HzPxa5QXgF
 OYkHqjzJwOTAIzA6m0DkNzWrhG6StDZ8wiRdHVw+Wnp/Deq+bcAy4GlTPygKnkBgqV
 sUW1DRx9UPn831OT0MRefhs1kf7ZlvXFnW9s3XTKUzsS60aUSNGKPAXfxyQi7QqZvQ
 a8VxNxF80uRWuCVjsLU3WaCLAUnTapHIuQJvInOf0IrcXvC7dKlHhnQt1FhIxUdbDj
 Qy7qblTn3AnuA==
Date: Tue, 28 Jun 2022 02:58:25 +0200
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20220628005825.GA161566@embeddedor>
References: <20220627180432.GA136081@embeddedor>
 <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
 <20220628004052.GM23621@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628004052.GM23621@ziepe.ca>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 27, 2022 at 09:40:52PM -0300, Jason Gunthorpe
 wrote: > On Mon, Jun 27, 2022 at 08:27:37PM +0200, Daniel Borkmann wrote:
 > > On 6/27/22 8:04 PM, Gustavo A. R. Silva wrote: > > > There is a [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o5zYq-0001qn-62
Subject: Re: [V9fs-developer] [PATCH][next] treewide: uapi: Replace
 zero-length arrays with flexible-array members
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 x86@kernel.org, kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, v9fs-developer@lists.sourceforge.net,
 Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, virtualization@lists.linux-foundation.org,
 io-uring@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-sctp@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdW4gMjcsIDIwMjIgYXQgMDk6NDA6NTJQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIE1vbiwgSnVuIDI3LCAyMDIyIGF0IDA4OjI3OjM3UE0gKzAyMDAsIERhbmll
bCBCb3JrbWFubiB3cm90ZToKPiA+IE9uIDYvMjcvMjIgODowNCBQTSwgR3VzdGF2byBBLiBSLiBT
aWx2YSB3cm90ZToKPiA+ID4gVGhlcmUgaXMgYSByZWd1bGFyIG5lZWQgaW4gdGhlIGtlcm5lbCB0
byBwcm92aWRlIGEgd2F5IHRvIGRlY2xhcmUKPiA+ID4gaGF2aW5nIGEgZHluYW1pY2FsbHkgc2l6
ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGluIGEgc3RydWN0dXJlLgo+ID4gPiBLZXJuZWwg
Y29kZSBzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZv
ciB0aGVzZQo+ID4gPiBjYXNlcy4gVGhlIG9sZGVyIHN0eWxlIG9mIG9uZS1lbGVtZW50IG9yIHpl
cm8tbGVuZ3RoIGFycmF5cyBzaG91bGQKPiA+ID4gbm8gbG9uZ2VyIGJlIHVzZWRbMl0uCj4gPiA+
IAo+ID4gPiBUaGlzIGNvZGUgd2FzIHRyYW5zZm9ybWVkIHdpdGggdGhlIGhlbHAgb2YgQ29jY2lu
ZWxsZToKPiA+ID4gKGxpbnV4LTUuMTktcmMyJCBzcGF0Y2ggLS1qb2JzICQoZ2V0Y29uZiBfTlBS
T0NFU1NPUlNfT05MTikgLS1zcC1maWxlIHNjcmlwdC5jb2NjaSAtLWluY2x1ZGUtaGVhZGVycyAt
LWRpciAuID4gb3V0cHV0LnBhdGNoKQo+ID4gPiAKPiA+ID4gQEAKPiA+ID4gaWRlbnRpZmllciBT
LCBtZW1iZXIsIGFycmF5Owo+ID4gPiB0eXBlIFQxLCBUMjsKPiA+ID4gQEAKPiA+ID4gCj4gPiA+
IHN0cnVjdCBTIHsKPiA+ID4gICAgLi4uCj4gPiA+ICAgIFQxIG1lbWJlcjsKPiA+ID4gICAgVDIg
YXJyYXlbCj4gPiA+IC0gMAo+ID4gPiAgICBdOwo+ID4gPiB9Owo+ID4gPiAKPiA+ID4gLWZzdHJp
Y3QtZmxleC1hcnJheXM9MyBpcyBjb21pbmcgYW5kIHdlIG5lZWQgdG8gbGFuZCB0aGVzZSBjaGFu
Z2VzCj4gPiA+IHRvIHByZXZlbnQgaXNzdWVzIGxpa2UgdGhlc2UgaW4gdGhlIHNob3J0IGZ1dHVy
ZToKPiA+ID4gCj4gPiA+IC4uL2ZzL21pbml4L2Rpci5jOjMzNzozOiB3YXJuaW5nOiAnc3RyY3B5
JyB3aWxsIGFsd2F5cyBvdmVyZmxvdzsgZGVzdGluYXRpb24gYnVmZmVyIGhhcyBzaXplIDAsCj4g
PiA+IGJ1dCB0aGUgc291cmNlIHN0cmluZyBoYXMgbGVuZ3RoIDIgKGluY2x1ZGluZyBOVUwgYnl0
ZSkgWy1XZm9ydGlmeS1zb3VyY2VdCj4gPiA+IAkJc3RyY3B5KGRlMy0+bmFtZSwgIi4iKTsKPiA+
ID4gCQleCj4gPiA+IAo+ID4gPiBTaW5jZSB0aGVzZSBhcmUgYWxsIFswXSB0byBbXSBjaGFuZ2Vz
LCB0aGUgcmlzayB0byBVQVBJIGlzIG5lYXJseSB6ZXJvLiBJZgo+ID4gPiB0aGlzIGJyZWFrcyBh
bnl0aGluZywgd2UgY2FuIHVzZSBhIHVuaW9uIHdpdGggYSBuZXcgbWVtYmVyIG5hbWUuCj4gPiA+
IAo+ID4gPiBbMV0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRmxleGlibGVfYXJyYXlf
bWVtYmVyCj4gPiA+IFsyXSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjE2L3By
b2Nlc3MvZGVwcmVjYXRlZC5odG1sI3plcm8tbGVuZ3RoLWFuZC1vbmUtZWxlbWVudC1hcnJheXMK
PiA+ID4gCj4gPiA+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83
OAo+ID4gPiBCdWlsZC10ZXN0ZWQtYnk6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvNjJi
Njc1ZWMud0tYNkFPWjZjYkU3MXZ0RiUyNWxrcEBpbnRlbC5jb20vCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KPiA+ID4gLS0t
Cj4gPiA+IEhpIGFsbCEKPiA+ID4gCj4gPiA+IEpGWUk6IEknbSBhZGRpbmcgdGhpcyB0byBteSAt
bmV4dCB0cmVlLiA6KQo+ID4gCj4gPiBGeWksIHRoaXMgYnJlYWtzIEJQRiBDSToKPiA+IAo+ID4g
aHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbC1wYXRjaGVzL2JwZi9ydW5zLzcwNzg3MTkzNzI/Y2hl
Y2tfc3VpdGVfZm9jdXM9dHJ1ZQo+ID4gCj4gPiAgIFsuLi5dCj4gPiAgIHByb2dzL21hcF9wdHJf
a2Vybi5jOjMxNDoyNjogZXJyb3I6IGZpZWxkICd0cmllX2tleScgd2l0aCB2YXJpYWJsZSBzaXpl
ZCB0eXBlICdzdHJ1Y3QgYnBmX2xwbV90cmllX2tleScgbm90IGF0IHRoZSBlbmQgb2YgYSBzdHJ1
Y3Qgb3IgY2xhc3MgaXMgYSBHTlUgZXh0ZW5zaW9uIFstV2Vycm9yLC1XZ251LXZhcmlhYmxlLXNp
emVkLXR5cGUtbm90LWF0LWVuZF0KPiA+ICAgICAgICAgICBzdHJ1Y3QgYnBmX2xwbV90cmllX2tl
eSB0cmllX2tleTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gCj4g
VGhpcyB3aWxsIGJyZWFrIHRoZSByZG1hLWNvcmUgdXNlcnNwYWNlIGFzIHdlbGwsIHdpdGggYSBz
aW1pbGFyCj4gZXJyb3I6Cj4gCj4gL3Vzci9iaW4vY2xhbmctMTMgLURWRVJCU19ERUJVRyAtRGli
dmVyYnNfRVhQT1JUUyAtSWluY2x1ZGUgLUkvdXNyL2luY2x1ZGUvbGlibmwzIC1JL3Vzci9pbmNs
dWRlL2RybSAtZyAtTzIgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9fX3cvMS9zPS4gLWZzdGFjay1wcm90
ZWN0b3Itc3Ryb25nIC1XZm9ybWF0IC1XZXJyb3I9Zm9ybWF0LXNlY3VyaXR5IC1XZGF0ZS10aW1l
IC1EX0ZPUlRJRllfU09VUkNFPTIgLVdtaXNzaW5nLXByb3RvdHlwZXMgLVdtaXNzaW5nLWRlY2xh
cmF0aW9ucyAtV3dyaXRlLXN0cmluZ3MgLVdmb3JtYXQ9MiAtV2Nhc3QtZnVuY3Rpb24tdHlwZSAt
V2Zvcm1hdC1ub25saXRlcmFsIC1XZGF0ZS10aW1lIC1XbmVzdGVkLWV4dGVybnMgLVdzaGFkb3cg
LVdzdHJpY3QtcHJvdG90eXBlcyAtV29sZC1zdHlsZS1kZWZpbml0aW9uIC1XZXJyb3IgLVdyZWR1
bmRhbnQtZGVjbHMgLWcgLWZQSUMgICAtc3RkPWdudTExIC1NRCAtTVQgbGliaWJ2ZXJicy9DTWFr
ZUZpbGVzL2lidmVyYnMuZGlyL2NtZF9mbG93LmMubyAtTUYgbGliaWJ2ZXJicy9DTWFrZUZpbGVz
L2lidmVyYnMuZGlyL2NtZF9mbG93LmMuby5kIC1vIGxpYmlidmVyYnMvQ01ha2VGaWxlcy9pYnZl
cmJzLmRpci9jbWRfZmxvdy5jLm8gICAtYyAuLi9saWJpYnZlcmJzL2NtZF9mbG93LmMKPiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gLi4vbGliaWJ2ZXJicy9jbWRfZmxvdy5jOjMzOgo+IEluIGZpbGUg
aW5jbHVkZWQgZnJvbSBpbmNsdWRlL2luZmluaWJhbmQvY21kX3dyaXRlLmg6MzY6Cj4gSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGluY2x1ZGUvaW5maW5pYmFuZC9jbWRfaW9jdGwuaDo0MToKPiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gaW5jbHVkZS9pbmZpbmliYW5kL3ZlcmJzLmg6NDg6Cj4gSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGluY2x1ZGUvaW5maW5pYmFuZC92ZXJic19hcGkuaDo2NjoKPiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gaW5jbHVkZS9pbmZpbmliYW5kL2liX3VzZXJfaW9jdGxfdmVyYnMu
aDozODoKPiBpbmNsdWRlL3JkbWEvaWJfdXNlcl92ZXJicy5oOjQzNjozNDogZXJyb3I6IGZpZWxk
ICdiYXNlJyB3aXRoIHZhcmlhYmxlIHNpemVkIHR5cGUgJ3N0cnVjdCBpYl91dmVyYnNfY3JlYXRl
X2NxX3Jlc3AnIG5vdCBhdCB0aGUgZW5kIG9mIGEgc3RydWN0IG9yIGNsYXNzIGlzIGEgR05VIGV4
dGVuc2lvbiBbLVdlcnJvciwtV2dudS12YXJpYWJsZS1zaXplZC10eXBlLW5vdC1hdC1lbmRdCj4g
ICAgICAgICBzdHJ1Y3QgaWJfdXZlcmJzX2NyZWF0ZV9jcV9yZXNwIGJhc2U7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiBpbmNsdWRlL3JkbWEvaWJfdXNlcl92
ZXJicy5oOjY0NDozNDogZXJyb3I6IGZpZWxkICdiYXNlJyB3aXRoIHZhcmlhYmxlIHNpemVkIHR5
cGUgJ3N0cnVjdCBpYl91dmVyYnNfY3JlYXRlX3FwX3Jlc3AnIG5vdCBhdCB0aGUgZW5kIG9mIGEg
c3RydWN0IG9yIGNsYXNzIGlzIGEgR05VIGV4dGVuc2lvbiBbLVdlcnJvciwtV2dudS12YXJpYWJs
ZS1zaXplZC10eXBlLW5vdC1hdC1lbmRdCj4gICAgICAgICBzdHJ1Y3QgaWJfdXZlcmJzX2NyZWF0
ZV9xcF9yZXNwIGJhc2U7Cj4gCj4gV2hpY2ggaXMgd2h5IEkgZ2F2ZSB1cCB0cnlpbmcgdG8gY2hh
bmdlIHRoZXNlLi4KPiAKPiBUaG91Z2ggbWF5YmUgd2UgY291bGQganVzdCBzd2l0Y2ggb2ZmIC1X
Z251LXZhcmlhYmxlLXNpemVkLXR5cGUtbm90LWF0LWVuZCAgZHVyaW5nIGNvbmZpZ3VyYXRpb24g
PwoKTm8uIEkgdGhpbmsgbm93IHdlIGNhbiBlYXNpbHkgd29ya2Fyb3VuZCB0aGVzZSBzb3J0cyBv
ZiBwcm9ibGVtcyB3aXRoCnNvbWV0aGluZyBsaWtlIHRoaXM6CgoJc3RydWN0IGZsZXggewoJCWFu
eV90eXBlIGFueV9tZW1iZXI7CgkJdW5pb24gewoJCQl0eXBlIGFycmF5WzBdOwoJCQlfX0RFQ0xB
UkVfRkxFWF9BUlJBWSh0eXBlLCBhcnJheV9mbGV4KTsKCQl9OwoJfTsKCmFuZCB1c2UgYXJyYXlf
ZmxleCBpbiBrZXJuZWwtc3BhY2UuCgpUaGUgc2FtZSBmb3IgdGhlIG9uZS1lbG1lbnQgYXJyYXlz
IGluIFVBUEk6CgogICAgICAgIHN0cnVjdCBmbGV4IHsKICAgICAgICAgICAgICAgIGFueV90eXBl
IGFueV9tZW1iZXI7CiAgICAgICAgICAgICAgICB1bmlvbiB7CiAgICAgICAgICAgICAgICAgICAg
ICAgIHR5cGUgYXJyYXlbMV07CiAgICAgICAgICAgICAgICAgICAgICAgIF9fREVDTEFSRV9GTEVY
X0FSUkFZKHR5cGUsIGFycmF5X2ZsZXgpOwogICAgICAgICAgICAgICAgfTsKICAgICAgICB9OwoK
SSdsbCB1c2UgdGhlIGlkaW9tIGFib3ZlIHRvIHJlc29sdmUgYWxsIHRoZXNlIHdhcm5pbmdzIGlu
IGEgZm9sbG93LXVwCnBhdGNoLiA6KQoKVGhhbmtzCi0tCkd1c3Rhdm8KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

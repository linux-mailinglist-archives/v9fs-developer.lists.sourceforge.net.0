Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD7955BBA3
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Jun 2022 20:35:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5ta3-00073Z-F8; Mon, 27 Jun 2022 18:35:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gustavoars@kernel.org>)
 id 1o5ta2-00073P-1q; Mon, 27 Jun 2022 18:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+8s8ewhW/lWJnywycRJQsKuRMfCGUDUhBfo6IQpyJww=; b=gc9azgKah7plZ6Z7r64xmYsT1+
 cEXO2OL0lsZ4p4CynQpWJV604ZV4K9IQz7avRqJbAyc7mEbFlt4HcHKbG19hL1EPt+Odq/OjLWKz5
 5BdOb839EUMPBXF7AetBUa2oXql7fyHZZX8uVszJMEZuRT8Rdx5pJ/pC3EV2zLE3Mgw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+8s8ewhW/lWJnywycRJQsKuRMfCGUDUhBfo6IQpyJww=; b=CQ2FdtDcrU1MMXn8Y8HSa2V+LJ
 wWLnU4O42zcjG2nEA2QkGKHyjwvi7dmwLqEN5qcB2fAR/Nznz+kuB+NCR+Azx5aM3zfdcCb3LFzS9
 d0NIx6QATzOxylYZlKWePO9sckB2zA5m3XEq4q60LFGrJkgNclFXQ+dINoANfB6NMC/8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o5ta0-00FvGf-1w; Mon, 27 Jun 2022 18:35:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9EA6C61578;
 Mon, 27 Jun 2022 18:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43D52C3411D;
 Mon, 27 Jun 2022 18:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656354918;
 bh=lSduwLf0URPGJXhzE2uMPDSka0BN2NuObX6s6wiVjLw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V1wgnhWIBSxTWZs7oVLQcgu6ow7j/nvOHPvXzsT1Nn9X7hdwGhqh7NAL8uHaamcIf
 IY07sAxOhUQqndCnsaxA3ScC1kTdg2Yn9hsnKIlxq8rxFKlV7RaY+NRmyVh3m75Tb8
 ZpcqX4hfVCDBy0N1EVQnXiwwX9rIvnnkMDcCS04gZPnAV3H3k5TZVX9FzOMlpLx209
 8O1zovzb/AU8MtbMYOdG7MyCPnmJKw+tFasJC0wEQpVPIKC5aCfVMO84EEc2E/4TTl
 9dxSDJTazopgz1hOdfhMFc0UNVAF149+GJwdJJ2/y5zxk6J7RR9WnMOk8pk02PIKf/
 G0d/RZr8PVXzA==
Date: Mon, 27 Jun 2022 20:35:13 +0200
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20220627183513.GA137875@embeddedor>
References: <20220627180432.GA136081@embeddedor>
 <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 27, 2022 at 08:27:37PM +0200, Daniel Borkmann
 wrote: > On 6/27/22 8:04 PM, Gustavo A. R. Silva wrote: > > There is a regular
 need in the kernel to provide a way to declare > > having a dyn [...] 
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
X-Headers-End: 1o5ta0-00FvGf-1w
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 v9fs-developer@lists.sourceforge.net, Kees Cook <keescook@chromium.org>,
 intel-gfx@lists.freedesktop.org, linux-can@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 virtualization@lists.linux-foundation.org, io-uring@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-perf-users@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBKdW4gMjcsIDIwMjIgYXQgMDg6Mjc6MzdQTSArMDIwMCwgRGFuaWVsIEJvcmttYW5u
IHdyb3RlOgo+IE9uIDYvMjcvMjIgODowNCBQTSwgR3VzdGF2byBBLiBSLiBTaWx2YSB3cm90ZToK
PiA+IFRoZXJlIGlzIGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdh
eSB0byBkZWNsYXJlCj4gPiBoYXZpbmcgYSBkeW5hbWljYWxseSBzaXplZCBzZXQgb2YgdHJhaWxp
bmcgZWxlbWVudHMgaW4gYSBzdHJ1Y3R1cmUuCj4gPiBLZXJuZWwgY29kZSBzaG91bGQgYWx3YXlz
IHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZQo+ID4gY2FzZXMu
IFRoZSBvbGRlciBzdHlsZSBvZiBvbmUtZWxlbWVudCBvciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hv
dWxkCj4gPiBubyBsb25nZXIgYmUgdXNlZFsyXS4KPiA+IAo+ID4gVGhpcyBjb2RlIHdhcyB0cmFu
c2Zvcm1lZCB3aXRoIHRoZSBoZWxwIG9mIENvY2NpbmVsbGU6Cj4gPiAobGludXgtNS4xOS1yYzIk
IHNwYXRjaCAtLWpvYnMgJChnZXRjb25mIF9OUFJPQ0VTU09SU19PTkxOKSAtLXNwLWZpbGUgc2Ny
aXB0LmNvY2NpIC0taW5jbHVkZS1oZWFkZXJzIC0tZGlyIC4gPiBvdXRwdXQucGF0Y2gpCj4gPiAK
PiA+IEBACj4gPiBpZGVudGlmaWVyIFMsIG1lbWJlciwgYXJyYXk7Cj4gPiB0eXBlIFQxLCBUMjsK
PiA+IEBACj4gPiAKPiA+IHN0cnVjdCBTIHsKPiA+ICAgIC4uLgo+ID4gICAgVDEgbWVtYmVyOwo+
ID4gICAgVDIgYXJyYXlbCj4gPiAtIDAKPiA+ICAgIF07Cj4gPiB9Owo+ID4gCj4gPiAtZnN0cmlj
dC1mbGV4LWFycmF5cz0zIGlzIGNvbWluZyBhbmQgd2UgbmVlZCB0byBsYW5kIHRoZXNlIGNoYW5n
ZXMKPiA+IHRvIHByZXZlbnQgaXNzdWVzIGxpa2UgdGhlc2UgaW4gdGhlIHNob3J0IGZ1dHVyZToK
PiA+IAo+ID4gLi4vZnMvbWluaXgvZGlyLmM6MzM3OjM6IHdhcm5pbmc6ICdzdHJjcHknIHdpbGwg
YWx3YXlzIG92ZXJmbG93OyBkZXN0aW5hdGlvbiBidWZmZXIgaGFzIHNpemUgMCwKPiA+IGJ1dCB0
aGUgc291cmNlIHN0cmluZyBoYXMgbGVuZ3RoIDIgKGluY2x1ZGluZyBOVUwgYnl0ZSkgWy1XZm9y
dGlmeS1zb3VyY2VdCj4gPiAJCXN0cmNweShkZTMtPm5hbWUsICIuIik7Cj4gPiAJCV4KPiA+IAo+
ID4gU2luY2UgdGhlc2UgYXJlIGFsbCBbMF0gdG8gW10gY2hhbmdlcywgdGhlIHJpc2sgdG8gVUFQ
SSBpcyBuZWFybHkgemVyby4gSWYKPiA+IHRoaXMgYnJlYWtzIGFueXRoaW5nLCB3ZSBjYW4gdXNl
IGEgdW5pb24gd2l0aCBhIG5ldyBtZW1iZXIgbmFtZS4KPiA+IAo+ID4gWzFdIGh0dHBzOi8vZW4u
d2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+ID4gWzJdIGh0dHBzOi8v
d3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTYvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVy
by1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwo+ID4gCj4gPiBMaW5rOiBodHRwczovL2dp
dGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvNzgKPiA+IEJ1aWxkLXRlc3RlZC1ieTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC82MmI2NzVlYy53S1g2QU9aNmNiRTcxdnRGJTI1bGtwQGlu
dGVsLmNvbS8KPiA+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9h
cnNAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gSGkgYWxsIQo+ID4gCj4gPiBKRllJOiBJJ20gYWRk
aW5nIHRoaXMgdG8gbXkgLW5leHQgdHJlZS4gOikKPiAKPiBGeWksIHRoaXMgYnJlYWtzIEJQRiBD
SToKClRoYW5rcyBmb3IgdGhlIHJlcG9ydCEgSXQgc2VlbXMgdGhlIDAtZGF5IHJvYm90IGRpZG4n
dCBjYXRjaCB0aGF0IG9uZS4KSSdsbCBmaXggaXQgdXAgcmlnaHQgYXdheS4gOikKCi0tCkd1c3Rh
dm8KCj4gCj4gaHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbC1wYXRjaGVzL2JwZi9ydW5zLzcwNzg3
MTkzNzI/Y2hlY2tfc3VpdGVfZm9jdXM9dHJ1ZQo+IAo+ICAgWy4uLl0KPiAgIHByb2dzL21hcF9w
dHJfa2Vybi5jOjMxNDoyNjogZXJyb3I6IGZpZWxkICd0cmllX2tleScgd2l0aCB2YXJpYWJsZSBz
aXplZCB0eXBlICdzdHJ1Y3QgYnBmX2xwbV90cmllX2tleScgbm90IGF0IHRoZSBlbmQgb2YgYSBz
dHJ1Y3Qgb3IgY2xhc3MgaXMgYSBHTlUgZXh0ZW5zaW9uIFstV2Vycm9yLC1XZ251LXZhcmlhYmxl
LXNpemVkLXR5cGUtbm90LWF0LWVuZF0KPiAgICAgICAgICAgc3RydWN0IGJwZl9scG1fdHJpZV9r
ZXkgdHJpZV9rZXk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiAgIDEg
ZXJyb3IgZ2VuZXJhdGVkLgo+ICAgbWFrZTogKioqIFtNYWtlZmlsZTo1MTk6IC90bXAvcnVubmVy
L3dvcmsvYnBmL2JwZi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvbWFwX3B0cl9rZXJuLm9d
IEVycm9yIDEKPiAgIG1ha2U6ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCj4g
ICBFcnJvcjogUHJvY2VzcyBjb21wbGV0ZWQgd2l0aCBleGl0IGNvZGUgMi4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

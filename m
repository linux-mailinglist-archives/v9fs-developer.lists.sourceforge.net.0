Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B692355BBA8
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Jun 2022 20:51:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5tpf-0004Sw-CZ; Mon, 27 Jun 2022 18:51:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <daniel@iogearbox.net>)
 id 1o5tpd-0004Sg-Kz; Mon, 27 Jun 2022 18:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AXbYc1DfxA1uzkELOZ3xvJsCsFp/8g/0yhmM1jF7ilY=; b=hxCQsOU/zZ0aAHUHrkhPq4V7zV
 KFvsqHFATmcSEVjGWlwiVo20qigHGQJpWIpP7CJYbaL/zCFwNutuRL0mB4u0y8Xp1M3z62fZnLxs3
 V7QQr2T3Ed5pFYEikS10i8jU1VA9K5zjJmYO6e/e5JhWJBV1wOXur+40opdfHtSwEPSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AXbYc1DfxA1uzkELOZ3xvJsCsFp/8g/0yhmM1jF7ilY=; b=feITNp9OfTvhArjK53hRsJy1rg
 0YKRu4EYzX57KGQMVhqQlVHtId7bs9spz+9aj/+ykV3ISt5qge8R2BQqi0Q1l9r3oiTWt69fBxcZs
 mBAStrjmc8QkMZyejMB8A6pYVfjzCinRBcDW35GQFPst9Lh4kWAG4ERMyotduOqLcMlg=;
Received: from www62.your-server.de ([213.133.104.62])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o5tpc-0005Ki-K8; Mon, 27 Jun 2022 18:51:34 +0000
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1o5tSV-000G0X-5e; Mon, 27 Jun 2022 20:27:39 +0200
Received: from [85.1.206.226] (helo=linux.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1o5tSU-000TKD-AF; Mon, 27 Jun 2022 20:27:38 +0200
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
References: <20220627180432.GA136081@embeddedor>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
Date: Mon, 27 Jun 2022 20:27:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20220627180432.GA136081@embeddedor>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.6/26586/Mon Jun 27 10:06:41 2022)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/27/22 8:04 PM, Gustavo A. R. Silva wrote: > There is
 a regular need in the kernel to provide a way to declare > having a
 dynamically
 sized set of trailing elements in a structure. > Kernel code s [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o5tpc-0005Ki-K8
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
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 v9fs-developer@lists.sourceforge.net, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, io-uring@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-perf-users@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gNi8yNy8yMiA4OjA0IFBNLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+IFRoZXJlIGlz
IGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdheSB0byBkZWNsYXJl
Cj4gaGF2aW5nIGEgZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGlu
IGEgc3RydWN0dXJlLgo+IEtlcm5lbCBjb2RlIHNob3VsZCBhbHdheXMgdXNlIOKAnGZsZXhpYmxl
IGFycmF5IG1lbWJlcnPigJ1bMV0gZm9yIHRoZXNlCj4gY2FzZXMuIFRoZSBvbGRlciBzdHlsZSBv
ZiBvbmUtZWxlbWVudCBvciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hvdWxkCj4gbm8gbG9uZ2VyIGJl
IHVzZWRbMl0uCj4gCj4gVGhpcyBjb2RlIHdhcyB0cmFuc2Zvcm1lZCB3aXRoIHRoZSBoZWxwIG9m
IENvY2NpbmVsbGU6Cj4gKGxpbnV4LTUuMTktcmMyJCBzcGF0Y2ggLS1qb2JzICQoZ2V0Y29uZiBf
TlBST0NFU1NPUlNfT05MTikgLS1zcC1maWxlIHNjcmlwdC5jb2NjaSAtLWluY2x1ZGUtaGVhZGVy
cyAtLWRpciAuID4gb3V0cHV0LnBhdGNoKQo+IAo+IEBACj4gaWRlbnRpZmllciBTLCBtZW1iZXIs
IGFycmF5Owo+IHR5cGUgVDEsIFQyOwo+IEBACj4gCj4gc3RydWN0IFMgewo+ICAgIC4uLgo+ICAg
IFQxIG1lbWJlcjsKPiAgICBUMiBhcnJheVsKPiAtIDAKPiAgICBdOwo+IH07Cj4gCj4gLWZzdHJp
Y3QtZmxleC1hcnJheXM9MyBpcyBjb21pbmcgYW5kIHdlIG5lZWQgdG8gbGFuZCB0aGVzZSBjaGFu
Z2VzCj4gdG8gcHJldmVudCBpc3N1ZXMgbGlrZSB0aGVzZSBpbiB0aGUgc2hvcnQgZnV0dXJlOgo+
IAo+IC4uL2ZzL21pbml4L2Rpci5jOjMzNzozOiB3YXJuaW5nOiAnc3RyY3B5JyB3aWxsIGFsd2F5
cyBvdmVyZmxvdzsgZGVzdGluYXRpb24gYnVmZmVyIGhhcyBzaXplIDAsCj4gYnV0IHRoZSBzb3Vy
Y2Ugc3RyaW5nIGhhcyBsZW5ndGggMiAoaW5jbHVkaW5nIE5VTCBieXRlKSBbLVdmb3J0aWZ5LXNv
dXJjZV0KPiAJCXN0cmNweShkZTMtPm5hbWUsICIuIik7Cj4gCQleCj4gCj4gU2luY2UgdGhlc2Ug
YXJlIGFsbCBbMF0gdG8gW10gY2hhbmdlcywgdGhlIHJpc2sgdG8gVUFQSSBpcyBuZWFybHkgemVy
by4gSWYKPiB0aGlzIGJyZWFrcyBhbnl0aGluZywgd2UgY2FuIHVzZSBhIHVuaW9uIHdpdGggYSBu
ZXcgbWVtYmVyIG5hbWUuCj4gCj4gWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0Zs
ZXhpYmxlX2FycmF5X21lbWJlcgo+IFsyXSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1s
L3Y1LjE2L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3plcm8tbGVuZ3RoLWFuZC1vbmUtZWxlbWVu
dC1hcnJheXMKPiAKPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMv
NzgKPiBCdWlsZC10ZXN0ZWQtYnk6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvNjJiNjc1
ZWMud0tYNkFPWjZjYkU3MXZ0RiUyNWxrcEBpbnRlbC5jb20vCj4gU2lnbmVkLW9mZi1ieTogR3Vz
dGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgo+IC0tLQo+IEhpIGFsbCEK
PiAKPiBKRllJOiBJJ20gYWRkaW5nIHRoaXMgdG8gbXkgLW5leHQgdHJlZS4gOikKCkZ5aSwgdGhp
cyBicmVha3MgQlBGIENJOgoKaHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbC1wYXRjaGVzL2JwZi9y
dW5zLzcwNzg3MTkzNzI/Y2hlY2tfc3VpdGVfZm9jdXM9dHJ1ZQoKICAgWy4uLl0KICAgcHJvZ3Mv
bWFwX3B0cl9rZXJuLmM6MzE0OjI2OiBlcnJvcjogZmllbGQgJ3RyaWVfa2V5JyB3aXRoIHZhcmlh
YmxlIHNpemVkIHR5cGUgJ3N0cnVjdCBicGZfbHBtX3RyaWVfa2V5JyBub3QgYXQgdGhlIGVuZCBv
ZiBhIHN0cnVjdCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNpb24gWy1XZXJyb3IsLVdnbnUtdmFy
aWFibGUtc2l6ZWQtdHlwZS1ub3QtYXQtZW5kXQogICAgICAgICAgIHN0cnVjdCBicGZfbHBtX3Ry
aWVfa2V5IHRyaWVfa2V5OwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KICAg
MSBlcnJvciBnZW5lcmF0ZWQuCiAgIG1ha2U6ICoqKiBbTWFrZWZpbGU6NTE5OiAvdG1wL3J1bm5l
ci93b3JrL2JwZi9icGYvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL21hcF9wdHJfa2Vybi5v
XSBFcnJvciAxCiAgIG1ha2U6ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCiAg
IEVycm9yOiBQcm9jZXNzIGNvbXBsZXRlZCB3aXRoIGV4aXQgY29kZSAyLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

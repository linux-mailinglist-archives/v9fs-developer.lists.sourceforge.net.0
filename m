Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB6455BCDF
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 03:08:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5ziK-0008DC-3H; Tue, 28 Jun 2022 01:08:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jgg@ziepe.ca>) id 1o5ziI-0008D6-2w
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 01:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nrCjPCGAs4MTUiLBt7Ijf/MJPuIyH6lM8yqPhdyhJD8=; b=FW2ne85PPOEpTj+ScmMxMVBqVj
 8vSgVebxb89CRYroMYAxo7ze5bq/lRjZJAxpR7QeFTzJ+nvUmPJk2ioUniyKEJbK/WsnxpQkaoziL
 QPnFk/RY+VZV6fFBRDinUg5rwWF7oCQKwCHXSfT1URfSQ5Ey6aQYB5hznn4w9XJT6dz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nrCjPCGAs4MTUiLBt7Ijf/MJPuIyH6lM8yqPhdyhJD8=; b=BL0JObV2Odd/NQo2bqDn/6B9a+
 bipkMsyYIdV6Xa+nPW5wVrVP1QVfbRTL5/r+DLcAy7KEqjUtZ4+zNbFDnw0QcCdBqok9suAom8Kd3
 O5aPmJEPlPbC8IMlGILKIBn5S2SXCTQqM/bYmqbx5stgVZXbUa9dW3d7YtgaTsxEwqoI=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o5zi9-0002Iz-Fs
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 01:08:21 +0000
Received: by mail-qk1-f173.google.com with SMTP id k20so8657718qkj.1
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Jun 2022 18:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nrCjPCGAs4MTUiLBt7Ijf/MJPuIyH6lM8yqPhdyhJD8=;
 b=QGfGz2XeyaJLxS6IycR7jteyzbs2f9vu4fQQcftWhoNW5sUtbyuMKwRS5XXshn3Hg2
 yZubOZXW72TGsXoMKBc9lhqncUYMSH0Z6bymz383cNPRRHeF7rKM5RXMNm4Eaw5tsGTg
 BQX0bHWNlf6m2F5J4oWG32dxQT2CTBmnGX6tl+1lipYgts8fc/1uUmHwN5t3zZzoA6Qn
 DTeDwoNVOxWo0hy32OR9hFE/UO0/97qh5eo+5ewqu/iIRVMFQ1AIctopaFBuZOm9BPLs
 HAx/pGMXLvvVO6Cb9sesF2T5smUMb44u7gsx78px69APS8fFzY4PmSgo/WM3D328ZbRr
 X/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nrCjPCGAs4MTUiLBt7Ijf/MJPuIyH6lM8yqPhdyhJD8=;
 b=C6pKyKXAt7jrsgT0grTnMYGjOoH8ro57UzhlhqH56Sap1Y8iDz1QrLqUVjn08KnDAc
 5lKLKEhPXRqCykUbQ2dDIL1Weg+bi7zRwC6AsmWtzC3MmCmGC+Y/4ZOSFTRJ+kKZgK+Q
 ymNdsjC0JjxCgvYJ1NXwTYw/R4DjPyVp3TaXhgmUhx+Qd5gTQtDDMmzXflDngcc5G4uv
 nGvwXxeSLPY0Z3PE2Fix/mC7PYYzeP24aCJ+oVH3xgiuukoRP8l1gV1SxoO1GBf7RJV+
 RI5IIBLBTlC+d4QmpsdN4mreroiQj1VOQURIvw7Z1OaAxHUXYoqSnQwuzHGN98XMy22d
 OmWg==
X-Gm-Message-State: AJIora8uq8T0VjzLJc4YM+0jgXA2Lt8jRPlXvsUJmBPKnOPG1DjJSoBf
 UcJV0nKzsqKznyjpb5U1GSIooY4z6yXdmg==
X-Google-Smtp-Source: AGRyM1vTCFcIzhygOqc0dfz0XQz9dolsiNFu6n34Zw7Kl9e9LRh00tD6U1uaxZUOgaZBY5Ks0qTgkA==
X-Received: by 2002:a05:620a:1450:b0:6af:1999:5f4c with SMTP id
 i16-20020a05620a145000b006af19995f4cmr7538467qkl.301.1656376854703; 
 Mon, 27 Jun 2022 17:40:54 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.129]) by smtp.gmail.com with ESMTPSA id
 x11-20020a05620a448b00b006a768c699adsm10335849qkp.125.2022.06.27.17.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jun 2022 17:40:53 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1o5zHg-002iu4-9Z; Mon, 27 Jun 2022 21:40:52 -0300
Date: Mon, 27 Jun 2022 21:40:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20220628004052.GM23621@ziepe.ca>
References: <20220627180432.GA136081@embeddedor>
 <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bc1e94c-ce1d-a074-7d0c-8dbe6ce22637@iogearbox.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 27, 2022 at 08:27:37PM +0200, Daniel Borkmann
 wrote: > On 6/27/22 8:04 PM, Gustavo A. R. Silva wrote: > > There is a regular
 need in the kernel to provide a way to declare > > having a dyn [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.173 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o5zi9-0002Iz-Fs
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
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 v9fs-developer@lists.sourceforge.net, linux-mips@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, virtualization@lists.linux-foundation.org,
 io-uring@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
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
SToKPiAKPiBodHRwczovL2dpdGh1Yi5jb20va2VybmVsLXBhdGNoZXMvYnBmL3J1bnMvNzA3ODcx
OTM3Mj9jaGVja19zdWl0ZV9mb2N1cz10cnVlCj4gCj4gICBbLi4uXQo+ICAgcHJvZ3MvbWFwX3B0
cl9rZXJuLmM6MzE0OjI2OiBlcnJvcjogZmllbGQgJ3RyaWVfa2V5JyB3aXRoIHZhcmlhYmxlIHNp
emVkIHR5cGUgJ3N0cnVjdCBicGZfbHBtX3RyaWVfa2V5JyBub3QgYXQgdGhlIGVuZCBvZiBhIHN0
cnVjdCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNpb24gWy1XZXJyb3IsLVdnbnUtdmFyaWFibGUt
c2l6ZWQtdHlwZS1ub3QtYXQtZW5kXQo+ICAgICAgICAgICBzdHJ1Y3QgYnBmX2xwbV90cmllX2tl
eSB0cmllX2tleTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKVGhpcyB3
aWxsIGJyZWFrIHRoZSByZG1hLWNvcmUgdXNlcnNwYWNlIGFzIHdlbGwsIHdpdGggYSBzaW1pbGFy
CmVycm9yOgoKL3Vzci9iaW4vY2xhbmctMTMgLURWRVJCU19ERUJVRyAtRGlidmVyYnNfRVhQT1JU
UyAtSWluY2x1ZGUgLUkvdXNyL2luY2x1ZGUvbGlibmwzIC1JL3Vzci9pbmNsdWRlL2RybSAtZyAt
TzIgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9fX3cvMS9zPS4gLWZzdGFjay1wcm90ZWN0b3Itc3Ryb25n
IC1XZm9ybWF0IC1XZXJyb3I9Zm9ybWF0LXNlY3VyaXR5IC1XZGF0ZS10aW1lIC1EX0ZPUlRJRllf
U09VUkNFPTIgLVdtaXNzaW5nLXByb3RvdHlwZXMgLVdtaXNzaW5nLWRlY2xhcmF0aW9ucyAtV3dy
aXRlLXN0cmluZ3MgLVdmb3JtYXQ9MiAtV2Nhc3QtZnVuY3Rpb24tdHlwZSAtV2Zvcm1hdC1ub25s
aXRlcmFsIC1XZGF0ZS10aW1lIC1XbmVzdGVkLWV4dGVybnMgLVdzaGFkb3cgLVdzdHJpY3QtcHJv
dG90eXBlcyAtV29sZC1zdHlsZS1kZWZpbml0aW9uIC1XZXJyb3IgLVdyZWR1bmRhbnQtZGVjbHMg
LWcgLWZQSUMgICAtc3RkPWdudTExIC1NRCAtTVQgbGliaWJ2ZXJicy9DTWFrZUZpbGVzL2lidmVy
YnMuZGlyL2NtZF9mbG93LmMubyAtTUYgbGliaWJ2ZXJicy9DTWFrZUZpbGVzL2lidmVyYnMuZGly
L2NtZF9mbG93LmMuby5kIC1vIGxpYmlidmVyYnMvQ01ha2VGaWxlcy9pYnZlcmJzLmRpci9jbWRf
Zmxvdy5jLm8gICAtYyAuLi9saWJpYnZlcmJzL2NtZF9mbG93LmMKSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIC4uL2xpYmlidmVyYnMvY21kX2Zsb3cuYzozMzoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGlu
Y2x1ZGUvaW5maW5pYmFuZC9jbWRfd3JpdGUuaDozNjoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGlu
Y2x1ZGUvaW5maW5pYmFuZC9jbWRfaW9jdGwuaDo0MToKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGlu
Y2x1ZGUvaW5maW5pYmFuZC92ZXJicy5oOjQ4OgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gaW5jbHVk
ZS9pbmZpbmliYW5kL3ZlcmJzX2FwaS5oOjY2OgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gaW5jbHVk
ZS9pbmZpbmliYW5kL2liX3VzZXJfaW9jdGxfdmVyYnMuaDozODoKaW5jbHVkZS9yZG1hL2liX3Vz
ZXJfdmVyYnMuaDo0MzY6MzQ6IGVycm9yOiBmaWVsZCAnYmFzZScgd2l0aCB2YXJpYWJsZSBzaXpl
ZCB0eXBlICdzdHJ1Y3QgaWJfdXZlcmJzX2NyZWF0ZV9jcV9yZXNwJyBub3QgYXQgdGhlIGVuZCBv
ZiBhIHN0cnVjdCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNpb24gWy1XZXJyb3IsLVdnbnUtdmFy
aWFibGUtc2l6ZWQtdHlwZS1ub3QtYXQtZW5kXQogICAgICAgIHN0cnVjdCBpYl91dmVyYnNfY3Jl
YXRlX2NxX3Jlc3AgYmFzZTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF4KaW5jbHVkZS9yZG1hL2liX3VzZXJfdmVyYnMuaDo2NDQ6MzQ6IGVycm9yOiBmaWVsZCAnYmFz
ZScgd2l0aCB2YXJpYWJsZSBzaXplZCB0eXBlICdzdHJ1Y3QgaWJfdXZlcmJzX2NyZWF0ZV9xcF9y
ZXNwJyBub3QgYXQgdGhlIGVuZCBvZiBhIHN0cnVjdCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNp
b24gWy1XZXJyb3IsLVdnbnUtdmFyaWFibGUtc2l6ZWQtdHlwZS1ub3QtYXQtZW5kXQogICAgICAg
IHN0cnVjdCBpYl91dmVyYnNfY3JlYXRlX3FwX3Jlc3AgYmFzZTsKCldoaWNoIGlzIHdoeSBJIGdh
dmUgdXAgdHJ5aW5nIHRvIGNoYW5nZSB0aGVzZS4uCgpUaG91Z2ggbWF5YmUgd2UgY291bGQganVz
dCBzd2l0Y2ggb2ZmIC1XZ251LXZhcmlhYmxlLXNpemVkLXR5cGUtbm90LWF0LWVuZCAgZHVyaW5n
IGNvbmZpZ3VyYXRpb24gPwoKSmFzb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

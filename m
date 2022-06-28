Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA3955EBF0
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 20:06:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o6Fb9-0003Vy-D0; Tue, 28 Jun 2022 18:06:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <keescook@chromium.org>) id 1o6Fb8-0003Vr-8a
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 18:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pTcGgtfSu6n7KkCWKQ4ciWe5XeKK5S4riO8KfNVW7Ig=; b=AnYEgcbAAvNLSsO+6LXjZg+6xq
 fusnzYGk+pcr8ty5jOzTpIqlg01rHFlBg4ExtudUNcEqbxwBkpyijuLEHx67dB2TtsRFOXZpL2BIE
 LpdTEgGCG/X9awEtb4ygc5BSIwr6cKtIwAxFUd1Y5herDF/+a8zNf6Su4eR/wtsVpaVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pTcGgtfSu6n7KkCWKQ4ciWe5XeKK5S4riO8KfNVW7Ig=; b=CZ1oxTQDgTeE56w0h3C60b70gd
 kWEBxyzbMQTlBfjb3dtDA5VPLAS0nYwc7V7VbhhoS+iBvka4fdbOyMsH4t0jqpDitjLTp2pVAefA3
 D/hBeoDuZWUYvwDVq0FuNCpnGFO5H0xDBN1kbZcnsGTXI8o8FqKNhtLqGhcIAb9Dlxc0=;
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6Fb6-00HKyP-7Q
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jun 2022 18:06:01 +0000
Received: by mail-pf1-f172.google.com with SMTP id x4so12732372pfq.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Jun 2022 11:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pTcGgtfSu6n7KkCWKQ4ciWe5XeKK5S4riO8KfNVW7Ig=;
 b=F/CZTCTDOlhkWqZ+vOzW0DaoZ/EZ1dOhoCSSJ2RrwBNwuY7CCyvEtaLLk8DO+FYVI8
 oY1bh2Rw2NH/e7uwuajkABgxQQynq/vb9wDrQT1ziurYSmeBDoqa9s9XGmGLyXXXVu1m
 Ptj/OKkdrLcBprdD9gQ9RffSNU26yKh9HCJiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pTcGgtfSu6n7KkCWKQ4ciWe5XeKK5S4riO8KfNVW7Ig=;
 b=Ka9WImZuByL3vD3Aopik9aKVt5Pg9pOLZtN+aExMsIJrpPSkkjD724nOu6nZYqzifr
 B1NAvIu5pLP9yrLkG7juQrr0meWZQVx8YrtTyXFh0aTcpxFj/mmmrFDqaUsNnh+pUipM
 i7me7jHuLrYq2EFTccZT6jAaJosoc1vePQ2dLJ22LlGh7RzUM5tN+uGnat9USul4kiJE
 +LMlsDod3xWCvOML+de/yNjOQsPlJJCvbC5aGLd9AjwKwk86tKoBilnhWLosZ9U5DKrd
 xFaEwu5nhaeQlq1ArHh6Ld/GlruSPvcfyY6Zs87lc1Y0/bBD0xpqrIaLLZGNyFCOdyZk
 5+kw==
X-Gm-Message-State: AJIora9uesJe60HxTMyM2bL4fXKlYbEeQYxVkGtT0pW4gW+MSmn5y/Ho
 4DG/Se7aFwE+grRxgquTDO5bWw==
X-Google-Smtp-Source: AGRyM1v6cdnwBfGpeB2JnkCbahQ14YUYaqjRd3VUKbR8YPBigZjfWVkzlvmFIFzfbBj+r2XqbA+86w==
X-Received: by 2002:a63:7412:0:b0:40c:fa27:9d07 with SMTP id
 p18-20020a637412000000b0040cfa279d07mr18441815pgc.27.1656439554674; 
 Tue, 28 Jun 2022 11:05:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 i3-20020a170902cf0300b0016a0ac06424sm9669985plg.51.2022.06.28.11.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jun 2022 11:05:54 -0700 (PDT)
Date: Tue, 28 Jun 2022 11:05:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <202206281104.7CC3935@keescook>
References: <20220627180432.GA136081@embeddedor>
 <CAMuHMdU27TG_rpd=WTRPRcY22A4j4aN-6d_8OmK2aNpX06G3ig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU27TG_rpd=WTRPRcY22A4j4aN-6d_8OmK2aNpX06G3ig@mail.gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 28, 2022 at 09:27:21AM +0200, Geert Uytterhoeven
 wrote: > Hi Gustavo, > > Thanks for your patch! > > On Mon, Jun 27, 2022
 at 8:04 PM Gustavo A. R. Silva > <gustavoars@kernel.org> wrote: > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o6Fb6-00HKyP-7Q
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
Cc: nvdimm@lists.linux.dev,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, KVM list <kvm@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 dm-devel@redhat.com, target-devel <target-devel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 linux-hardening@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-s390 <linux-s390@vger.kernel.org>, scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 virtualization@lists.linux-foundation.org, io-uring@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-perf-users@vger.kernel.org, linux-sctp@vger.kernel.org,
 NetFilter <netfilter-devel@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVHVlLCBKdW4gMjgsIDIwMjIgYXQgMDk6Mjc6MjFBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIEd1c3Rhdm8sCj4gCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+IAo+
IE9uIE1vbiwgSnVuIDI3LCAyMDIyIGF0IDg6MDQgUE0gR3VzdGF2byBBLiBSLiBTaWx2YQo+IDxn
dXN0YXZvYXJzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gVGhlcmUgaXMgYSByZWd1bGFyIG5lZWQg
aW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRvIGRlY2xhcmUKPiA+IGhhdmluZyBhIGR5
bmFtaWNhbGx5IHNpemVkIHNldCBvZiB0cmFpbGluZyBlbGVtZW50cyBpbiBhIHN0cnVjdHVyZS4K
PiA+IEtlcm5lbCBjb2RlIHNob3VsZCBhbHdheXMgdXNlIOKAnGZsZXhpYmxlIGFycmF5IG1lbWJl
cnPigJ1bMV0gZm9yIHRoZXNlCj4gPiBjYXNlcy4gVGhlIG9sZGVyIHN0eWxlIG9mIG9uZS1lbGVt
ZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQKPiA+IG5vIGxvbmdlciBiZSB1c2VkWzJd
Lgo+IAo+IFRoZXNlIHJ1bGVzIGFwcGx5IHRvIHRoZSBrZXJuZWwsIGJ1dCB1YXBpIGlzIG5vdCBj
b25zaWRlcmVkIHBhcnQgb2YgdGhlCj4ga2VybmVsLCBzbyBkaWZmZXJlbnQgcnVsZXMgYXBwbHku
ICBVYXBpIGhlYWRlciBmaWxlcyBzaG91bGQgd29yayB3aXRoCj4gd2hhdGV2ZXIgY29tcGlsZXIg
dGhhdCBjYW4gYmUgdXNlZCBmb3IgY29tcGlsaW5nIHVzZXJzcGFjZS4KClJpZ2h0LCB1c2Vyc3Bh
Y2UgaXNuJ3QgYm91bmQgYnkgdGhlc2UgcnVsZXMsIGJ1dCB0aGUga2VybmVsIGVuZHMgdXAKY29u
c3VtaW5nIHRoZXNlIHN0cnVjdHVyZXMsIHNvIHdlIG5lZWQgdG8gZml4IHRoZW0uIFRoZSBbMF0g
LT4gW10KY2hhbmdlcyAod2hlbiB0aGV5IGFyZSBub3QgZXJyb25lb3VzbHkgYmVpbmcgdXNlZCB3
aXRoaW4gb3RoZXIKc3RydWN0dXJlcykgaXMgdmFsaWQgZm9yIGFsbCBjb21waWxlcnMuIEZsZXhp
YmxlIGFycmF5cyBhcmUgQzk5OyBpdCdzCmJlZW4gMjMgeWVhcnMuIDopCgpCdXQsIHllcywgd2hl
cmUgd2UgRE8gYnJlYWsgc3R1ZmYgd2UgbmVlZCB0byB3b3JrYXJvdW5kIGl0LCBldGMuCgotLSAK
S2VlcyBDb29rCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=

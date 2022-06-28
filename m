Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 135FD55BF17
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jun 2022 09:27:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o65dQ-0006pC-B3; Tue, 28 Jun 2022 07:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>)
 id 1o65dO-0006ox-Ow; Tue, 28 Jun 2022 07:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hwgLtruPC06mcRCnQAsf+kJqHCP1mf00hTNnpiQ34M0=; b=Y8zD51WDCMV0f8mbXRbV1bYE6F
 Usrhvq1GvOMr1QbOj8k2uX/auO3R+WFa687tDpMMvfec9ZWTZJ1PJYJLdYUcrApyVRIPijVaN0DYk
 yGIvFiSfBwE74oxs3G5rNQCWcguXOnlouCfKAwNf7RbeyJeNau9cEK5IhFLsULzVC0M0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hwgLtruPC06mcRCnQAsf+kJqHCP1mf00hTNnpiQ34M0=; b=ZBze2WJNBWKbQiKjOil5dUrfMq
 4DEVFMsz6mJHzcrCl5n6rU8DskrNjxYzzJUf47OcegiwsqS3pOD/PKwmYSWgxvWkhLkqE1uJRUw6G
 gHS8kpJjRPbECcmrW4JexDakVmI2lKiCjhyO6ePRhUMZLcQSFwBAv6fDJC1x7YxRZa2I=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o65dO-00GbDb-Iv; Tue, 28 Jun 2022 07:27:43 +0000
Received: by mail-qk1-f181.google.com with SMTP id n10so5580273qkn.10;
 Tue, 28 Jun 2022 00:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hwgLtruPC06mcRCnQAsf+kJqHCP1mf00hTNnpiQ34M0=;
 b=tjq9IQGdsYX1SBK5V9DV8ci3lgbum4cYW9PUGWiQ+YGPr3bM1Tmnl/+mj5ZLoDNuSA
 PmbhBaOEuvO2e7E200AMKSHMeKKwIkvRWihug1vaIK+HimIoQZ5ATpIZTnLGM75KzZ99
 FRVsumPdycgM8nH5x+kFRCXVDel6IjpnHI6xM5RtK0hfroYsEWDU2Luy86rE9Xi+8SLr
 Ks8Arrm8TBa4GhmWAFtRSrpcDdJdxSrROxs0O8HOjCh51iNgF3e4n4Oa/FRK/XmBMVBj
 uuXmjl2wm1v3BLqzpAgWgOGFroxkfXUpdFwpDcLZnst0ex2D9T+PuTofl49Y/kgPU0Xn
 rKkw==
X-Gm-Message-State: AJIora+vL57Qp/++7V0J5Nx2RxOwdDeYMqOVeXWNEWxRc4Rf6NkPRSmM
 zaKCrCqftaifKnKI60ADuy4b0qgMV2pWdm8Q
X-Google-Smtp-Source: AGRyM1vIyYkZlaJ16sAdKo9ldR7R0KFHLgS9/qdNiWiM6Sg45Hg+DnIRUQ4yMC/51bxrM1etT6hjfA==
X-Received: by 2002:a05:620a:16d2:b0:6ae:ff30:1161 with SMTP id
 a18-20020a05620a16d200b006aeff301161mr10507322qkn.540.1656401256642; 
 Tue, 28 Jun 2022 00:27:36 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com.
 [209.85.128.178]) by smtp.gmail.com with ESMTPSA id
 g6-20020ac842c6000000b00317ccc66971sm7738151qtm.52.2022.06.28.00.27.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jun 2022 00:27:34 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-3137316bb69so107279647b3.10; 
 Tue, 28 Jun 2022 00:27:33 -0700 (PDT)
X-Received: by 2002:a81:a092:0:b0:318:5c89:a935 with SMTP id
 x140-20020a81a092000000b003185c89a935mr20762801ywg.383.1656401253054; Tue, 28
 Jun 2022 00:27:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220627180432.GA136081@embeddedor>
In-Reply-To: <20220627180432.GA136081@embeddedor>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 Jun 2022 09:27:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU27TG_rpd=WTRPRcY22A4j4aN-6d_8OmK2aNpX06G3ig@mail.gmail.com>
Message-ID: <CAMuHMdU27TG_rpd=WTRPRcY22A4j4aN-6d_8OmK2aNpX06G3ig@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Gustavo, Thanks for your patch! On Mon, Jun 27, 2022 at
 8:04 PM Gustavo A. R. Silva <gustavoars@kernel.org> wrote: > There is a
 regular
 need in the kernel to provide a way to declare > having a dynamically sized
 set of trailing elem [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1o65dO-00GbDb-Iv
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
 KVM list <kvm@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dm-devel@redhat.com,
 target-devel <target-devel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 linux-hardening@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-s390 <linux-s390@vger.kernel.org>, scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Kees Cook <keescook@chromium.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-can@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 virtualization@lists.linux-foundation.org, io-uring@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 linux-perf-users@vger.kernel.org, linux-sctp@vger.kernel.org,
 NetFilter <netfilter-devel@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgR3VzdGF2bywKClRoYW5rcyBmb3IgeW91ciBwYXRjaCEKCk9uIE1vbiwgSnVuIDI3LCAyMDIy
IGF0IDg6MDQgUE0gR3VzdGF2byBBLiBSLiBTaWx2YQo8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPiB3
cm90ZToKPiBUaGVyZSBpcyBhIHJlZ3VsYXIgbmVlZCBpbiB0aGUga2VybmVsIHRvIHByb3ZpZGUg
YSB3YXkgdG8gZGVjbGFyZQo+IGhhdmluZyBhIGR5bmFtaWNhbGx5IHNpemVkIHNldCBvZiB0cmFp
bGluZyBlbGVtZW50cyBpbiBhIHN0cnVjdHVyZS4KPiBLZXJuZWwgY29kZSBzaG91bGQgYWx3YXlz
IHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZQo+IGNhc2VzLiBU
aGUgb2xkZXIgc3R5bGUgb2Ygb25lLWVsZW1lbnQgb3IgemVyby1sZW5ndGggYXJyYXlzIHNob3Vs
ZAo+IG5vIGxvbmdlciBiZSB1c2VkWzJdLgoKVGhlc2UgcnVsZXMgYXBwbHkgdG8gdGhlIGtlcm5l
bCwgYnV0IHVhcGkgaXMgbm90IGNvbnNpZGVyZWQgcGFydCBvZiB0aGUKa2VybmVsLCBzbyBkaWZm
ZXJlbnQgcnVsZXMgYXBwbHkuICBVYXBpIGhlYWRlciBmaWxlcyBzaG91bGQgd29yayB3aXRoCndo
YXRldmVyIGNvbXBpbGVyIHRoYXQgY2FuIGJlIHVzZWQgZm9yIGNvbXBpbGluZyB1c2Vyc3BhY2Uu
CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLQpH
ZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0t
IGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVj
aG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtp
bmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxp
a2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxk
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK

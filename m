Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F19678E8E
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:50:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9Nz-000130-LJ;
	Tue, 24 Jan 2023 02:50:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pK9Ny-00012t-5h
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sNo2M+vMXVNnmuHmMi9fNsU/T1dxnbKBZtBfGYFBJqc=; b=UZ1tzXxUfT7PA3Ptm4GB+QoU3k
 qLCbZmzsh00nbCGfCwHMmA1mPt70UzTjJOGkv52JM1CUz7ndDZZmudfDHbCo5DTqkpGCw2V6OMiYF
 qejmWF0FjE9yEirjlk8kvvTZeRpu8ddFklidT66kDGxuUtNBLMIhfqmqtoeL85/JGVHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sNo2M+vMXVNnmuHmMi9fNsU/T1dxnbKBZtBfGYFBJqc=; b=FxooF0BuBRjQRI83BDjsBguiDv
 okxEnJHs6BV8BdFlycXA8LSI59DfGdd6Q7V3K2NAlXTdkguteZ/fgd3syFLyB44q0XgZ2Wvtq7aEt
 lJWlyCBfoFXrIPfc8A/8cvI9uIUNMEXobGprqqkALlki3SRgklsrHrfdzcrPcW2t99yU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9Nt-0004pI-Ef for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:50:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 5A387C01E; Tue, 24 Jan 2023 03:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674528616; bh=sNo2M+vMXVNnmuHmMi9fNsU/T1dxnbKBZtBfGYFBJqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=auR2LTgbqUESWdQFsOH6G6jdyJZNuEsdbqwj0802ggjGubDemBBcTW19oJHdwERf1
 KLTj92n6Ak9FVEbsnYXQJ2xOrszyVoz885izMPPYWA4oSwJVyiaj/y9X4ALultB3W9
 a5wVG0+4SHzuFnT2zpV9ABro5E0Cr+nB1AYh5SYPRJLDEripVC72CTjKLhGtKRdiE+
 SKBGNpWjdJ1Kb35YzaHH25NuDRGLMjxCchxUiStvUlsTWB3n1kQDG6IeHR5RZjTKFX
 ZrbYTjf4/pd/KEE5zY0OVsoHcgmJP0Bm8W6jSS0sfjgm9eY+brz/leDX18Q2EfS61o
 fYShBUznNpRdg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AF6ECC009;
 Tue, 24 Jan 2023 03:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674528615; bh=sNo2M+vMXVNnmuHmMi9fNsU/T1dxnbKBZtBfGYFBJqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i16EJ9kBh9jIXmYnudf4BDTdOfKbpABLFv4Ox9v/rl7CDDxWuA6w4A2Icyc6BCcZ9
 eIPAloZCWtNKPJdUJfn1QNaKdsmGGGtr0mEd4dZCm+vLeb64KnRJuYH2dFVdzbvQlN
 r2q/wUfbbiKCYCH5iXg85p4zDne3Y++NbNE4IL9I/bMNMW4e9ZtUbB066vcnpHYVqr
 2ce5q4DuR0WWaAZ1EprZIwszrDXLO8+0T0DKciuigt8VzdjoD8Uwqur1OkXgGO2ryp
 3fHBgz0PbYy+tONgQqjZuAO7/nEzNJYaZxLTp/9rei9lKyi2IBH3tL7vT7lEA4p3TR
 l217FDv+lrQfA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 3239948c;
 Tue, 24 Jan 2023 02:49:52 +0000 (UTC)
Date: Tue, 24 Jan 2023 11:49:37 +0900
From: asmadeus@codewreck.org
To: evanhensbergen@icloud.com
Message-ID: <Y89HQXu90ea6Ed4r@codewreck.org>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  evanhensbergen@icloud.com wrote on Mon, Jan 23, 2023 at 08:33:46PM
    -0600: > I’m fine with funneling these through Dominique since he’s currently
    > the active maintainer, but I’ve also re-establi [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1pK9Nt-0004pI-Ef
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Ron Minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org,
 Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ZXZhbmhlbnNiZXJnZW5AaWNsb3VkLmNvbSB3cm90ZSBvbiBNb24sIEphbiAyMywgMjAyMyBhdCAw
ODozMzo0NlBNIC0wNjAwOgo+IEnigJltIGZpbmUgd2l0aCBmdW5uZWxpbmcgdGhlc2UgdGhyb3Vn
aCBEb21pbmlxdWUgc2luY2UgaGXigJlzIGN1cnJlbnRseQo+IHRoZSBhY3RpdmUgbWFpbnRhaW5l
ciwgYnV0IEnigJl2ZSBhbHNvIHJlLWVzdGFibGlzaGVkIGtlcm5lbC5vcmcKPiA8aHR0cDovL2tl
cm5lbC5vcmcvPiBjcmVkZW50aWFscyBzbyBJIGNhbiBmaWVsZCB0aGUgcHVsbC1yZXF1ZXN0IGlm
Cj4gZGVzaXJlZC4KCkknbSBoYXBweSBlaXRoZXIgd2F5OyBJJ3ZlIGhhZCBhICh0b28gcXVpY2sg
dG8gcmVhbGx5IGNhbGwgcmV2aWV3KSBsb29rCmF0IHRoZSBjb2RlIGl0c2VsZiBhbmQgaXQgbW9z
dGx5IG1ha2VzIHNlbnNlIHRvIG1lLCBhbmQgYXMgeW91IHBvaW50ZWQKb3V0IHNvbWUgd291bGQg
d2FycmFudCBhIENjIHN0YWJsZUAgYW5kIG5vdCB3YWl0aW5nIGlmIEkgaGFkIHRpbWUgdG8gZG8K
dGhpcyBzZXJpb3VzbHksIGJ1dCBJJ20gbm90IHN1cmUgSSdsbCBtYWtlIGl0IGlmIHRoaXMgbmVl
ZHMgdG8gd2FpdCBmb3IKbWUuCgpEbyB5b3UgYWxzbyBoYXZlIGEgdHJlZSB0aGF0IGdvZXMgaW4g
LW5leHQgPyBJIHRoaW5rIEkgYXNrZWQgYmVmb3JlIGJ1dApsb3N0IHlvdXIgcmVwbHksIHNvcnJ5
LgpJZiBub3QgaXQnbGwgcHJvYmFibHkgYmUgZWFzaWVyIGZvciBtZSB0byBwaWNrIGl0IHVwIHRo
aXMgY3ljbGUsIGJ1dAp0aGF0J3MgYWJvdXQgdGhlIG9ubHkgcmVhc29uIEknZCBzZWUgZm9yIG1l
IHRvIHRha2UgdGhlIHBhdGNoZXMgYXMKdGhpbmdzIHN0YW5kLgoKLS0gCkRvbWluaXF1ZQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F222F6D3828
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 15:55:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1piyAi-0002Na-4E;
	Sun, 02 Apr 2023 13:55:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1piyAg-0002NU-4l
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 13:55:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Tb1gjR0Bnx8JL3vzKZTwRHMHqXwGgLwWh1PD+3sYVw=; b=ModHg7kHZj7A4qbVumPXxGY6VC
 AlICAxM7xTxTFneJHD5RN6Y5Se5PJdLCTWW8XXgfufxgjLMR2Bc/fJK6hk85mGHeZ3HTUFnZOn4Op
 /Te/YxGTbFG/FTJ8Busv3g0XudaIKOAszR3U4U85afgMENGT7aOAmONc+P6GoApNO5pk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Tb1gjR0Bnx8JL3vzKZTwRHMHqXwGgLwWh1PD+3sYVw=; b=Kdnx35ZaH5aWlwKKgzcPM8uR6j
 a42XEW4hAWZ8UXny64ibA8KfJI/uHGpOx2yveuRsmWvDb4f41v30evHl8h9OalbGYz65jc6u1erj8
 zqqMZCmeayGKGVkOeTXOluKQnaq1s7FrlvVzjEJJcx1LwjTDHhGg6yoFpID5fvKZh9s8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piyAc-0002KP-2S for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 13:55:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B7A11B80E88
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  2 Apr 2023 13:54:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D1ABC433A0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  2 Apr 2023 13:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680443688;
 bh=Gq9KMbBMAkP7nUOI5Gqy9NByOXxD/rN+Ny3KY8IlvqI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KsA+/lyhLjqSyJL0mTIZYEdCTmvOutCXDBF6IuuOFdSjm4xd8nyGDUnZF35oi8FZx
 E+DDc5FskQ+bLYo1CuFumf6RUgw1vV7ghjtHi8ew038Ue5JTSqxeaKXt5HQ6w368YC
 paYKHb/zIi45MH8wEx8lPmskxKduHX8Z7a2bvyfR6t1KNwm+VGmfR6OxtKAb4LQa5c
 ixCsk8W1BbITQ/ATqPp+2/7VZONt3urY6q45ws13GO3zf3lXbdJFHdxu/dFdufbgSK
 vbMmia7DaytWM6to0ZK+174QDMa7mm0KBtEGXrTCIK+AjHWEnp6MfT+nQBx6ISoY7b
 JqqpoKoNt/Otw==
Received: by mail-yb1-f169.google.com with SMTP id i6so32022924ybu.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 02 Apr 2023 06:54:48 -0700 (PDT)
X-Gm-Message-State: AAQBX9fwGLAdtCnEM9NqU0gNWnEiN/pJjuZD6OOiG/09lojQ+CYIqR3g
 e334RQABzKHWM9y+J16gpVPwFq5kAxDbRuWb4Gk=
X-Google-Smtp-Source: AKy350awHyrBi2UMw+hiBvXbz2WK9UaYf3hLpubK1TSczBJADrIssDG2aNj4cQ+AMntKaCQIk2+ue54+A7YZrnIWcvY=
X-Received: by 2002:a05:6902:10c3:b0:b79:4826:e8e3 with SMTP id
 w3-20020a05690210c300b00b794826e8e3mr15018678ybu.1.1680443687563; Sun, 02 Apr
 2023 06:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
 <4901173.k3S2UP3QcN@silver>
In-Reply-To: <4901173.k3S2UP3QcN@silver>
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Sun, 2 Apr 2023 08:54:36 -0500
X-Gmail-Original-Message-ID: <CAFkjPTnvWzpPEiLW=2RZyOcJJakdTFhZ5vORKJcEhWQJBuUS+w@mail.gmail.com>
Message-ID: <CAFkjPTnvWzpPEiLW=2RZyOcJJakdTFhZ5vORKJcEhWQJBuUS+w@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Well, migrating and deprecated I'd say. The lists.linux.dev
 interface is fairly spartan so I can't invite former members of
 v9fs-developer.
 My plan was to maybe advertise the migration of the list in [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piyAc-0002KP-2S
Subject: Re: [V9fs-developer] [PATCH] Update email address and mailing list
 for v9fs
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 v9fs@lists.linux.dev, rminnich@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

V2VsbCwgbWlncmF0aW5nIGFuZCBkZXByZWNhdGVkIEknZCBzYXkuICBUaGUgbGlzdHMubGludXgu
ZGV2IGludGVyZmFjZQppcyBmYWlybHkgc3BhcnRhbiBzbyBJIGNhbid0IGludml0ZSBmb3JtZXIg
bWVtYmVycyBvZiB2OWZzLWRldmVsb3Blci4KTXkgcGxhbiB3YXMgdG8gbWF5YmUgYWR2ZXJ0aXNl
IHRoZSBtaWdyYXRpb24gb2YgdGhlIGxpc3QgaW4gYSBmb290ZXIKb24gdjlmcy1kZXZlbG9wZXIs
IGFuZCB0aGVuIGFmdGVyIGEgcGVyaW9kIG9mIHRpbWUgKGEgcmVsZWFzZSBjeWNsZT8pCnB1dCBh
biBhdXRvLXJlc3BvbmRlciBvbiBpdCBhc2tpbmcgZm9sa3MgdG8gdXNlIHRoZSBuZXcgbGlzdC4g
IEJ1dCB0aGUKaW50ZW50aW9uIGlzIHRvIHN0b3AgdXNpbmcgdGhlIG9sZCBsaXN0LiBJJ2QgbWln
cmF0ZSB0aGUgYXJjaGl2ZXMgaWYKc291cmNlZm9yZ2UubmV0IGFsbG93ZWQgbWUgdG9vLCBidXQg
dGhleSByZWFsbHkgZG9uJ3QgKGFuZCB0aGF0J3MgeWV0CmFub3RoZXIgcmVhc29uIHRvIGxlYXZl
IHNmLm5ldCkKCiAgICAgICAgIC1lcmljCgpPbiBTdW4sIEFwciAyLCAyMDIzIGF0IDg6NDjigK9B
TSBDaHJpc3RpYW4gU2Nob2VuZWJlY2sKPGxpbnV4X29zc0BjcnVkZWJ5dGUuY29tPiB3cm90ZToK
Pgo+IE9uIFNhdHVyZGF5LCBBcHJpbCAxLCAyMDIzIDk6MDY6MjUgUE0gQ0VTVCBFcmljIFZhbiBI
ZW5zYmVyZ2VuIHdyb3RlOgo+ID4gV2UndmUgcmVjZW50bHkgbW92ZWQgdGhlIG1haWxpbmcgbGlz
dCB0byBsaXN0cy5saW51eC5kZXYgdG8gbW92ZSBhd2F5Cj4gPiBmcm9tIHRoZSBzb3VyY2Vmb3Jn
ZSBpbmZyYXN0cnVjdHVyZS4gIFRoaXMgYWxzbyB1cGRhdGVzIHRoZSB3ZWJzaXRlCj4gPiBmcm9t
IHRoZSAobm8gbG9uZ2VyIHY5ZnMgcmVsZXZhbnQ/KSBzd2lrLm5ldCBhZGRyZXNzIHRvIHRoZSBn
aXRodWIKPiA+IGdyb3VwIHdoaWNoIGNvbnRhaW5zIHBvaW50ZXJzIHRvIHRlc3QgY2FzZXMsIHRo
ZSBwcm90b2NvbCwgc2VydmVycywKPiA+IGV0Yy4gIFRoaXMgYWxzbyBjaGFuZ2VzIG15IGVtYWls
IGZyb20gbXkgZ21haWwgdG8gbXkga2VybmVsLm9yZwo+ID4gYWRkcmVzcy4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBFcmljIFZhbiBIZW5zYmVyZ2VuIDxlcmljdmhAa2VybmVsLm9yZz4KPgo+IEFj
a2VkLWJ5OiBDaHJpc3RpYW4gU2Nob2VuZWJlY2sgPGxpbnV4X29zc0BjcnVkZWJ5dGUuY29tPgo+
Cj4gPiAtLS0KPiA+ICBNQUlOVEFJTkVSUyB8IDYgKysrLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvTUFJ
TlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+ID4gaW5kZXggOGQ1YmMyMjNmMzA1Li42NTY3YmFlNzEz
N2IgMTAwNjQ0Cj4gPiAtLS0gYS9NQUlOVEFJTkVSUwo+ID4gKysrIGIvTUFJTlRBSU5FUlMKPiA+
IEBAIC0yMjQsMTMgKzIyNCwxMyBAQCBTOiAgICAgIE9ycGhhbiAvIE9ic29sZXRlCj4gPiAgRjog
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC84MzkwLwo+ID4KPiA+ICA5UCBGSUxFIFNZU1RFTQo+ID4g
LU06ICAgRXJpYyBWYW4gSGVuc2JlcmdlbiA8ZXJpY3ZoQGdtYWlsLmNvbT4KPiA+ICtNOiAgIEVy
aWMgVmFuIEhlbnNiZXJnZW4gPGVyaWN2aEBrZXJuZWwub3JnPgo+ID4gIE06ICAgTGF0Y2hlc2Fy
IElvbmtvdiA8bHVjaG9AaW9ua292Lm5ldD4KPiA+ICBNOiAgIERvbWluaXF1ZSBNYXJ0aW5ldCA8
YXNtYWRldXNAY29kZXdyZWNrLm9yZz4KPiA+ICBSOiAgIENocmlzdGlhbiBTY2hvZW5lYmVjayA8
bGludXhfb3NzQGNydWRlYnl0ZS5jb20+Cj4gPiAtTDogICB2OWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKPiA+ICtMOiAgIHY5ZnNAbGlzdHMubGludXguZGV2IDx2OWZzQGxpc3Rz
LmxpbnV4LmRldj4KPgo+IFNvIHRoZSBvbGQgbGlzdCBpcyBvZmZpY2lhbGx5IGRlYWQ/IE1pZ3Jh
dGVkPwo+Cj4gPiAgUzogICBNYWludGFpbmVkCj4gPiAtVzogICBodHRwOi8vc3dpay5uZXQvdjlm
cwo+ID4gK1c6ICAgaHR0cDovL2dpdGh1Yi5jb20vdjlmcwo+ID4gIFE6ICAgaHR0cDovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3Qvdjlmcy1kZXZlbC9saXN0Lwo+ID4gIFQ6ICAgZ2l0IGdp
dDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9lcmljdmgvdjlmcy5n
aXQKPiA+ICBUOiAgIGdpdCBnaXQ6Ly9naXRodWIuY29tL21hcnRpbmV0ZC9saW51eC5naXQKPiA+
Cj4gPiAtLS0KPiA+IGJhc2UtY29tbWl0OiA3MDc4MjNlN2YyMmYzODY0ZGRjN2Q4NWU4ZTliNjE0
YWZlNGYxYjE2Cj4gPiBjaGFuZ2UtaWQ6IDIwMjMwNDAxLWVyaWN2aC1maXgtbWFpbnRhaW5lcnMt
ODY1NDUyZTZjNDNhCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4KPgo+Cj4KPgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

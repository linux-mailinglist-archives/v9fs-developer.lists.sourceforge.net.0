Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 944636502AC
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 17:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6ws0-0007Dh-W9;
	Sun, 18 Dec 2022 16:50:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rminnich@gmail.com>) id 1p6ws0-0007DV-00
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=42b3fdhEBg2v19wxwmXhgF09WsLett0qlVLsU9Y6mZk=; b=CjeR6Ze7HSEmCHofdz5ZJEBoZN
 N2gamwoJ48BLGBiKT0p3SbV9UaeB+HhhWRAfxw8uYqwGCxY05zuPFyDjGgG+d3Wk50OnRja9kMVjs
 ESWm2EqdVyBahNqOdFh2jh7Y4kosRkhUJMcGSbMQJWzRw+Bz4VP/IW1shKMEik7vb4Jo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=42b3fdhEBg2v19wxwmXhgF09WsLett0qlVLsU9Y6mZk=; b=RShY4YO8cq9/tMAz4fb5IDDXa5
 uF64ZnLhnMoE0TdLftuoVWUCADyjRgapCU00ruomjcA3syJ2YWjUKudZzK+VoJ4IrWD3g60AlwfY7
 gXPDe1mv/RWENin4hKhTJuTPf1Orb+p8xbCNpuvDOHgvaEsB81+d58dc3xr65YYLIo4o=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p6wrz-0002tC-3o for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:50:35 +0000
Received: by mail-qk1-f178.google.com with SMTP id a25so2832277qkl.12
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 18 Dec 2022 08:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=42b3fdhEBg2v19wxwmXhgF09WsLett0qlVLsU9Y6mZk=;
 b=AfOz+ThydYZV5MJ37TbSqZSrAH99FriljmAiEkE/jw1hYp0ZgXdUJ94/7hVsbbNuz4
 2v0x1nbtacF5dGHU6FfvdU7ma4ldOHSLdkUOe2Q/dgXAI67iL9ODPBrvajuQcYE5uS4W
 Qs7G4d0CaYrd4jjZuk+2KJDhQhmndI4W2htTmPEKFP2TfT8SX5akNOE8LwKXssu0YkUC
 ZsbkOnLHE2h62U9l+lrZ9hTZB4KnSb8ycb4EEzFaFQF0gv3rOSG80BL40sffbb4hYKUx
 dvOFGYvg64se7q4UvtX1LHEEKjPEMvKda3LDRXU9thYhB10eOR8h/PbmsiWnDQSU6GWN
 Sgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=42b3fdhEBg2v19wxwmXhgF09WsLett0qlVLsU9Y6mZk=;
 b=PCY5UyLdzCN751i/4rSNYAZxNsB3f4r+0SR5e4FuF8GKCAIrxIg8p6Rwtjk3uPDAsp
 mEogOlYb16bVWY72EWhp2v/uq2wU0Q7M2xoFtOTefz2tXa5Edi6Ny603GOP9k1i3Ftir
 4AgZLBwnPHneOkcthxWFUw4uGW6i3k9S1pQ3hbEmZ5BRHfUVW+z+6RLACjk28ZgkckSG
 kRlWUZdTV3luJNnfGWatvbQVI/GP+InQlktQeG4HFJsbguxtWcu3SuIJPg5C4IFLeuam
 yOHoBoBfrGKDdC52sFMAOhIhSdkI3EwyfAOpegU69FAZtDDkYmflPOBpvEkbK9HhWiN7
 U5qA==
X-Gm-Message-State: ANoB5plUwY7kDpr7TERyxPRa9k/AP7EeBJmnNpHs0PSnzpvMgYvAbVzC
 2OvGPjHot9kgoulen++MP/VNb549cczg+q1V4bI=
X-Google-Smtp-Source: AA0mqf7D4lbaMtOJ9y6jfxtwVWTbTb5PCAKHth15uUDYnalsGzBrVGtw5rzoA7Les78r0YKer8O2QJGGuu9FnvkUlig=
X-Received: by 2002:ae9:eb96:0:b0:6fe:b1ae:29a9 with SMTP id
 b144-20020ae9eb96000000b006feb1ae29a9mr16653683qkg.305.1671382229097; Sun, 18
 Dec 2022 08:50:29 -0800 (PST)
MIME-Version: 1.0
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
 <4530979.Ltmge6kleC@silver>
 <CAFkjPTmoQvzaSsSOAgM9_0+knudWsdi8=TnMOTXZj05hT6tneQ@mail.gmail.com>
 <51FD8D16-4070-4DCF-AEB5-11640A82762E@icloud.com>
In-Reply-To: <51FD8D16-4070-4DCF-AEB5-11640A82762E@icloud.com>
From: ron minnich <rminnich@gmail.com>
Date: Sun, 18 Dec 2022 08:50:18 -0800
Message-ID: <CAP6exY+BF+1fjjUKX20vvbTZXiZ2gxUN3zc8+ZaHTY-aX6fRFQ@mail.gmail.com>
To: evanhensbergen@icloud.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  it's fine. tbh, I doubt the fact that you were fetching 31
    vs 32 pages mattered as much as the fact that you weren't fetching *4k at
    a time* :-) On Sun, Dec 18, 2022 at 8:36 AM wrote: > > Okay, how does this
    look? Better? I can generate a new rev of the patch > stream later today
   with this fix up and responses to some of the other > comments. For now, I’m
    also pushing this to the [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.178 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rminnich[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.178 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6wrz-0002tC-3o
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account
 for p9 header
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

aXQncyBmaW5lLiB0YmgsIEkgZG91YnQgdGhlIGZhY3QgdGhhdCB5b3Ugd2VyZSBmZXRjaGluZyAz
MSB2cyAzMiBwYWdlcwptYXR0ZXJlZCBhcyBtdWNoIGFzIHRoZSBmYWN0IHRoYXQgeW91IHdlcmVu
J3QgZmV0Y2hpbmcgKjRrIGF0IGEgdGltZSogOi0pCgoKCk9uIFN1biwgRGVjIDE4LCAyMDIyIGF0
IDg6MzYgQU0gPGV2YW5oZW5zYmVyZ2VuQGljbG91ZC5jb20+IHdyb3RlOgoKPgo+IE9rYXksIGhv
dyBkb2VzIHRoaXMgbG9vaz8gIEJldHRlcj8gIEkgY2FuIGdlbmVyYXRlIGEgbmV3IHJldiBvZiB0
aGUgcGF0Y2gKPiBzdHJlYW0gbGF0ZXIgdG9kYXkgd2l0aCB0aGlzIGZpeCB1cCBhbmQgcmVzcG9u
c2VzIHRvIHNvbWUgb2YgdGhlIG90aGVyCj4gY29tbWVudHMuICBGb3Igbm93LCBJ4oCZbSBhbHNv
IHB1c2hpbmcgdGhpcyB0byB0aGUgR2l0SHViIGJyYW5jaC4KPgo+IGRpZmYgLS1naXQgYS9uZXQv
OXAvY2xpZW50LmMgYi9uZXQvOXAvY2xpZW50LmMKPiBpbmRleCBmZWY2NTE2YTA2MzkuLjZlNDA1
ODliODdkNCAxMDA2NDQKPiAtLS0gYS9uZXQvOXAvY2xpZW50LmMKPiArKysgYi9uZXQvOXAvY2xp
ZW50LmMKPiBAQCAtMjgsNyArMjgsMTEgQEAKPiAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRT
Cj4gICNpbmNsdWRlIDx0cmFjZS9ldmVudHMvOXAuaD4KPgo+IC0jZGVmaW5lIERFRkFVTFRfTVNJ
WkUgKDEyOCAqIDEwMjQpCj4gKy8qIERFRkFVTFQgTVNJWkUgPSAzMiBwYWdlcyB3b3J0aCBvZiBw
YXlsb2FkICsgUDlfSERSU1ogKwo+ICsgKiByb29tIGZvciB3cml0ZSAoMTYgZXh0cmEpIG9yIHJl
YWQgKDExIGV4dHJhKSBvcGVyYW5kcy4KPiArICovCj4gKwo+ICsjZGVmaW5lIERFRkFVTFRfTVNJ
WkUgKCgxMjggKiAxMDI0KSArIFA5X0hEUlNaICsgMTYpCj4KPiAgLyogQ2xpZW50IE9wdGlvbiBQ
YXJzaW5nIChjb2RlIGluc3BpcmVkIGJ5IE5GUyBjb2RlKQo+ICAgKiAgLSBhIGxpdHRsZSBsYXp5
IC0gcGFyc2UgYWxsIGNsaWVudCBvcHRpb25zCj4gLS0KPiAyLjM3LjIKPgo+Cj4gT24gRGVjIDE4
LCAyMDIyLCBhdCA5OjM3IEFNLCBFcmljIFZhbiBIZW5zYmVyZ2VuIDxlcmljdmhAZ21haWwuY29t
PiB3cm90ZToKPgo+IFNvIC0gaGVyZSB3YXMgbXkgdGhpbmtpbmcgLSB3aGVuIHRoZSBjYWNoZSBp
cyBlbmFibGVkLCB3ZSBhcmUgbW9zdGx5Cj4gdHJhbnNmZXJyaW5nIHBhZ2Ugc2l6ZWQgY2h1bmtz
LiAgSGF2aW5nIHRoZSBNU0laRSBiZSAxMjhrIGV4YWN0bHkgbWVhbnMgd2UKPiBhcmUgdHJhbnNm
ZXJyaW5nIDMxIHBhZ2VzIGluc3RlYWQgb2YgMzIuCj4KPiBCdXQgSSB0aGluayB5b3UgYXJlIHJp
Z2h0IGFuZCBJIGdvdCB0aGlzIHdyb25nLCBpdCBuZWVkcyB0byBiZQo+IFA5X1JEX0hEUl9TWiBv
ciBzb21ldGhpbmcgbm90IFA5X0hEUlNaIC0tCj4gUDlfSERSU1oganVzdCBjb3ZlcnMgc2l6ZVs0
XStvcFsxXSt0YWdbMl0gYW5kIEkgcmVhbGx5IHdhbnQgaXQgdG8gY292ZXIKPiBzaXplWzRdK29w
WzFdK3RhZ1syXStjb3VudFs0XSAoMTEgZm9yIHJlYWQpIG9yCj4gc2l6ZVs0XStvcFsxXSt0YWdb
Ml0rZmlkWzRdK29mZnNldFs4XStjb3VudFs0XSAoMjMgZm9yIHdyaXRlKS4KPgo+IFNob3VsZCBo
YXZlIGp1c3QgY29waWVkIHRoZSBjb2RlIGZyb20gbnBmcyAoc3J2LT5tc2l6ZSA9ICgxMjgqMTAy
NCkrMjQpIC0tCj4gYnV0IEkgdGhpbmsgSSB0aG91Z2h0IFA5X0hEUlNaIHdhcyBzb21ldGhpbmcg
ZGlmZmVyZW50IHRoYW4gaXQgYWN0dWFsbHkgd2FzCj4gKGFuZCB3YXMgc3R1cGlkIGVub3VnaCBu
b3QgdG8gY2hlY2spIC0gSSBndWVzcyB3ZSBuZWVkIGEgY29uc3RhbnQgZm9yIHRoZQo+IG1heGlt
dW0gcGFja2V0IHNpemUgb3RoZXIgdGhhbiBwYXlsb2FkLgo+Cj4gICAgICAgLWVyaWMKPgo+Cj4K
Pgo+IE9uIFN1biwgRGVjIDE4LCAyMDIyIGF0IDg6NTUgQU0gQ2hyaXN0aWFuIFNjaG9lbmViZWNr
IDwKPiBsaW51eF9vc3NAY3J1ZGVieXRlLmNvbT4gd3JvdGU6Cj4KPj4gT24gU2F0dXJkYXksIERl
Y2VtYmVyIDE3LCAyMDIyIDc6NTI6MDUgUE0gQ0VUIEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGU6
Cj4+ID4gQWRkIG1heGltdW0gcDkgaGVhZGVyIHNpemUgdG8gTVNJWkUgdG8gbWFrZSBzdXJlIHdl
IGNhbgo+PiA+IGhhdmUgcGFnZSBhbGlnbmVkIGRhdGEuCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5
OiBFcmljIFZhbiBIZW5zYmVyZ2VuIDxldmFuaGVuc2JlcmdlbkBpY2xvdWQuY29tPgo+PiA+IC0t
LQo+PiA+ICBuZXQvOXAvY2xpZW50LmMgfCAyICstCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL25ldC85cC9j
bGllbnQuYyBiL25ldC85cC9jbGllbnQuYwo+PiA+IGluZGV4IGZlZjY1MTZhMDYzOS4uNDE2YmFm
MmYxZWRmIDEwMDY0NAo+PiA+IC0tLSBhL25ldC85cC9jbGllbnQuYwo+PiA+ICsrKyBiL25ldC85
cC9jbGllbnQuYwo+PiA+IEBAIC0yOCw3ICsyOCw3IEBACj4+ID4gICNkZWZpbmUgQ1JFQVRFX1RS
QUNFX1BPSU5UUwo+PiA+ICAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzLzlwLmg+Cj4+ID4KPj4gPiAt
I2RlZmluZSBERUZBVUxUX01TSVpFICgxMjggKiAxMDI0KQo+PiA+ICsjZGVmaW5lIERFRkFVTFRf
TVNJWkUgKCgxMjggKiAxMDI0KSArIFA5X0hEUlNaKQo+Pgo+PiBBZGRpbmcgNyB3b3VsZCBtYWtl
IHdoYXQgcGFnZSBhbGlnbmVkIGV4YWN0bHksIHRoZSBwYXlsb2FkPyBBbmQgaG93Pwo+Pgo+PiA+
Cj4+ID4gIC8qIENsaWVudCBPcHRpb24gUGFyc2luZyAoY29kZSBpbnNwaXJlZCBieSBORlMgY29k
ZSkKPj4gPiAgICogIC0gYSBsaXR0bGUgbGF6eSAtIHBhcnNlIGFsbCBjbGllbnQgb3B0aW9ucwo+
PiA+Cj4+Cj4+Cj4+Cj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0917E6D39DF
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 20:43:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pj2ft-00077F-55;
	Sun, 02 Apr 2023 18:43:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pj2fr-000779-UN
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 18:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YUW9fSfZ9WSxLfrodIgM+aOE7jHgfxvaZXXJmIaxf8g=; b=m8dK8/UPOVQSPlvVzbfIflLEVR
 9MNtiAivjsJwapmb+sBEl5J1SMl3jO/L9B1lXPFjqK+XoTwLZBj/8oOKvvffKae8dqwvXe+vvnTwf
 PQNYwihJaGUObpTtOTjmO8K9QbT1Lzq75MMVMr7zRulSj9+5epPpm9zYsNm/9EUm+GKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YUW9fSfZ9WSxLfrodIgM+aOE7jHgfxvaZXXJmIaxf8g=; b=k4FzgXPgR2qN92Kw0HvZRYLKaY
 2oqpwgeN4dfn/BjbLwUOoUEIB3M8dDoEXtzCfDpzVnZfovIEUFhlg3wiG0Y6BjgPg05HZNZ/LZL4W
 XmDWoOtFA5qYNcIMdZCdQfz2tU5bNJUbh+uO8FavBdQXQpc1lT8DL1thE8FXDK/ar/1k=;
Received: from mail-yw1-f169.google.com ([209.85.128.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pj2fr-00D0Lb-II for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 18:43:32 +0000
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-544f7c176easo513407047b3.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 02 Apr 2023 11:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680461006;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YUW9fSfZ9WSxLfrodIgM+aOE7jHgfxvaZXXJmIaxf8g=;
 b=ptflmDGIVSxSjntbxtd8TUNVb0kGjb1LlCnZnl5mMNzHc44nN8aepzjh1JDNfhVZvX
 vTDeOKs4E9J99oGfn9AXiN/EEXH8VS5kRcJtuNBiP3CfXHfgw3cMwz6/5yD1FxcsX4Ns
 5jXnLG1MKqMt65DCJ4DjkV4FRvqiScI773Q4+SSECTuvRaiELHsD3E02JuysfpYmfGJN
 xba9OxlWSi6Cp+t9Yy0MTxXj+yDCTTD8IH4iZUSlqwqsulkOlAGznXClcPMiQIiiz256
 IX0nesjbJQ6yF0OYfuAAYUoPLWNBbuskZYhpj/JBbAU396I/CXqqaacsI0NG4jPvPozx
 Zerw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680461006;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YUW9fSfZ9WSxLfrodIgM+aOE7jHgfxvaZXXJmIaxf8g=;
 b=k89CudTSjhhjXFxAOrTEQ5spcnvwWPGT9hk3Ynw2MWJD8JbmWodOtQvIF5k9qFno9K
 cPcF827xGvXPLHlhq06OYHYEx7OoXEMfwL5WuXh4gwgKTCDbb4+SRte+nuVIhVF2i5QF
 VJDnONEofrd/ROYa60zpYYEPcCKdS0KI9IaulNqnxr2NADP6GMJTIFdwLzQfwgv59FXW
 J1sIveIzbC303sFizL0+3zXqGypcS4Y5gCZ8On3QFfKtY+qSsscFcpOVu3aDRk4yoEeO
 aVkZrCQrbIPbet8N76kX6DKY9j0kfpUl8fkm+edqxK290plv+Pv/Y9aYwuRA+b6+CbJN
 B08Q==
X-Gm-Message-State: AAQBX9dGxxcFlwbll4i2uiB4j+mn/qwpnMbC88MZEvGnxJEZ14l/XgqP
 rkzPXMOANls/iFCLUW4ZkgoQ01afii2bArm13Ck=
X-Google-Smtp-Source: AKy350bEMmEd30W+V6mQNUMFBXrO4+YVMjC//cSozDEfHpe32PMMT7xldWA+YEFW5ZOhOQpEdX04L1ne8Dbikl0bh0w=
X-Received: by 2002:a81:b617:0:b0:541:7f69:aa8b with SMTP id
 u23-20020a81b617000000b005417f69aa8bmr16184588ywh.5.1680461005529; Sun, 02
 Apr 2023 11:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <ZCEIEKC0s/MFReT0@7e9e31583646> <3443961.DhAEVoPbTG@silver>
 <CAFkjPT=j1esw=q-w5KTyHKDZ42BEKCERy-56TiP+Z7tdC=y05w@mail.gmail.com>
 <5898218.pUKYPoVZaQ@silver>
In-Reply-To: <5898218.pUKYPoVZaQ@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 2 Apr 2023 13:43:14 -0500
Message-ID: <CAFkjPTm-6D=OzF7J-1eEb=UVst7L2gjb07oA2hfv7Ayf5QuOvg@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Apr 2, 2023 at 9:07 AM Christian Schoenebeck wrote:
    > > +CC: Jeff for experience on this caching issue with NFS ... > > On Tuesday,
    March 28, 2023 5:51:51 PM CEST Eric Van Hensbergen wrote [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1pj2fr-00D0Lb-II
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Add new options to Documentation
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU3VuLCBBcHIgMiwgMjAyMyBhdCA5OjA34oCvQU0gQ2hyaXN0aWFuIFNjaG9lbmViZWNrCjxs
aW51eF9vc3NAY3J1ZGVieXRlLmNvbT4gd3JvdGU6Cj4KPiArQ0M6IEplZmYgZm9yIGV4cGVyaWVu
Y2Ugb24gdGhpcyBjYWNoaW5nIGlzc3VlIHdpdGggTkZTIC4uLgo+Cj4gT24gVHVlc2RheSwgTWFy
Y2ggMjgsIDIwMjMgNTo1MTo1MSBQTSBDRVNUIEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGU6Cj4g
PiBBcyBJIHdvcmsgdGhyb3VnaCB0aGUgZG9jdW1lbnRhdGlvbiByZXdvcmsgYW5kIHRvIHNvbWUg
ZXh0ZW50IHRoZQo+ID4gdGVzdGluZyBtYXRyaXggLS0gSSBhbSByZWNvbnNpZGVyaW5nIHNvbWUg
Y2hvaWNlcyBhbmQgd2FudGVkIHRvIG9wZW4KPiA+IHVwIHRoZSBkaXNjdXNzaW9uIGhlcmUuCj4g
Pgo+ID4gVExEUjsgSSdtIHRoaW5raW5nIG9mIHJld29ya2luZyB0aGUgY2FjaGUgb3B0aW9ucyBi
ZWZvcmUgdGhlIG1lcmdlCj4gPiB3aW5kb3cgdG8ga2VlcCB0aGluZ3Mgc2ltcGxlIHdoaWxlIHNl
dHRpbmcgdXAgZm9yIHNvbWUgb2YgdGhlIGZ1dHVyZQo+ID4gb3B0aW9ucy4KPgo+IFllYWgsIHJl
dmlzaW5nIHRoZSA5cCBjYWNoZSBvcHRpb25zIGhpZ2hseSBtYWtlcyBzZW5zZSEKPgo+IFNvIHdo
YXQgaXMgdGhlIHBsYW4gb24gdGhpcyBub3c/IEkgc2F3IHlvdSBzZW50IGEgbmV3IHBhdGNoIHdp
dGggdGhlICJvbGQiCj4gb3B0aW9ucyB0b2RheT8gU28gaXMgdGhpcyBvbmUgaGVyZSBkZWZlcnJl
ZD8KPgoKWWVzIC0gSSBkZWNpZGVkIHRvIGp1c3QgYml0ZSB0aGUgYnVsbGV0IGFuZCB0cnkgYW5k
IGhhdmUgYSBuZXcKYXBwcm9hY2ggdG8gdGhpbmdzIHRoYXQgd2FzIGxlc3MgY29uZnVzaW5nIGFu
ZCB0cnkgYW5kIHJlZHVjZSB0aGUgdGVzdAptYXRyaXguClVuZm9ydHVuYXRlbHksIEkgd2FzIGFs
c28gc3dpdGNoaW5nIG92ZXIgdG8gdHJ5aW5nIHRvIHVzZSBiNCB0byBtYW5hZ2UKdGhlc2UgdGhp
bmdzIGFuZCBkaWRuJ3Qgc2VlIGEgd2F5IHRvIHJlbGF0ZSB0aGUgcGF0Y2ggdG8gdGhlIG9yaWdp
bmFsCm9uZS4KSSBmaWd1cmVkIHRoZSBpbmNyZWFzZSBpbiBzY29wZSBqdXN0aWZpZWQgYSBuZXcg
dGhyZWFkLgoKPiA+IFdoaWxlIHdlIGhhdmUgYSBidW5jaCBvZiBuZXcgb3B0aW9ucywgaW4gcHJh
Y3RpY2UgSSBleHBlY3QgdXNlcnMgdG8KPiA+IHByb2JhYmx5IGNvbnNvbGlkYXRlIGFyb3VuZCB0
aHJlZSBtb2RlbHM6IG5vIGNhY2hpbmcsIHRpZ2h0IGNhY2hlcywKPiA+IGFuZCBleHBpcmluZyBj
YWNoZXMgd2l0aCBmc2NhY2hlIGJlaW5nIGFuIG9ydGhvZ29uYWwgYWRkLW9uIHRvIHRoZQo+ID4g
bGFzdCB0d28uCj4KPiBBY3R1YWxseSBhcyBvZiB0b2RheSBJIGRvbid0IGtub3cgd2h5IHNvbWVi
b2R5IHdvdWxkIHdhbnQgdG8gdXNlIGZzY2FjaGUKPiBpbnN0ZWFkIG9mIGxvb3NlLiBEb2VzIGl0
IGFjdHVhbGx5IG1ha2Ugc2Vuc2UgdG8ga2VlcCBmc2NhY2hlIGFuZCBpZiB5ZXMgd2h5Pwo+CgpQ
ZXJzaXN0ZW50IGNhY2hlcyBtYWtlIHNlbnNlIGluIGNlcnRhaW4gc2NlbmFyaW9zLCBpdCBiYXNp
Y2FsbHkgZ2l2ZXMKYSB3YXkgdG8gbGF6eSBwb3B1bGF0ZSBhIGxvY2FsIGNhY2hlIG9mIHRoZSBy
ZW1vdGUgc2VydmVyLiAgSSB3b3VsZG4ndAp1c2UgaXQgaW4gcWVtdQpvciBhIFZNLCBidXQgSSdk
IGRlZmluaXRlbHkgdXNlIGl0IGluIGNsdXN0ZXIgc2NlbmFyaW9zLiAgSXRzIGFsc28KcG90ZW50
aWFsbHkgdXNlZnVsIGZvciB1bnN0YWJsZSBjb25uZWN0aW9ucyAtLSBidXQgdGhpcyBpcyBtb3Jl
CmNoYWxsZW5naW5nIHRvIGRlYWwgd2l0aCBpbiA5cCBhbHRob3VnaCBzb2x1dGlvbnMgaGF2ZSBi
ZWVuIHByb3Bvc2VkCmluIHRoZSBwYXN0LgoKPiA+IFRoZSB1bHRpbWF0ZSBnb2FsIGlzIHRvIHNp
bXBsaWZ5IHRoZSBvcHRpb25zIGJhc2VkIG9uIGV4cGVjdGVkIHVzZSBtb2RlbHM6Cj4gPgo+ID4g
LSBjYWNoZT1bIG5vbmUsIGZpbGUsIGFsbCBdIChub25lIGlzIGN1cnJlbnRseSBkZWZhdWx0KQo+
Cj4gZGlyPwo+CgpUaGF0IHdhcyB3aGF0IEkgd2FzIG9yaWdpbmFsbHkgZ29pbmcgdG8gZG8sIGJ1
dCAnYWxsJyBtYWtlcyB0aGUKaW5jbHVzaXZpdHkgb2YgZmlsZSBleHBsaWNpdC4gICBUaGUgbW9y
ZSBJIHRob3VnaHQgYWJvdXQgaXQsIHRoZSBsZXNzCkkgc2F3IGEgdXNlIGNhc2UgZm9yIGNhY2hp
bmcgbWV0YSBkYXRhIGFuZCBub3QgZmlsZSBkYXRhLiAgT2YgY291cnNlLAppbiB0aGUgbmV3IHBh
dGNoIHNlcmllcyBJIGhhdmUgYSBiaXQgZm9yIG1ldGEtZGF0YSAod2hpY2ggaXMgYSBiaXQKbW9y
ZSBhY2N1cmF0ZSB0aGFuIGp1c3Qgc2F5aW5nIGRpcikgYXQgbGVhc3QgaW4gdGhlIGN1cnJlbnQK
aW1wbGVtZW50YXRpb24uICBIb3dldmVyLCBpZiBJIGRpZCBhIHNob3J0Y3V0LCBpdCBwcm9iYWJs
eQp3b3VsZCBiZSBhbGwgYW5kIG5vdCBkaXIgKHRoZXJlIGlzbid0IG9uZSB5ZXQgaW4gdGhlIG5l
dyBwYXRjaCBhcyBJJ20KaG9sZGluZyBvZmYgdW50aWwgSSBmaXggY29uc2lzdGVuY3kgZm9yIG1l
dGEtZGF0YSAtLSB3aGljaCBpcyBpbgpwcm9ncmVzcyBhbmQgSSB0aGluayBpbXBlcmZlY3QgYnV0
IGNsb3NlciB0aGFuIGxvb3NlKS4gIEFuZCBhY3R1YWxseQpvbmNlIHdlIGFyZSBjb252aW5jZWQg
dGhpcyBpcyB3b3JraW5nLCB0aGUgc2hvcnRjdXQgZm9yIGFsbCBtYXkgYmUKYmV0dGVyIHJlcHJl
c2VudGVkIGFzICdkZWZhdWx0JyAoaG9wZWZ1bGx5KS4KCj4gPiAtIHdyaXRlX3BvbGljeSA9IFsg
KndyaXRldGhyb3VnaCwgd3JpdGViYWNrIF0gKHdyaXRldGhyb3VnaCB3b3VsZCBiZSBkZWZhdWx0
KQo+ID4gLSBjYWNoZV92YWxpZGF0ZSA9IFsgbmV2ZXIsICpvcGVuLCB4IChzZWNvbmRzKSBdICAo
Y2FjaGVfdmFsaWRhdGUKPiA+IHdvdWxkIGRlZmF1bHQgdG8gb3BlbikKPgo+IEplZmYgY2FtZSB1
cCB3aXRoIHRoZSBwb2ludCB0aGF0IE5GUyB1c2VzIGEgc2xpY2luZyB0aW1lIHdpbmRvdyBmb3Ig
TkZTLiBTbwo+IHRoZSBxdWVzdGlvbiBpcywgd291bGQgaXQgbWFrZSBzZW5zZSB0byBhZGQgYW4g
b3B0aW9uIHggc2Vjb25kcyB0aGF0IG1pZ2h0IGJlCj4gZHJvcHBlZCBzb29uIGFueXdheT8KPgoK
SSBoYWQgdGhvdWdodCBhYm91dCB0aGF0LCBhbmQgaW4gZmFjdCBpbiB0aGUgbmV3IHBhdGNoIHNl
cmllcyBJCmhhdmVuJ3QgaW1wbGVtZW50ZWQgZWl0aGVyIHlldC4gIEluIHRoZSBiaXRtYXNrIHZl
cnNpb24gSSBjb3VsZCB1c2VkCm9uZSBvZiB0aGUgcmVzZXJ2ZWQgYml0cyB0byBzcGVjaWZ5IGFk
YXB0aXZlIHRpbWVvdXRzIGxpa2UgSmVmZiBzYWlkCk5GUyBkb2VzIGFuZCB0aGVuIHRoZSBoaWdo
IGJpdHMgdG8gc3BlY2lmeSB0aGUgYmFzZSB0aW1lb3V0IG9yIDAgaWYKeW91IG5ldmVyIHdhbnQg
dG8gdmFsaWRhdGUgKGN1cnJlbnQgbG9vc2UpLiAgTG9vc2UgbW9kZSBpdHNlbGYKc3BlY2lmaWVz
IGxvb2sgYXQgdGhlIGJhc2UgdGltZW91dCBmb3IgaG93IG11Y2ggdGVtcG9yYWwgY29uc2lzdGVu
Y3kKdG8gYXBwbHkuCgpMb29raW5nIGFoZWFkIGF0IGltcGxlbWVudGluZyB0aGlzIHRoZXJlIGlz
IGdvaW5nIHRvIGJlIHJpcHBsZSBlZmZlY3RzCnRocm91Z2ggdGhlIGNvZGUsIHByb2JhYmx5IGNo
YW5naW5nIHRoZSB3YXkgd2UgdXNlIHRoZSBjYWNoZV92YWxpZGl0eQpmaWVsZCBpbiBpbm9kZS4g
IEJ1dCBzZWVtcyBzdHJhaWdodGZvcndhcmQgZW5vdWdoLgoKPiA+IC0gZnNjYWNoZQo+ID4KPiA+
IFNvLCBtYXBwaW5nIG9mIGV4aXN0aW5nIChkZXByZWNhdGVkKSBsZWdhY3kgbW9kZXM6Cj4gPiAt
IG5vbmUgKG9idmlvdXMpIHdyaXRlX3BvbGljeT13cml0ZXRocm91Z2gKPiA+IC0gKnJlYWRhaGVh
ZCAtPiBjYWNoZT1maWxlIGNhY2hlX3ZhbGlkYXRlX29wZW4gd3JpdGVfcG9saWN5PXdyaXRldGhy
b3VnaAo+ID4gLSBtbWFwIC0+IGNhY2hlPWZpbGUgY2FjaGVfdmFsaWRhdGU9b3BlbiB3cml0ZV9w
b2xpY3k9d3JpdGViYWNrCj4KPiBNbW0sIHdoeSBpcyB0aGF0ICJmaWxlIj8gVG8gbWUgImZpbGUi
IHNvdW5kcyBsaWtlIGFueSBhY2Nlc3MgdG8gZmlsZXMgaXMKPiBjYWNoZWQsIHdoZXJlYXMgY2Fj
aGU9bW1hcCBqdXN0IHVzZXMgdGhlIGNhY2hlIGlmIG1tYXAoKSB3YXMgY2FsbGVkLCBub3QgZm9y
Cj4gYW55IG90aGVyIGZpbGUgYWNjZXNzLgo+CgpXZWxsLCBub3QgdGVjaG5pY2FsbHkgdHJ1ZSAt
LSBiZWNhdXNlIGlmIHRoZSBmaWxlIGlzIG1tYXBlZCBhbmQgaXQgaXMKYWNjZXNzZWQgYW5vdGhl
ciB3YXkgb3RoZXIgdGhhbiB0aGUgbW1hcCB0aGVuIHdlIG5lZWQgdG8gYmFzaWNhbGx5CnRyZWF0
IGl0IGFzIGNhY2hlZCBvciB3ZSdsbCBnZXQgaW5jb25zaXN0ZW5jaWVzIGJldHdlZW4gdGhlIG1t
YXAKdmVyc2lvbiBhbmQgdGhlIHVuY2FjaGVkIHJlYWQvd3JpdGUgdmVyc2lvbi4gIFNvIHRoZSBj
b2RlIGVuZHMgdXAKdXNpbmcgb3Blbi10by1jbG9zZSBmaWxlIGNhY2hpbmcgZm9yIGV2ZXJ5dGhp
bmcuICBJbiBhbnkgY2FzZSwgbW1hcAp3YXMgdGhlcmUgZm9yIGNvbXBhdGliaWxpdHkgcmVhc29u
cyBiZWZvcmUgd2UgaGFkIGEgbm9uLWxvb3NlIGNhY2hpbmcKb3B0aW9uLiAgV2l0aCB0aWdodCBj
YWNoZXMsIGl0cyBiZXR0ZXIgdG8ganVzdCBpbmNvcnBvcmF0ZSBtbWFwIHdpdGgKaXQgKGdpdmVu
IHRoZSBhYm92ZSBjb25jZXJucyBvbiBiZWhhdmlvcikuICBPdGhlcndpc2Ugd2UnZCBoYXZlIHRv
CmVuZm9yY2UgYSBub24tcG9zaXggc2VtYW50aWMgb2YgdGhlIG9ubHkgd2F5IHRvIGFjY2VzcyBh
biBtbWFwZWQgZmlsZQppcyB3aXRoIG1tYXAgYW5kIGZvcmNlIGludmFsaWRhdGlvbnMgb2Ygb3Ro
ZXJzIHRoYXQgbWlnaHQgYWxyZWFkeSBoYXZlCmEgZmlsZSBvcGVuIHdoZW4gc29tZW9uZWJvZHkg
ZWxzZSBtbWFwcyBpdC4uLndvdWxkIGJlIG1lc3N5LgoKPiA+IC0gbG9vc2UgLT4gY2FjaGU9YWxs
IGNhY2hlX3ZhbGlkYXRlPW5ldmVyIHdyaXRlX3BvbGljeT13cml0ZWJhY2sKPiA+IC0gZnNjYWNo
ZSAtPiBjYWNoZT1hbGwgY2FjaGVfdmFsaWRhdGU9bmV2ZXIgd3JpdGVfcG9saWN5PXdyaXRlYmFj
ayAmCj4gPiBmc2NhY2hlIGVuYWJsZWQKPiA+Cj4gPiBTb21lIHRoaW5ncyBJJ20gbGVzcyBjZXJ0
YWluIG9mOiBjYWNoZV92YWxpZGF0aW9uIGlzIHByb2JhYmx5IGFuCj4gPiBpbXBlcmZlY3QgdGVy
bSBhcyBpcyB1c2luZyAnb3BlbicgYXMgb25lIG9mIHRoZSBvcHRpb25zLCBpbiB0aGlzIGNhc2UK
PiA+IEknbSBlbnZpc2lvbmluZyAnb3BlbicgdG8gbWVhbiBvcGVuLXRvLWNsb3NlIGNvaGVyZW5j
eSBmb3IgZmlsZQo+ID4gY2FjaGluZyAoY2FjaGUgaXMgb25seSB2YWxpZGF0ZWQgb24gb3Blbikg
YW5kIHZhbGlkYXRpb24gb24gbG9va3VwIGZvcgo+ID4gZGlyLWNhY2hlIGNvaGVyZW5jeSAodXNp
bmcgcWlkLnZlcnNpb24pLiBTcGVjaWZ5aW5nIGEgbnVtYmVyIGhlcmUKPiA+IGV4cGlyZXMgZXhp
c3RpbmcgY2FjaGVzIGFuZCByZXF1aXJlcyB2YWxpZGF0aW9uIGFmdGVyIGEgY2VydGFpbiBudW1i
ZXIKPiA+IG9mIHNlY29uZHMgKGlzIHRoYXQgdGhlIHJpZ2h0IGdyYW51bGFyaXR5KT8KPgo+IFBl
cnNvbmFsbHkgSSB3b3VsZCB0aGVuIHJlYWxseSBjYWxsIGl0IG9wZW4tdG8tY2xvc2Ugb3Igb3Bl
bnRvY2xvc2UgYW5kIHdhc3RlCj4gc29tZSBtb3JlIGNoYXJhY3RlcnMgaW4gZmF2b3VyIG9mIGNs
YXJpdHkuCj4KCkkgaGFkIG9wZW4yY2xvc2UgaW4gdGhlIG5ldyB2ZXJzaW9uIGFuZCB0aGVuIHJl
dmVydGVkIGl0IHRvIHRoZQppbnZlcnNlIG9mIGxvb3NlIGJlY2F1c2UgaXQgbWFkZSBjaGVja2lu
ZyB0aGUgYml0IHBhdHRlcm4gbXVjaCBlYXNpZXIuCkJ1dCB0aGUgcGxhbiBpcyBmb3IgbG9vc2Ug
dG8gY292ZXIgbm8tY29uc2lzdGVuY3kgKHdoZW4KY2FjaGUtdGltZW91dD09MCwgYW5kIHRlbXBv
cmFsIGNvbnNpc3RlbmN5IHdoZW4gY2FjaGUtdGltZW91dCA+IDAsIGFuZAp0aGVuIGF1Z21lbnQg
dGhhdCB3aXRoIEplZmYncyBzdWdnZXN0aW9uIG9mIGFuIGFkYXB0aXZlIGJpdCkuClBlcmhhcHMg
dGhlIG5ldyBsb29zZSBzaG9ydGN1dCB3aWxsIGNvdmVyIE5GUy1saWtlIHNlbWFudGljcyB3aXRo
IGEKYmFzZS10aW1lb3V0IG9mIDVzIGFuZCBhZGFwdGl2aXR5IGJpdCBzZXQuCgogICAgICAtZXJp
YwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK

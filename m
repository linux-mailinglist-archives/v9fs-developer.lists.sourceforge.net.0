Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73884488D97
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 01:58:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6j10-0008Be-Fw; Mon, 10 Jan 2022 00:58:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n6j0z-0008BY-B1
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 00:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uRt8DC7aSOODc1J8lbTlNqkqIzph89yqmPrsx4NeG4k=; b=cZn/9zvE+FQGAPYBfF+bYXYNR5
 NCOmylkBEs68g+PrfTX3TQBsatTmUYzcsx63NLPehKOyxSxkpf8CIHMPZGqWBtrZhNkHDeMfNBhGn
 HqllwVDi1apkfjcGtb27FMAf51mqJ6nd6ZxYyXKCpV83x3xZPLOTDM1y/jE7BWac5opU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uRt8DC7aSOODc1J8lbTlNqkqIzph89yqmPrsx4NeG4k=; b=NOtTIllwrh5kyguYwTamAlftDD
 +pRemy8Fh2KGMou+6YRxZOnp0IfXpluk31kfMrq/dVQM9IYlKJP0C3PbGr/P9gO9WvqQX+DEMCyQl
 4QmTYHYCbOwp3RWtako+4kG+4QrgnYXncPrVYu8ncDxUgNIA6rjTJzGr2YSYoqtUh1Bo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6j0q-009sEg-5R
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 00:58:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 863BFC020; Mon, 10 Jan 2022 01:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641776289; bh=uRt8DC7aSOODc1J8lbTlNqkqIzph89yqmPrsx4NeG4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cHPqt7XNNOftLpstaYVnaGUIb9o7/kwYXWS5ral8oYtoOmfukwOYLGNPgTRGHK27B
 GvUH0SCVElXLYs+qUldr6GmornA42UR5d8KJDzgwQNwmZR3Lr6+o7+Oe4JszwwxPdD
 V2rBuGlcFoEZrD6l+1mazEDwNqoi9COXddfKzAsZDESvdCe7CWjwR5ooZCtBKHMXBn
 4mfV1ihXWU3XmMNnRrR9uLh8zqBadN/eatHeSZyAvktzCKt0UmMm6XsF0xsRLe/tAb
 BUJNYgELXsbQLVie6PcilCAO3Zbh3gnY0MoBLQHx/pG8vpioD96U5qs8+D5IE4b169
 T0BoQynyYKmsA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 135C6C009;
 Mon, 10 Jan 2022 01:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641776288; bh=uRt8DC7aSOODc1J8lbTlNqkqIzph89yqmPrsx4NeG4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FeIl0b+QkCy2RI29bvXVS2zWPjDKARpjnKg9dDuj1cMtAEtjmKFQRSYJ2k08Xe7CF
 CISXm6pNP1CrVinaJOZP3HMUSXXA36a4OCtLrysofIiAzzvTUu+fErDx1ohl1j3wLM
 sx+IspaAn7GpOJUpe5D3CaOw+XdiUe8pVWwU3bhlVwlEaOLWqDumPc0YDe5+esQLwX
 OB2Q36B9N/IUNLLBJvCEwE+4AiayGR+ksgZ5Y75joOGEibIaEbVgq73dtxthfw9cHA
 UVacMY3Uhb4yCLGQl5L9BwJZDc/IZLUQFMbTa4aPo0lVUWh/Hg+nE38XJx7FGy+hwR
 b5YJ6FWXVsxsw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a5dcf08b;
 Mon, 10 Jan 2022 00:58:01 +0000 (UTC)
Date: Mon, 10 Jan 2022 09:57:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YduEira4sB0+ESYp@codewreck.org>
References: <20211103193823.111007-1-linux@weissschuh.net>
 <20211103193823.111007-3-linux@weissschuh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211103193823.111007-3-linux@weissschuh.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, it's been a while but I had a second look as I
   intend on submitting this next week, just a small fixup on the Kconfig entry
    Thomas Weißschuh wrote on Wed, Nov 03, 2021 at 08:38:21PM +0100: > diff
   --git a/net/9p/Kconfig b/net/9p/Kconfig > index 64468c49791f..af601129f1bb
    100644 > --- a/net/9p/Kconfig > +++ b/net/9p/Kconfig [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1n6j0q-009sEg-5R
Subject: Re: [V9fs-developer] [PATCH v2 2/4] 9p/trans_fd: split into
 dedicated module
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stefano Stabellini <stefano@aporeto.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKaXQncyBiZWVuIGEgd2hpbGUgYnV0IEkgaGFkIGEgc2Vjb25kIGxvb2sgYXMg
SSBpbnRlbmQgb24gc3VibWl0dGluZyB0aGlzCm5leHQgd2VlaywganVzdCBhIHNtYWxsIGZpeHVw
IG9uIHRoZSBLY29uZmlnIGVudHJ5CgpUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZSBvbiBXZWQsIE5v
diAwMywgMjAyMSBhdCAwODozODoyMVBNICswMTAwOgo+IGRpZmYgLS1naXQgYS9uZXQvOXAvS2Nv
bmZpZyBiL25ldC85cC9LY29uZmlnCj4gaW5kZXggNjQ0NjhjNDk3OTFmLi5hZjYwMTEyOWYxYmIg
MTAwNjQ0Cj4gLS0tIGEvbmV0LzlwL0tjb25maWcKPiArKysgYi9uZXQvOXAvS2NvbmZpZwo+IEBA
IC0xNSw2ICsxNSwxMyBAQCBtZW51Y29uZmlnIE5FVF85UAo+ICAKPiAgaWYgTkVUXzlQCj4gIAo+
ICtjb25maWcgTkVUXzlQX0ZECj4gKwlkZXBlbmRzIG9uIFZJUlRJTwoKSSB0aGluayB0aGF0J3Mg
anVzdCBhIGNvcHlwYXN0ZSBsZWZ0b3ZlciBmcm9tIE5FVF85UF9WSVJUSU8gPwpTaW5jZSBpdCB1
c2VkIHRvIGJlIGNvZGUgd2l0aGluIE5FVF85UCBhbmQgaXQncyB3aXRoaW4gYSBpZiBORVRfOVAg
aXQKc2hvdWxkbid0IGRlcGVuZCBvbiBhbnl0aGluZy4KCkFsc28gZm9yIGNvbXBhdGliaWxpdHkg
SSdkIHN1Z2dlc3Qgd2Uga2VlcCBpdCBvbiBieSBkZWZhdWx0IGF0IHRoaXMKcG9pbnQsIGUuZy4g
YWRkICdkZWZhdWx0IE5FVF85UCcgdG8gdGhpcyBibG9jazoKCgpkaWZmIC0tZ2l0IGEvbmV0Lzlw
L0tjb25maWcgYi9uZXQvOXAvS2NvbmZpZwppbmRleCBhZjYwMTEyOWYxYmIuLmRlYWJiZDM3NmNi
MSAxMDA2NDQKLS0tIGEvbmV0LzlwL0tjb25maWcKKysrIGIvbmV0LzlwL0tjb25maWcKQEAgLTE2
LDcgKzE2LDcgQEAgbWVudWNvbmZpZyBORVRfOVAKIGlmIE5FVF85UAogCiBjb25maWcgTkVUXzlQ
X0ZECi0gICAgICAgZGVwZW5kcyBvbiBWSVJUSU8KKyAgICAgICBkZWZhdWx0IE5FVF85UAogICAg
ICAgIHRyaXN0YXRlICI5UCBGRCBUcmFuc3BvcnQiCiAgICAgICAgaGVscAogICAgICAgICAgVGhp
cyBidWlsZHMgc3VwcG9ydCBmb3IgdHJhbnNwb3J0cyBvdmVyIFRDUCwgVW5peCBzb2NrZXRzIGFu
ZAoKCkknbGwganVzdCBmaXh1cCB0aGUgY29tbWl0IHdpdGggYSB3b3JkIGluIHRoZSBtZXNzYWdl
IHVubGVzcyB5b3UgaGF2ZSBhCnByb2JsZW0gd2l0aCBpdCwgcGxlYXNlIGxldCBtZSBrbm93ISA6
KQoKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK

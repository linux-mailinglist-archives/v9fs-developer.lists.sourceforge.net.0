Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E61D443286
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 17:16:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhwSP-0006ON-QB; Tue, 02 Nov 2021 16:16:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mhwSP-0006OH-3b
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rSQJMUu/Sf6moJ2SUGd9pxO0TmpP6niHHHxwBJHGIfo=; b=HBt0X8wMpOvac4mp/AvnWAsTE4
 jzBAq/qT9G0k3vvHROHYTCuSvkuDW56+3PWHRNv7/ERkSn2DyBtKDv53I+Z8j/+E1CnOqwn2vaClY
 S0vpc6gozSQzAh0hz2+RaH6/KChCuEQVfsFJsdLI+1wrlTHyQ+ZK7a6l66q0Dn69NcgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rSQJMUu/Sf6moJ2SUGd9pxO0TmpP6niHHHxwBJHGIfo=; b=jUe/sKUd9HnRWlF8HKb73pAKWM
 HmgCYfzlP4YKy0R4TTwq3LTOPXkABW/ILJTycYyg0zmkQY3CBqTvdbZe06HTXphn4wIoOztfQsdbp
 HSKfVc3uTJ01EH8RNm6/0+5F1PAa8GLXgp6XfoUq7gp9D6l6qHh+8Wra5cXUW/5hmPmw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhwSO-00F8cT-26
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:16:17 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E3984C023; Tue,  2 Nov 2021 15:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635865115; bh=rSQJMUu/Sf6moJ2SUGd9pxO0TmpP6niHHHxwBJHGIfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DuQRAi024wq8Z+7KnDA7YPWNYoEd5mHmS6bzQF667QbQZ5x6Ef9uzDCG4Y8iJhf3Z
 ca+Tw9ABAtgqZ1p4UnCCDqi9M42dLqp0azDFvEzV3XcP1ct9to2Bf2XHuqzXlb9d11
 FdkIGlezPLD/HAgKRdKvAsLtri2GAESS1dlBgOtuaIiTUsrYYo7zdDlUbzti8luehH
 7TbTQCq9/43RCWPSpoOLwWo46RdhJR33ktsyOuYTI6XiOT9B5FND5FPYF38NWywq4n
 gfdYqa3ngAcQDPZSlR/U0BGmNyDRpoIiqk6Gkj42fXk6cBsK+iaiT96DOUecWjcIPY
 eQaBGQtvT58hA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7A857C009;
 Tue,  2 Nov 2021 15:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635865112; bh=rSQJMUu/Sf6moJ2SUGd9pxO0TmpP6niHHHxwBJHGIfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=35bAd15JzTIWvbg+dc/k7SeRIfdoy2bZtmjilRkhlwMZA/1ajeEQHh/W1dBho1C4b
 xANvENZz9S4XjWhYnW3W6QeRohSgLnkMdNrWMO6HB6vbVZnGUWpeOzrMG12oaGXuAx
 W/vBsTNMg8RdzazfyrUGDy9MvWJ8E4q+W8hi8UgldrDstB5Lv4XOYrxuYJpkES+nmj
 LmK6jrLpElbpS1f2wctew4gOLbdwpE7Ogu6OmxXXWEII0uFeqexd96r3x2yxUitJ0J
 5f4yZ5n9LTYT0IvoKu1ES+H8NO5T8KJq5PmIehNUSYr5tqcfCoA/y+/p3lGWhnAaqf
 K5pHT6vWCYrPA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id bb0e0d0d;
 Tue, 2 Nov 2021 14:58:27 +0000 (UTC)
Date: Tue, 2 Nov 2021 23:58:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YYFSBKXNPyIIFo7J@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thomas Weißschuh wrote on Tue, Nov 02, 2021 at 03:49:32PM
    +0100: > > I guess it wouldn't hurt to have 9p-tcp 9p-unix and 9p-fd aliases
    to the > > 9pnet module, but iirc these transports were more clo [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: codewreck.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mhwSO-00F8cT-26
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhvbWFzIFdlacOfc2NodWggd3JvdGUgb24gVHVlLCBOb3YgMDIsIDIwMjEgYXQgMDM6NDk6MzJQ
TSArMDEwMDoKPiA+IEkgZ3Vlc3MgaXQgd291bGRuJ3QgaHVydCB0byBoYXZlIDlwLXRjcCA5cC11
bml4IGFuZCA5cC1mZCBhbGlhc2VzIHRvIHRoZQo+ID4gOXBuZXQgbW9kdWxlLCBidXQgaWlyYyB0
aGVzZSB0cmFuc3BvcnRzIHdlcmUgbW9yZSBjbG9zZWx5IHRpZWQgdG8gdGhlCj4gPiByZXN0IG9m
IDlwbmV0IHRoYW4gdGhlIHJlc3Qgc28gaXQgbWlnaHQgdGFrZSBhIHdoaWxlIHRvIGRvIGFuZCBJ
IGRvbid0Cj4gPiBoYXZlIG11Y2ggdGltZSBmb3IgdGhpcyByaWdodCBub3cuLi4KPiA+IEknZCBy
YXRoZXIgbm90IHByZXBhcmUgZm9yIHNvbWV0aGluZyBJJ2xsIGxpa2VseSBuZXZlciBnZXQgb250
bywgc28KPiA+IGxldCdzIGRvIHRoaXMgaWYgdGhlcmUgaXMgcHJvZ3Jlc3MuCj4gPiAKPiA+IE9m
IGNvdXJzZSBpZiB5b3UnZCBsaWtlIHRvIGhhdmUgYSBsb29rIHRoYXQnZCBiZSBtb3JlIHRoYW4g
d2VsY29tZSA6LSkKPiAKPiBJZiB5b3UgYXJlIHN0aWxsIHRlc3RpbmcgYW55d2F5cywgeW91IGNv
dWxkIGFsc28gdHJ5IHRoZSBhdHRhY2hlZCBwYXRjaC4KPiAoSXQgcmVxdWlyZXMgdGhlIGF1dGxv
YWQgcGF0Y2gpCj4gCj4gSXQgYnVpbGRzIGZpbmUgYW5kIEkgc2VlIG5vIHJlYXNvbiBmb3IgaXQg
bm90IHRvIHdvcmsuCgpUaGFua3MhIEknbGwgZ2l2ZSBpdCBhIHNwaW4uCgoKSSB3YXMgYWN0dWFs
bHkganVzdCB0ZXN0aW5nIHRoZSBhdXRvbG9hZCBvbmUgYW5kIEkgY2FuJ3QgZ2V0IGl0IHRvIHdv
cmsKb24gbXkgbWluaW1hbCBWTSwgSSBndWVzcyB0aGVyZSdzIGEgcHJvYmxlbSB3aXRoIHRoZSB1
c2VybW9kaGVscGVyIGNhbGwKdG8gbG9hZCBtb2R1bGUuLgoKd2l0aCA5cC85cG5ldCBsb2FkZWQs
CnJ1bm5pbmcgIm1vdW50IC10IDlwIC1vIHRyYW5zPXZpcnRpbyB0bXAgL21udCIKcmVxdWVzdF9t
b2R1bGUoIjlwLSVzIiwgInZpcnRpbyIpIHJldHVybnMgLTIgKEVOT0VOVCkKCkxvb2tpbmcgYXQg
dGhlIGNvZGUgaXQgc2hvdWxkIGJlIHJ1bm5pbmcgIm1vZHByb2JlIC1xIC0tIDlwLXZpcnRpbyIK
d2hpY2ggZmluZHMgdGhlIG1vZHVsZSBqdXN0IGZpbmUsIGhlbmNlIG15IHN1cHBvc2l0aW9uIHVz
ZXJtb2RoZWxwZXIgaXMKbm90IHNldHVwIGNvcnJlY3RseQoKRG8geW91IGhhcHBlbiB0byBrbm93
IHdoYXQgSSBuZWVkIHRvIGRvIGZvciBpdD8KCkkndmUgcnVuIG91dCBvZiB0aW1lIGZvciB0b2Rh
eSBidXQgd2lsbCBsb29rIHRvbW9ycm93IGlmIHlvdSBkb24ndCBrbm93LgoKKEFuZCBzaW5jZSBp
dCBkb2Vzbid0IGFwcGFyZW50bHkgd29yayBvdXQgb2YgdGhlIGJveCBvbiB0aGVzZSBtaW5pbWFs
ClZNcyBJIHRoaW5rIEknbGwgd2FudCB0aGUgdHJhbnNfZmQgbW9kdWxlIHNwbGl0IHRvIHNpdCBp
biBsaW51eC1uZXh0CmZvciBhIGJpdCBsb25nZXIgdGhhbiBhIGZldyBkYXlzLCBzbyB3aWxsIGJl
IG5leHQgbWVyZ2Ugd2luZG93KQoKClRoYW5rcywKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 598D43E1B43
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Aug 2021 20:28:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mBi6J-0004dC-0E; Thu, 05 Aug 2021 18:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kilobyte@angband.pl>) id 1mBi6H-0004cz-PJ
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ruPpkR+EBZ9lj4vkhwcVaR1SMkrUbMciWEntnLNqCWw=; b=borGW5MdoN88WPXX1zKwF7dWgd
 PuntChzj0y/kiZ833pm60Qi0LBtNKLmPUcYdy2m3SEhiMA0zwUfrPTDXth/g4x7hWuojZ/XNezYqS
 r0Kn76tMALbw5btEyq9tW5Fr999r65drNM8B/b47ITW9JUHT0S2C5YuJGxTzE6MQNnj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ruPpkR+EBZ9lj4vkhwcVaR1SMkrUbMciWEntnLNqCWw=; b=TvvJYgak7JWvQpoOqj8AK1p/Cr
 OGZHvKlY3fBl96ixet0WXWN7Jh8yzHKY4SsXo4Ac+55IP6qy0IkRDfBe9Gu0QXcqyI6SSbW73E0F6
 On8/M1eefVvMlhFHB8+6PmcVGFP2NSjYB9phcn7PEsFGihL00WTN6QFKC49M26nBx5SI=;
Received: from tartarus.angband.pl ([51.83.246.204])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mBi6F-0007I6-Qi
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Aug 2021 18:28:13 +0000
Received: from kilobyte by tartarus.angband.pl with local (Exim 4.94.2)
 (envelope-from <kilobyte@angband.pl>)
 id 1mBhYA-001pwx-6C; Thu, 05 Aug 2021 19:52:58 +0200
Date: Thu, 5 Aug 2021 19:52:58 +0200
From: Adam Borowski <kilobyte@angband.pl>
To: David Howells <dhowells@redhat.com>
Message-ID: <YQwlehFilahEZg2T@angband.pl>
References: <YQv+iwmhhZJ+/ndc@casper.infradead.org>
 <YQvpDP/tdkG4MMGs@casper.infradead.org>
 <YQvbiCubotHz6cN7@casper.infradead.org>
 <1017390.1628158757@warthog.procyon.org.uk>
 <1170464.1628168823@warthog.procyon.org.uk>
 <1186271.1628174281@warthog.procyon.org.uk>
 <1219713.1628181333@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1219713.1628181333@warthog.procyon.org.uk>
X-Junkbait: aaron@angband.pl, zzyx@angband.pl
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: kilobyte@angband.pl
X-SA-Exim-Scanned: No (on tartarus.angband.pl); SAEximRunCond expanded to false
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mBi6F-0007I6-Qi
Subject: Re: [V9fs-developer] Canvassing for network filesystem write size
 vs page size
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVGh1LCBBdWcgMDUsIDIwMjEgYXQgMDU6MzU6MzNQTSArMDEwMCwgRGF2aWQgSG93ZWxscyB3
cm90ZToKPiAgLSBhIGNvbXBsZXRlIGZvbGlvIGN1cnJlbnRseSBpcyBsaW1pdGVkIHRvIFBNRF9T
SVpFIG9yIG9yZGVyIDgsIGJ1dCBjb3VsZAo+ICAgIHRoZW9yZXRpY2FsbHkgZ28gdXAgdG8gYWJv
dXQgMkdpQiBiZWZvcmUgdmFyaW91cyBpbnRlZ2VyIGZpZWxkcyBoYXZlIHRvIGJlCj4gICAgbW9k
aWZpZWQgKG5vdCB0byBtZW50aW9uIHRoZSBtZW1vcnkgYWxsb2NhdG9yKS4KCk5vIHN1cHBvcnQg
Zm9yIHJpc2N2IDUxMkdCIHBhZ2VzPyA6cAoKCi0tIAriooDio7TioL7ioLviorbio6bioIAK4qO+
4qCB4qKg4qCS4qCA4qO/4qGBIFRoZSBpbGwtdGhvdWdodCBjb252ZXJzaW9uIHRvIHRpbWU2NF90
IHdpbGwgbWFrZSB1cyBzdWZmZXIgZnJvbQrior/ioYTioJjioLfioJrioIvioIAgdGhlIFkyOTJC
IHByb2JsZW0uICBTbyBsZXQncyBtb3ZlIHRoZSBFcG9jaCBieSA0MzU0NTE0MDAwNjQwMDAwMDAK
4qCI4qCz4qOE4qCA4qCA4qCA4qCAIGFuZCBtYWtlIGl0IHVuc2lnbmVkIC0tIHRoYXQnbGwgYWxt
b3N0IGRvdWJsZSB0aGUgcmFuZ2UuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=

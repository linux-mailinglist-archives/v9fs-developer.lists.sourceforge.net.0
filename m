Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF53628FFD
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 03:35:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouln2-0003sw-Ky;
	Tue, 15 Nov 2022 02:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ouln1-0003sq-HO
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 02:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nbL/xZDPCL8jmbEEnRtWHyMrAnIAlzzCW9ltmbNEdmY=; b=fFO6JNgCj9fGdcH+ahHC03IhE9
 NSa6rgqaJ5OWcWrx1JZh4ruLcE5OJVxzrPAkv2qAMnESdk1g8m9/N+mPdhA+1yJadbZyKBQtTdFcZ
 Brgr5nXnS38thfWeW12RBce2HlJ+4NhrUgO44ZJpDsZzwjE39QOx5pdNCNabrg7hYr9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nbL/xZDPCL8jmbEEnRtWHyMrAnIAlzzCW9ltmbNEdmY=; b=LiYp3+Eh0Yu8u81x6tMLA3HOb0
 qMtX5tVAbfkriH4anaHsegka/BuwHLfkXfP5MN/+RBM2v3VnMw167V+ZQsZhlRkF6NgiE7ek8bK6f
 hMp771OWNv5h1tHEqTgHnt/jOUQlvt3HGNw0QqoMp1WdRtFaVxLSq7PwRblc+N6B0ad8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oulmv-0004Zt-HD for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 02:35:07 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 53634C01D; Tue, 15 Nov 2022 03:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668479700; bh=nbL/xZDPCL8jmbEEnRtWHyMrAnIAlzzCW9ltmbNEdmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BTubEyb88pK+tsFm7mlAIi0fLDfKqvqQliCRntOPeC4bJA7GiR8kUDT7tiQCWJIiS
 u0yKZzPzdUkxqS4ycN4tcYIjo+s5sw92WqHr8NaO7GbCjD3sgqG4vrudrxEhFOrT9f
 +T8bbOugd7Dg7OSLKsblTaJ9E/kMNnh6rnyRX7sIEznZDN5dyWBWm7rjvVYYPfL8Ur
 aGrU8o9oMCKHmT4nvvDedDxlMj92pLGNV+MnictvtnaosvsSfGqroOpH2OV3ziZ/E9
 INWP10dOAk+5o4VIlIZbWsChdcJCuG+0QBDXAaLx8Rp1dTjjERzVmfrvQTLaxM64pK
 r7cxJX4SQt5WQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D917EC009;
 Tue, 15 Nov 2022 03:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668479699; bh=nbL/xZDPCL8jmbEEnRtWHyMrAnIAlzzCW9ltmbNEdmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ODuILm6w+muG3YeYXeL/B2w4v4ALouBB7EV1VWeD79EfdWs/VXHiGECni9EG7SqsI
 agXPtCjW3dGG4vr5u/QKL9H6P16bSuKD0imiXCGlAD0h2CLVsb8gZ+zbmNmMIOJRTR
 Wv09VHJNaZty+f1IPSOoZ8PvXKpoig+0zjZjTZ2n4NhZJ2PqeRmn25Xf5lQgrMAo6M
 mxOKmEx83Okrxey+BEMqnxazd9KX0jdhVii/ypx6Z171SAn5mV7jqq5K5IfgQrcRqn
 HlAUbhC42z9d7SAJrThRyyEAOysG0Cja0bVY4Y2pkA+slZ0Jh+0maC+cdYHAkDORZO
 rKrJwJ3Gb50hg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ea3428a8;
 Tue, 15 Nov 2022 02:34:46 +0000 (UTC)
Date: Tue, 15 Nov 2022 11:34:31 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y3L6t0U89o27gJru@codewreck.org>
References: <Y3Lbul7FZncNVwVZ@codewreck.org>
 <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
 <1457985.1668472862@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457985.1668472862@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Tue, Nov 15, 2022 at 12:41:02AM +0000:
 > Dominique Martinet <asmadeus@codewreck.org> wrote: > > any harm in setting
 this if netfs isn't enabled? > > (just asking because you che [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oulmv-0004Zt-HD
Subject: Re: [V9fs-developer] [RFC PATCH v2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 dwysocha@redhat.com, ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 willy@infradead.org, Steve French <sfrench@samba.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Tue, Nov 15, 2022 at 12:41:02AM +0000:
> Dominique Martinet <asmadeus@codewreck.org> wrote:
> > any harm in setting this if netfs isn't enabled?
> > (just asking because you checked in fs/9p/cache.c above)
> 
> Well, it forces a call to ->release_folio() every time a folio is released, if
> set, rather than just if PG_private/PG_private_2 is set.

Yes, that's what I gathered from your explanation, but I don't
understand what release_folio() actually implies in practice which is
why I asked -- it looked a bit odd that you're checking for
v9inode->netfs.cache in one case and not in the other; especially as all
inodes should go through both v9fs_cache_inode_get_cookie() (when
created) and v9fs_evict_inode() so I was a bit curious.

In the 9p-without-cache case, we're normally not going through page
cache at all, so I guess there won't be any mapping and this will be
free anyway...

> > > -	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
> > > +	if (!filemap_release_folio(folio, 0))
> > 
> > should this (and all others) check for folio_needs_release instead of has_private?
> > filemap_release_folio doesn't check as far as I can see, but perhaps
> > it's already fast and noop for another reason I didn't see.
> 
> Willy suggested merging the checks from folio_has_private() into
> filemap_release_folio():
> 
> 	https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/

Ah, I didn't understand the suggestion in your patch was a separate
patch and didn't follow the link.
It doesn't look like a patch per se, perhaps sending both together would
make sense -- but on top of this change these should indeed be fine,
thanks.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

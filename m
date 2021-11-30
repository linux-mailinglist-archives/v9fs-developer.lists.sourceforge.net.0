Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A48463BF1
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 17:37:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ms68B-0005bK-S8; Tue, 30 Nov 2021 16:37:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nathan@kernel.org>) id 1ms5tj-0005M7-Vt
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 16:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Z/hKIZc0sMdVPtqCXMarWuRcei/Jm0qJy1+eIZ24fQ=; b=FO1qb9LnhxTBGfKZD8UZouNajr
 polRYT2QWx8Pw1ZIHglh+FT4sK4yXXAh+4uFJrUZt1ASA66vUiE2NKV0GX5xxQOIGw8jOdayXu5tX
 3Hh/fx1dA06kN/BMPzg9P5aRMftZPDyoZE1mglw/7Atp4BUuypZHxpsOG8pVvHvzLL+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/Z/hKIZc0sMdVPtqCXMarWuRcei/Jm0qJy1+eIZ24fQ=; b=VHo/z7QE4NvmbTtT2xL9MjZo38
 g9gbzqF8fyZtbOHJrfc8ZoPzKFiOLyhHRPwnsMSb6kRX7ym6FZbfzG7lcovTMUtpE8lTcf40GsouP
 Fs0zPEfXZvW99ytiIxUt87JCDzEI1+afZZvfQsOvuWRKadJmOWMmcPSolT/xPtBjxFG0=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms5td-00020n-VU
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 16:22:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 6818FCE1A0D;
 Tue, 30 Nov 2021 16:15:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB047C53FC1;
 Tue, 30 Nov 2021 16:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638288913;
 bh=P8o3xJoZ9GulqCm3by9ySAYZOhiX00eAxdialhufxvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OetwOYtBIbikZ7LhnB77SBsvM18Jm92Lg+sWp1Bvq5NVYWIn707PetzCzKVQF1gBH
 hNp2rvzS0GtDyA/Bx2OpdVp0YnKbr+LEQ2zKIXjGaHGVfTHD1CNhgpEYU5J9PMG+00
 IhCpzigsWUjK+JLVGt8LYCrs8x0B/a3b9CCnAQG4P6L7x38XQJ+PGJ+UkP6cuKfFtQ
 +w7m1GQzxL2JB1Iyi/KFgpyMccj7+60rXdqdDGz77eXCn910146xaAcM4AoJcraRc7
 1HbdNXcgXI29uQxAK6lwOENIPqHsaiCEzKVtpoMFZ7seIi08nc1OU1mWsQlaTVmu5o
 8Enk0P0netdMA==
Date: Tue, 30 Nov 2021 09:15:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YaZOCk9zxApPattb@archlinux-ax161>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819647945.215744.17827962047487125939.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163819647945.215744.17827962047487125939.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 29, 2021 at 02:34:39PM +0000,
 David Howells wrote:
 > Implement the I/O routines for cachefiles. There are two sets of routines
 > here: preparation and actual I/O. > > Preparation for read [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ms5td-00020n-VU
Subject: Re: [V9fs-developer] [PATCH 51/64] cachefiles: Implement the I/O
 routines
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, llvm@lists.linux.dev,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 29, 2021 at 02:34:39PM +0000, David Howells wrote:
> Implement the I/O routines for cachefiles.  There are two sets of routines
> here: preparation and actual I/O.
> 
> Preparation for read involves looking to see whether there is data present,
> and how much.  Netfslib tells us what it wants us to do and we have the
> option of adjusting shrinking and telling it whether to read from the
> cache, download from the server or simply clear a region.
> 
> Preparation for write involves checking for space and defending against
> possibly running short of space, if necessary punching out a hole in the
> file so that we don't leave old data in the cache if we update the
> coherency information.
> 
> Then there's a read routine and a write routine.  They wait for the cookie
> state to move to something appropriate and then start a potentially
> asynchronous direct I/O operation upon it.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com

This patch as commit 0443b01eccbb ("cachefiles: Implement the I/O
routines") in -next causes the following clang warning/error:

fs/cachefiles/io.c:489:6: error: variable 'ret' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
        if (pos == 0)
            ^~~~~~~~
fs/cachefiles/io.c:492:6: note: uninitialized use occurs here
        if (ret < 0) {
            ^~~
fs/cachefiles/io.c:489:2: note: remove the 'if' if its condition is always true
        if (pos == 0)
        ^~~~~~~~~~~~~
fs/cachefiles/io.c:440:9: note: initialize the variable 'ret' to silence this warning
        int ret;
               ^
                = 0
1 error generated.

It is the same one that has been reported two other times over the past
two months:

https://lore.kernel.org/r/202110150048.HPNa2Mn7-lkp@intel.com/
https://lore.kernel.org/r/202111070451.bsfAyznx-lkp@intel.com/

Should ret just be initialized to zero or does it need to be set to
something else if pos is not equal to zero at the end?

Cheers,
Nathan


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

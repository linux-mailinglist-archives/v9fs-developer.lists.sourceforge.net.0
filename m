Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B06F1493959
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Jan 2022 12:16:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nA8wu-0007XB-5q; Wed, 19 Jan 2022 11:16:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <brauner@kernel.org>) id 1nA8ws-0007X5-P6
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 11:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eXLWKX9/DuPvsXzAmglgDWXW5MBE9QeGXwlt/YYxdd8=; b=NsaxFUmXUmxHCEI11+vh8heVvt
 LkBqHoY2gxIUgwmqplWQwZuI6ZmwY9Rap++Ged+3VDCNhJPtcHnkONXOCJ32OZU7nGq1q0qOIHpgp
 1FTAgt2jcBT3SqVNoKfGZnIfs/NQl70b89Yn4RVgMwRo3dO7tKKyrZIlabN64MqT5TrM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eXLWKX9/DuPvsXzAmglgDWXW5MBE9QeGXwlt/YYxdd8=; b=bX20ayFRlqltMHDnKnAwJyg7jD
 C9EO8fiw7/OHaoeH33aUBtmwfAZf4x7Hh17lIRnq/rqm14wpx/le7S1fyAhZ632ulXBNGP1L7y1CD
 QC9K/qX1WubRuG6cUL0a3rosDJiYjW5D+74pOhwiZnY9iPWKbsigkD1NW0xsjHBlfO80=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nA8wq-003TWr-HO
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 11:16:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6E44AB81900;
 Wed, 19 Jan 2022 11:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07EC8C004E1;
 Wed, 19 Jan 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642590964;
 bh=2yjBD4Zacw+5slFq4LLTP2+0CVP0ahv0ykBSsfMZgFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sWcBQNL3jsVDx8fbC4Tu3Z7AAaVmBxjdgAxC1FcAS8Ufemm9lwqE+FjUw8YobL0g5
 maE0aFh0Blr15dbPkx6ryoeImGeucYTTcsECJx1mt0+jq0oQ6FQ5rulN3uruRj5DR9
 7iDa/u8UQ46Ll1d02g4BzWZus5gttImEBP/RPvToowP4cEwiueV36Qa+mbLXKiKF1P
 TDpAHrbrWHnvi/TfuAgEy+otbPNTxTNLfZLBje9IVSfCKF2Ngao1yFiRVXJhZg4UCw
 U4FwtkiJsQmV/NTjtIL3341Q+Mvi5YeltCuHtB2mLD/ESo335mZI38irwhrXsAf0Se
 tjihvN1DWwviQ==
Date: Wed, 19 Jan 2022 12:15:57 +0100
From: Christian Brauner <brauner@kernel.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20220119111557.gjrjwgib2wgteir6@wittgenstein>
References: <YeefizLOGt1Qf35o@infradead.org> <YebpktrcUZOlBHkZ@infradead.org>
 <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
 <3613681.1642527614@warthog.procyon.org.uk>
 <3765724.1642583885@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3765724.1642583885@warthog.procyon.org.uk>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 19, 2022 at 09:18:05AM +0000,
 David Howells wrote:
 > Christoph Hellwig <hch@infradead.org> wrote: > > > On Tue, Jan 18, 2022
 at 05:40:14PM +0000, David Howells wrote: > > > Christoph Hellw [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nA8wq-003TWr-HO
Subject: Re: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jan 19, 2022 at 09:18:05AM +0000, David Howells wrote:
> Christoph Hellwig <hch@infradead.org> wrote:
> 
> > On Tue, Jan 18, 2022 at 05:40:14PM +0000, David Howells wrote:
> > > Christoph Hellwig <hch@infradead.org> wrote:
> > > 
> > > > On Tue, Jan 18, 2022 at 01:54:54PM +0000, David Howells wrote:
> > > > > Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
> > > > > common practice for the other inode flags[1].
> > > > 
> > > > Please fix the flag to have a sensible name first, as the naming of the
> > > > flag and this new helper is utterly wrong as we already discussed.
> > > 
> > > And I suggested a new name, which you didn't comment on.
> > 
> > Again, look at the semantics of the flag:  The only thing it does in the
> > VFS is to prevent a rmdir.  So you might want to name it after that.
> > 
> > Or in fact drop the flag entirely.  We don't have that kind of
> > protection for other in-kernel file use or important userspace daemons
> > either.  I can't see why cachefiles is the magic snowflake here that
> > suddenly needs semantics no one else has.
> 
> The flag cannot just be dropped - it's an important part of the interaction
> with cachefilesd with regard to culling.  Culling to free up space is
> offloaded to userspace rather than being done within the kernel.
> 
> Previously, cachefiles, the kernel module, had to maintain a huge tree of
> records of every backing inode that it was currently using so that it could
> forbid cachefilesd to cull one when cachefilesd asked.  I've reduced that to a
> single bit flag on the inode struct, thereby saving both memory and time.  You
> can argue whether it's worth sacrificing an inode flag bit for that, but the
> flag can be reused for any other kernel service that wants to similarly mark
> an inode in use.
> 
> Further, it's used as a mark to prevent cachefiles accidentally using an inode
> twice - say someone misconfigures a second cache overlapping the first - and,
> again, this works if some other kernel driver wants to mark inode it is using
> in use.  Cachefiles will refuse to use them if it ever sees them, so no
> problem there.
> 
> And it's not true that we don't have that kind of protection for other
> in-kernel file use.  See S_SWAPFILE.  I did consider using that, but that has
> other side effects.  I mentioned that perhaps I should make swapon set
> S_KERNEL_FILE also.  Also blockdevs have some exclusion also, I think.
> 
> The rmdir thing should really apply to rename and unlink also.  That's to
> prevent someone, cachefilesd included, causing cachefiles to malfunction by
> removing the directories it created.  Possibly this should be a separate bit
> to S_KERNEL_FILE, maybe S_NO_DELETE.
> 
> So I could change S_KERNEL_FILE to S_KERNEL_LOCK, say, or maybe S_EXCLUSIVE.

[ ] S_REMOVE_PROTECTED
[ ] S_UNREMOVABLE
[ ] S_HELD_BUSY
[ ] S_KERNEL_BUSY
[ ] S_BUSY_INTERNAL
[ ] S_BUSY
[ ] S_HELD

?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

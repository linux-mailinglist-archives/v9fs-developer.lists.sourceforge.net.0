Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58447493448
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Jan 2022 06:20:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nA3On-0002iX-0T; Wed, 19 Jan 2022 05:20:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+9acbed8b885a6773099c+6723+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nA3Ol-0002iQ-Rm
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 05:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zCnUn09sb6ERyGqIvgioo3seFmwAbbVIJnBrFXm1CgA=; b=V5/K6tStTFTjaUrslWNDPNFCPQ
 4jqVNZoqPtB/y/IGtZrvMp16cLD8F3ZVdtnnHnIG3eg3vTVnr5MmEjr8JW/VzSkuRT/b82lezLojM
 TnG03feRvivSR1agbMwbZ8pt1p4qXhtpV6070uhWzISguHPoilbvpBokqxVy2z3HjifY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zCnUn09sb6ERyGqIvgioo3seFmwAbbVIJnBrFXm1CgA=; b=KYz6s6R6aj/Sonrfjd261jZRFm
 ARBsS7/vc7bmLla0Wp7MMwjHihc9nxDPs7bgtxs+zMPPWWup0kunPWtKyjBmO+MVPuejzKhzwQ4hE
 1vIT9+AaCZQHQRLyW7vVPQArN2aGUsIoHTqr78LNTpY4soSCQYZWV2MwBcd+Tv9OgRM4=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nA3Oi-0004ho-OE
 for v9fs-developer@lists.sourceforge.net; Wed, 19 Jan 2022 05:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zCnUn09sb6ERyGqIvgioo3seFmwAbbVIJnBrFXm1CgA=; b=2IiHzr3sF6AOeiLyrYxB3stg6B
 In72SYB4+LQGzhMbHoql1xCZ3FVDIuJnKKf2vow9nyfeDi7RuGy9/Qlno8PlYmL9Ug3tC9RB/E8Js
 MW22sT6fJYOti8nlF//wxgcYQmr8yUxIdbAVb++QfZ9fi2BeEIvGq9P/v/eUZgTqO3/HwBjWQ9WCG
 B99ElFBr2hiiTS9KQriCGobMvbk5ORDrXoWfhAC0AypL72vq6MIc/I70ZBTuX5L53jI6tdazyHAbN
 qCCIw0znLs/dl1/oCtbeHkjgltfsFJKoCyax0bk6b5j2QduT2Tln9uSU1wDSAWBODpQ2Am6X2vX1h
 4SK/v2Cw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nA3OF-003qhc-Es; Wed, 19 Jan 2022 05:20:11 +0000
Date: Tue, 18 Jan 2022 21:20:11 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YeefizLOGt1Qf35o@infradead.org>
References: <YebpktrcUZOlBHkZ@infradead.org>
 <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
 <3613681.1642527614@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3613681.1642527614@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 18, 2022 at 05:40:14PM +0000,
 David Howells wrote:
 > Christoph Hellwig <hch@infradead.org> wrote: > > > On Tue, Jan 18, 2022
 at 01:54:54PM +0000, David Howells wrote: > > > Add an IS_KERNE [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nA3Oi-0004ho-OE
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

On Tue, Jan 18, 2022 at 05:40:14PM +0000, David Howells wrote:
> Christoph Hellwig <hch@infradead.org> wrote:
> 
> > On Tue, Jan 18, 2022 at 01:54:54PM +0000, David Howells wrote:
> > > Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
> > > common practice for the other inode flags[1].
> > 
> > Please fix the flag to have a sensible name first, as the naming of the
> > flag and this new helper is utterly wrong as we already discussed.
> 
> And I suggested a new name, which you didn't comment on.

Again, look at the semantics of the flag:  The only thing it does in the
VFS is to prevent a rmdir.  So you might want to name it after that.

Or in fact drop the flag entirely.  We don't have that kind of
protection for other in-kernel file use or important userspace daemons
either.  I can't see why cachefiles is the magic snowflake here that
suddenly needs semantics no one else has.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

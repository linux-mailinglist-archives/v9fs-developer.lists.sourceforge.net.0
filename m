Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 854E9436DB6
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 00:47:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdgqH-0002z4-40; Thu, 21 Oct 2021 22:47:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <osandov@osandov.com>) id 1mdgqG-0002yy-5R
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 22:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tSebnyNuofgB+vH+7uyEvZ4tUVxD1t6yZgP5DdCdt6U=; b=mREHQBP+sa0t1JVDye1Xy5zNva
 WbV+hNiHp9t99ERj0Q4cLvU+IB7fcynXWlohaaDiay8myYqOQpzb3/PRee6f1YoIhrfhv3KQ9ncre
 0Mzbxy63dMIt7Oq6xrCM2YM0kBbuMWd6lGq4+EF1oM+IZ6SPuL0Rbh855u8pGGVK7XCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tSebnyNuofgB+vH+7uyEvZ4tUVxD1t6yZgP5DdCdt6U=; b=O+DMrA5bQH2hxbuwIawl33+v/0
 um3EBGtHtbBz0TRUCjgRLpEF4k5izHseAigDHdU9j+kihsvrx3xIY7HZ6O9d/5EnRdkcUlLEKGIL3
 PcjqxHC2ETIs8ShyJMAahJpktRGOorkszFFl49ed/Q/7mY3j1RmNQa7SuUunr9h5nJHQ=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdgqC-00025i-9j
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 22:47:20 +0000
Received: by mail-oi1-f174.google.com with SMTP id r6so2804826oiw.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 21 Oct 2021 15:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tSebnyNuofgB+vH+7uyEvZ4tUVxD1t6yZgP5DdCdt6U=;
 b=F7yvuj7nSVzEl2W8Oqbp8atFxmQ6r9Dbqs8V0fbJgxGY00MyLd4k7jqKWORSw8mHY3
 IxDvRVo4cDtbcTi+/kKA0Egwg6fwcXP4oiOtpnrGNLmO/C442vDZiAmDs7CTs8KbHnL0
 kCfPRr95kbaIPqVIEMaFt3kyXUmXLF1FErwp9s/A5nE3+S3NMzLTtwdHdwqBgOjYLvX6
 WYBTP6OervOJQWbY/Vx42YzjOvR/cqpxNWYc3dmwBm4LRWFBE/nHVqb6lPrrGCjmZ/nt
 d5x2bQUiW2+vfgaGS/ipy/W+4F2BD7/kMrpChjIWchBsBRmebimx5o7b+OPOqd72o4oe
 ThBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tSebnyNuofgB+vH+7uyEvZ4tUVxD1t6yZgP5DdCdt6U=;
 b=7XDojPW8FY4PidjwLEoajicnrQvXWp48mX2zSW6DlGCzpbwlNo8hbPENasNa/oCGiV
 onROXse/yzVMpIFFALR3wLqx9qzaG2D4kjDycDhpW9b7JWTlDuie0SlPqtfDLxCtg7WC
 Jro/HTHglu4z4kLSYx+fxNSfz4Fy/GrJ7UkPN6TIWFpMC/lAXHsmB+diMogwpDLQj+0F
 UG6hcbx5fwMlWxiC0EP/NTz5q6BJFcfZx+oz49zPpviIbxF+I6AqqZqd2qVKcKgnGq6B
 imdEzMuHkKvoq/r0SBcBS8GS25dqVsIyftDS9pWDM4IPf9bTrO/nOpbBXa7SZquKBKYj
 RNkQ==
X-Gm-Message-State: AOAM531Q03WUQNdlxfBK75WxBHPJdj7L6/y3kSuRN1BlPfJTvbTRnyfm
 TeEZ+aQC+WOxQx6N6KBhbqNoGiHecvtjpQ==
X-Google-Smtp-Source: ABdhPJwPCYMB5mXDn/964xDyH1fZwMCe0wUF+PkkOcGHAMNid1VUJ2pJtdpAOgiix5LMUW5jc9KZFg==
X-Received: by 2002:a17:90b:1041:: with SMTP id
 gq1mr9693769pjb.31.1634854840491; 
 Thu, 21 Oct 2021 15:20:40 -0700 (PDT)
Received: from relinquished.localdomain ([2620:10d:c090:400::5:69a9])
 by smtp.gmail.com with ESMTPSA id n22sm6962317pjv.22.2021.10.21.15.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 15:20:40 -0700 (PDT)
Date: Thu, 21 Oct 2021 15:20:36 -0700
From: Omar Sandoval <osandov@osandov.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <YXHntB2O0ACr0pbz@relinquished.localdomain>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 18, 2021 at 03:50:15PM +0100,
 David Howells wrote:
 > > Here's a set of patches that rewrites and simplifies the fscache index
 API > to remove the complex operation scheduling and object st [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
X-Headers-End: 1mdgqC-00025i-9j
Subject: Re: [V9fs-developer] [PATCH 00/67] fscache: Rewrite index API and
 management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-mm@kvack.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote:
> 
> Here's a set of patches that rewrites and simplifies the fscache index API
> to remove the complex operation scheduling and object state machine in
> favour of something much smaller and simpler.  It is built on top of the
> set of patches that removes the old API[1].
> 
> The operation scheduling API was intended to handle sequencing of cache
> operations, which were all required (where possible) to run asynchronously
> in parallel with the operations being done by the network filesystem, while
> allowing the cache to be brought online and offline and interrupt service
> with invalidation.
> 
> However, with the advent of the tmpfile capacity in the VFS, an opportunity
> arises to do invalidation much more easily, without having to wait for I/O
> that's actually in progress: Cachefiles can simply cut over its file
> pointer for the backing object attached to a cookie and abandon the
> in-progress I/O, dismissing it upon completion.
> 
> Future work there would involve using Omar Sandoval's vfs_link() with
> AT_LINK_REPLACE[2] to allow an extant file to be displaced by a new hard
> link from a tmpfile as currently I have to unlink the old file first.

I had forgotten about that. It'd be great to finish that someday, but
given the dead-end of the last discussion [1], we might need to hash it
out the next time we can convene in person.

1:https://lore.kernel.org/linux-fsdevel/364531.1579265357@warthog.procyon.org.uk/ 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

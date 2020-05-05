Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7E1C54F5
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 May 2020 14:00:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVwFJ-0006zE-Ct; Tue, 05 May 2020 12:00:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1jVwFH-0006z3-Ji
 for v9fs-developer@lists.sourceforge.net; Tue, 05 May 2020 12:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=REPCft4TfvdeWRVXri2o1wuqZJcFojbavxrdrjtttCI=; b=Y28HnA6OKtWvIj1XFVQwRqTUtN
 bcKJGCQZuWazLwFX0pXLZCIhb0VYFmYU9pxe24qRc9jL2llCQs6Ecr+ffpDujsGeBiYyJdq6y9IEW
 s3F1UPGN0bgEfohBWgNVO1QU15GCq3Mm4Zc5HyEEGpmn0BFMe/ctM24TZx7JohLS2Nw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=REPCft4TfvdeWRVXri2o1wuqZJcFojbavxrdrjtttCI=; b=RwfgzWrPRpg5K3hZEeOifpaGAY
 pJ6im1uAl0NxhoHH0AwTivcaCtVdaIm2E34uLLmdqfLCJHqQbpIar1kiduoUCOVH2BuaANCi/r2gP
 e082La8Lhyb08T+vltEpcxdYG1NdKLb+dYmv5JGt8Eq5RauEwqRCrNn4z/1dMh7w7fDE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jVwFG-0088QK-AL
 for v9fs-developer@lists.sourceforge.net; Tue, 05 May 2020 12:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=REPCft4TfvdeWRVXri2o1wuqZJcFojbavxrdrjtttCI=; b=NWIHP2gLwMqhCrrP0wSUBPv/7z
 G7dxQhOCiYv0w/rVrLpvagaryypM4WVVrVT3d96a0dX4gHH3uH/bISMCDo7chbiqvapAgCfGxdYWB
 5OWaNHLX4wYaHdJN6OvdzMnl2MxU+AceWTvhlzlHxfc+9+bmYyZ7Bfu37w0Iy9zZhNpucB4vmTHaJ
 z563vHi53bukqAgYai33YDQikFMZsdCs1yPrbEso6bhPlyXfHA7ebfkSIz74UByYomhc8DfMmIcqj
 30SF4G+p9UdMv/jzsXFgM5E0I3y4YLfe2uwd5KP1StlJI+y9n0aOA0bYljdtXbftau0rzofUJZwno
 XQhNFf8A==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jVwEk-0004lb-81; Tue, 05 May 2020 11:59:46 +0000
Date: Tue, 5 May 2020 04:59:46 -0700
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200505115946.GF16070@bombadil.infradead.org>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
 <158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVwFG-0088QK-AL
Subject: Re: [V9fs-developer] [RFC PATCH 54/61] afs: Wait on PG_fscache
 before modifying/releasing a page
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, May 04, 2020 at 06:15:39PM +0100, David Howells wrote:
> PG_fscache is going to be used to indicate that a page is being written to
> the cache, and that the page should not be modified or released until it's
> finished.
> 
> Make afs_invalidatepage() and afs_releasepage() wait for it.

Well, why?  Keeping a refcount on the page will prevent it from going
away while it's being written to storage.  And the fact that it's
being written to this cache is no reason to delay the truncate of a file
(is it?)  Similarly, I don't see why we need to wait for the page to make
it to the cache before we start to modify it.  Certainly we'll need to
re-write it to the cache since the cache is now stale, but why should
we wait for the now-stale write to complete?



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

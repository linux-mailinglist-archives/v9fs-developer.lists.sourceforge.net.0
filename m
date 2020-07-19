Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C59224E98
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Jul 2020 04:02:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jwyfE-0006Rr-7Y; Sun, 19 Jul 2020 02:02:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1jwyfC-0006Rg-I7
 for v9fs-developer@lists.sourceforge.net; Sun, 19 Jul 2020 02:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dxtWRwCvlytLfp7F0l4b2YoxbrBu6fnGXYSPSObz5jw=; b=f2rhxnyewfb+Rqe4ljnjVuXrd
 Qf5TgnSDVzfq2tv33GTCeTJ70dGpD1h9s+uhqpP9kQZhF9lxDeID1mGYGr2a6ctLtgExxEynq8rZA
 Sa8uAxNtY/TOfOmGVdAm9ZGSA6Mcbky2YqC4kmkvR8Y/DlgYiE1kF/B6KDlMOvErPIefk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dxtWRwCvlytLfp7F0l4b2YoxbrBu6fnGXYSPSObz5jw=; b=ic+F5qkezznYbw7YdYc5XZbXun
 5S65FbjJh9ejVUrtFM+N+DsZjmJ/uDSYtT2sC/56qS483JGa6+a49AAXMZdf0BmMu90qbnN3N6Fw7
 APCRKUKkS70XEhvN0rb03hYND/mJm4LVuu78YuyYzYtnyz/vvSPvSv3gPDhdfY+I1HBs=;
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwyfB-006EhG-0w
 for v9fs-developer@lists.sourceforge.net; Sun, 19 Jul 2020 02:02:50 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jwyNY-00FOFG-MQ; Sun, 19 Jul 2020 01:44:36 +0000
Date: Sun, 19 Jul 2020 02:44:36 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200719014436.GG2786714@ZenIV.linux.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
 <159465785214.1376674.6062549291411362531.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159465785214.1376674.6062549291411362531.stgit@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jwyfB-006EhG-0w
Subject: Re: [V9fs-developer] [PATCH 01/32] iov_iter: Add ITER_MAPPING
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 13, 2020 at 05:30:52PM +0100, David Howells wrote:
> Add an iterator, ITER_MAPPING, that walks through a set of pages attached
> to an address_space, starting at a given page and offset and walking for
> the specified amount of bytes.
> 
> The caller must guarantee that the pages are all present and they must be
> locked using PG_locked, PG_writeback or PG_fscache to prevent them from
> going away or being migrated whilst they're being accessed.
> 
> This is useful for copying data from socket buffers to inodes in network
> filesystems and for transferring data between those inodes and the cache
> using direct I/O.
> 
> Whilst it is true that ITER_BVEC could be used instead, that would require
> a bio_vec array to be allocated to refer to all the pages - which should be
> redundant if inode->i_pages also points to all these pages.
> 
> This could also be turned into an ITER_XARRAY, taking and xarray pointer
> instead of a mapping pointer.  It would be mostly trivial, except for the
> use of find_get_pages_contig() by iov_iter_get_pages*().
> 

My main problem here is that your iterate_mapping() assumes that STEP is
safe under rcu_read_lock(), with no visible mentioning of that fact.
Note, BTW, that iov_iter_for_each_range() quietly calls user-supplied
callback in such context.

Incidentally, do you ever have different steps for bvec and mapping?

> +	if (unlikely(iov_iter_is_mapping(i))) {
> +		/* We really don't want to fetch pages if we can avoid it */
> +		i->iov_offset += size;
> +		i->count -= size;
> +		return;

That's... not nice.  At the very least you want to cap size by i->count here
(and for discard case as well, while we are at it).


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

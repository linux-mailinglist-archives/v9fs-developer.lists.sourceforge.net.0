Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A9136A7C2
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 16:17:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lafZH-0006e2-3X; Sun, 25 Apr 2021 14:17:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lafZE-0006df-Qi
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 14:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Isx4L+/tP3iofoJnnKvKOEwwibWADcE/C124YEjmMiQ=; b=Zaytq5ilfzCuM2y+qN2gLOaqk
 M0uUYYw8hmLW5RkpQCW0ONfAS/CXS2xJpKbsWJwF9wahlzZyuqOhhy4nlM5V8xSbchLmflmIO4Y+G
 pMZtd/HrvbVJOWX713O1uogEaW51bAb0GarpCw3zpzwyI/ocDSlLqZTkIUwirJLN7KFVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Isx4L+/tP3iofoJnnKvKOEwwibWADcE/C124YEjmMiQ=; b=VogvgGs/DtCyRQ6xXEJlOubqxz
 LU1C09cjhhC5uyEpvWyprxkmLcUx0ZCxyKAZ13oy07ssPszO+93KrJv5syvrldkXvAnnimH+0I9FH
 4lr+FvC0wcj6N8b7DFXOH/e1OrDLgFPuO8Bzeiy23Cg6Q9uTHZemBvnr5Se7CvprxZHs=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lafZC-007CoD-IY
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 14:17:01 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lafYp-008Arj-GM; Sun, 25 Apr 2021 14:16:35 +0000
Date: Sun, 25 Apr 2021 14:16:35 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIV5wyBWC18/DAoU@zeniv-ca.linux.org.uk>
References: <YIVrJT8GwLI0Wlgx@zeniv-ca.linux.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
 <3388475.1619359082@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3388475.1619359082@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lafZC-007CoD-IY
Subject: Re: [V9fs-developer] [PATCH v7 01/31] iov_iter: Add ITER_XARRAY
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
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Apr 25, 2021 at 02:58:02PM +0100, David Howells wrote:

> But for the moment, I guess I should just add:
> 
> 	i->iov_offset += bytes;
> 
> to all three (kvec, bvec and xarray)?

No.  First of all, you'd need ->count updated as well; for kvec and bvec you
*REALLY* don't have to end up with ->iov_offset exceeding the size of current
kvec or bvec resp.; Bad Shit(tm) happens that way.

> 
> > > @@ -1246,7 +1349,8 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
> > >  	iterate_all_kinds(i, size, v,
> > >  		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
> > >  		res |= v.bv_offset | v.bv_len,
> > > -		res |= (unsigned long)v.iov_base | v.iov_len
> > > +		res |= (unsigned long)v.iov_base | v.iov_len,
> > > +		res |= v.bv_offset | v.bv_len
> > >  	)
> > >  	return res;
> > >  }
> > 
> > Hmm...  That looks like a really bad overkill - do you need anything beyond
> > count and iov_offset in that case + perhaps "do we have the very last page"?
> > IOW, do you need to iterate anything at all here?  What am I missing here?
> 
> Good point.  I wonder, even, if the alignment could just be set to 1.  There's
> no kdoc description on the function that says what the result is meant to
> represent.

Huh?  It's the worst alignment of all segment boundaries, what else?  As in
if (iov_iter_alignment(i) & 1023)
	// we have something in there that isn't 1K-aligned.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

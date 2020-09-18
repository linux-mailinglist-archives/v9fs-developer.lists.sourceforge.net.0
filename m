Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCDC26FB69
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 13:24:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJEVa-00038Y-GS; Fri, 18 Sep 2020 11:24:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kJEVX-00034j-SZ
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 11:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D2ju8jMz6rNG3JDmyLzknrnz9KKFGg0PYq+DeMuVZKY=; b=HMD9r3jPF6edRT5dIBymOqKvhj
 Qnh0Uvb4iLXNl3rupTZJD/p0zflzC4e4biR8FBhr9ZDp45+GYODdZRAPK4OIPs/Myo/0b22Bn16nJ
 T0kwGVOm9+josTRb8XFg/CD6ES2nD9FUpgUdSlBwskeOg2THXfr5pAy/VN56CNilmB1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D2ju8jMz6rNG3JDmyLzknrnz9KKFGg0PYq+DeMuVZKY=; b=ADuhLyaoIkhpkrBj3lF+sCVrHp
 DEwIAm6Ihzpc5bGy9iUO6tS/yXRuWlBBjSV8mDz39GdrR/EzQrYoGwrjgeotGJAPigVHAeKke7JHK
 3CeFF5HYZ4yBrEkTfy3SP4hGMvSjNzqGB8W9TtmDUkHmc7cHaCQBy9+6T10rEjmDlUjw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJEQL-00E5yv-Fq
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 11:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D2ju8jMz6rNG3JDmyLzknrnz9KKFGg0PYq+DeMuVZKY=; b=OhWnaBzrqkDRbzOwxxDZrAitsW
 uGCQAikASHjYa/PMPuiPlUOcliemRBZlSc/1RLXgVWxgpXKT26jnRaH2hmTM72gxSVdhOPqu6kQPd
 h+y2nYjcOI/MK6CMWwhrlZi9ICHnkGIztdyZsb1kUMTfkP470jFOrvRJfyuy8uYVb1UtlcOcYJKpU
 E5Rm9//Op9Yh9xVsMJdzShSN0jO9N6AGwLLD/O1r3P9sdUd2Ic22Cm/qIxyYzHn5gT/lwgN84usJW
 ACafXKejemQbxTWMfkPL3z3ucBuijE/zG8VKPfz4WQt3m2mP+hkouoscs89VtGRxh2HUUy/mInKXY
 PZ8Gd81Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kJEQ9-0002ra-1H; Fri, 18 Sep 2020 11:19:17 +0000
Date: Fri, 18 Sep 2020 12:19:16 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200918111916.GA32101@casper.infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-3-willy@infradead.org>
 <20200918055919.GA30929@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918055919.GA30929@nautica>
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
X-Headers-End: 1kJEQL-00E5yv-Fq
Subject: Re: [V9fs-developer] [PATCH 02/13] 9p: Tell the VFS that readpage
 was synchronous
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Sep 18, 2020 at 07:59:19AM +0200, Dominique Martinet wrote:
> Matthew Wilcox (Oracle) wrote on Thu, Sep 17, 2020:
> > diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> > index cce9ace651a2..506ca0ba2ec7 100644
> > --- a/fs/9p/vfs_addr.c
> > +++ b/fs/9p/vfs_addr.c
> > @@ -280,6 +280,10 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
> >  		goto out;
> >  
> >  	retval = v9fs_fid_readpage(v9inode->writeback_fid, page);
> > +	if (retval == AOP_UPDATED_PAGE) {
> > +		retval = 0;
> > +		goto out;
> > +	}
> 
> FWIW this is a change of behaviour; for some reason the code used to
> loop back to grab_cache_page_write_begin() and bail out on
> PageUptodate() I suppose; some sort of race check?
> The whole pattern is a bit weird to me and 9p has no guarantee on
> concurrent writes to a file with cache enabled (except that it will
> corrupt something), so this part is fine with me.
> 
> What I'm curious about is the page used to be both unlocked and put, but
> now isn't either and the return value hasn't changed for the caller to
> make a difference on write_begin / I don't see any code change in the
> vfs  to handle that.
> What did I miss?

The page cache is kind of subtle.  The grab_cache_page_write_begin()
will return a Locked page with an increased refcount.  If it's Uptodate,
that's exactly what we want, and we return it.  If we have to read the
page, readpage used to unlock the page before returning, and rather than
re-lock it, we would drop the reference to the page and look it up again.
It's possible that after dropping the lock on that page that the page
was replaced in the page cache and so we'd get a different page.

Anyway, now (unless fscache is involved), v9fs_fid_readpage will return
the page without unlocking it.  So we don't need to do the dance of
dropping the lock, putting the refcount and looking the page back up
again.  We can just return the page.  The VFS doesn't need a special
return code because nothing has changed from the VFS's point of view --
it asked you to get a page and you got the page.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8682331DD
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jul 2020 14:17:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k17Um-0007DE-JV; Thu, 30 Jul 2020 12:17:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1k17Uk-0007D7-KJ
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 12:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GuSgBCY5Dc+vZPEZj8RCz93A4JYgZmNr3NqXQV1PNYU=; b=RkMgB2V742L3xwfcjAoN6fRMz5
 usc5bAAOcW5RcWP7f8feOSx3DArG1VskXx2Y6ruNVPb5cNscbYW8gWBPqsyj607ljqDFWLrnOZU1X
 FBR1Z5r5HPCYl8uhwJQuw2m0tfimXINb1sHrQzhMaxPXRZ42661wY/nmvUJFfCAcdzbg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GuSgBCY5Dc+vZPEZj8RCz93A4JYgZmNr3NqXQV1PNYU=; b=Cn7lraPOdqhZSXQzd805cwu3bx
 SNmRnCpPuYXdUcmf5/snqg/a36EuerJv44JgR7ENSP+e6icAWGERmrhj5WMMaiWuiASUMkxl0pMDF
 zK9/ZN6tYJs41zPY84YCH9kqiXfltpkyUG/9OfzhO38gLtqfAIK1cjZqEmt+jm1XfSMY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k17UY-007E8f-8s
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Jul 2020 12:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GuSgBCY5Dc+vZPEZj8RCz93A4JYgZmNr3NqXQV1PNYU=; b=a7GCCI+Sq/NXl6y3iQLleRnLms
 4p1ZsjInJKj/tAsDpcjI9usZM2vENPG03Df+sSsNojrv4V1EBT3j/wFU5/RBzQbJ3/l7PJs6gs6wF
 KvMrbG1qCvxYYQzyjA+rd2mVdNqtu69fgGCmUxDcA0RgS0og/RM9yM94JvkDJKFpuRee0vYNFOCsj
 eIut78fgYXyBEr7Kb1rNIa6xqLVa4ibM/5Ak08hEKjq3YHCiAEjyb2MEXtAZyXxOh9m0FVN6dax9i
 2yquBpLaOry0D0qgZd4Jj4uVCYZwyhrpcaUPuA9nI+bcdLL3RQRs7hH1muyyDrTPpdvxlanB3eUMs
 K6nwbsWA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k17Ty-0003OY-Jv; Thu, 30 Jul 2020 12:16:22 +0000
Date: Thu, 30 Jul 2020 13:16:22 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20200730121622.GB23808@casper.infradead.org>
References: <447452.1596109876@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <447452.1596109876@warthog.procyon.org.uk>
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
X-Headers-End: 1k17UY-007E8f-8s
Subject: Re: [V9fs-developer] Upcoming: fscache rewrite
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jul 30, 2020 at 12:51:16PM +0100, David Howells wrote:
>  (3) Al has objections to the ITER_MAPPING iov_iter type that I added
> 
> 	https://lore.kernel.org/linux-fsdevel/20200719014436.GG2786714@ZenIV.linux.org.uk/
> 
>      but note that iov_iter_for_each_range() is not actually used by anything.
> 
>      However, Willy likes it and would prefer to make it ITER_XARRAY instead
>      as he might be able to use it in other places, though there's an issue
>      where I'm calling find_get_pages_contig() which takes a mapping (though
>      all it does is then get the xarray out of it).

I suspect you don't need to call find_get_pages_contig().  If you look
at __readahead_batch() in pagemap.h, it does basically what you want
(other than being wrapped up inside the readahead iterator).  You require
the pages already be pinned in the xarray, so there's no need for the
page_cache_get_speculative() dance that find_get_pages_contig) does,
nor the check for xa_is_value().

My main concern with your patchset is that it introduces a new page flag
to sleep on which basically means "I am writing this page to the fscache".
I don't understand why you need it; you've elevated the refcount on
the pages so they're not going to get reused for another purpose.
All it does (as far as I can tell) is make a task calling truncate()
wait for the page to finish being written to cache, which isn't actually
necessary.

Overall, I do like the patch series!  It's a big improvement over what we
currently have and will make it easier to finish the readpages->readahead
conversion.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

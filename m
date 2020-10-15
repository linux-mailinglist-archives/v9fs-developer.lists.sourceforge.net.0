Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0D28F709
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 18:44:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kT6MD-0007wW-1I; Thu, 15 Oct 2020 16:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kT6MB-0007wP-Fy
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 16:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hz/6L/k6/ZOdJL5HZTqoNr1Jk2Qpg013UruFF7Ew+Ak=; b=FyHWQjE4swtkMaFhBCrwVq1qCI
 GgQExtW7gYfamg8nk0FVjKPbonZYeCP0uSIvoMPJD2ESHSNHLHZUXBs0dUyTJXcFMP+xCnjYqK3mA
 KiY7occBYfHk+gW9MUlqNuxOb+GzslAleWv4HauUGElVrPi3nc5mIxPWZAHrK+BBnQ2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hz/6L/k6/ZOdJL5HZTqoNr1Jk2Qpg013UruFF7Ew+Ak=; b=RUZ+wPLXcdU0jBN16jv7dRdf+U
 jCTMvR0i9JPmK2KgoNyPfmvZ2gp5YWqG1yUGrOJRJokrTGIgnoMk6IfDIvSZljT6hA8nLe5VcYl0N
 wmAJ0MvBmcqZXC2/rGQLsPReFH0vwnUq1XSf9SvxsFwUAxSJobbKJizS+Ut2lFkOoUOs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kT6Lx-00Bf2w-5l
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 16:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Hz/6L/k6/ZOdJL5HZTqoNr1Jk2Qpg013UruFF7Ew+Ak=; b=bQaSzufpfmAGrd9FrqRwxr4T5m
 X84DxXuyxdBxVSzNhwLsBArjvcHS/mpvQPMZpafZ2TFdCdqgJ61ukuXQ8z1+fRqIJN4wmquqbdjwb
 WlC/CzV4Pp78jUv25MprLTjKe1dtz28Q/PktQvYy7zVnE/E3avpBrh5UWPXm2Fgae7v6OeA7rDMq4
 7iaqZGguIxyTRBXcyx5J0Q4M03apjgSaI7oKJVb+jf6v9ttPIG3pGr5Dj6oOGRgd2VxNiwCBRvGTx
 qATN08w9wjnLNiSCe1bkXvj5OwbEQdtYQ+VNCBA2TlI4A8jt7rVLQHJzG1ZvNjQL68Fr4DnKbAIwu
 E1bjNH9Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kT6Lm-0005af-0i; Thu, 15 Oct 2020 16:43:34 +0000
Date: Thu, 15 Oct 2020 17:43:33 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201015164333.GA20115@casper.infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-17-willy@infradead.org>
 <20201015094203.GA21420@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015094203.GA21420@infradead.org>
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
X-Headers-End: 1kT6Lx-00Bf2w-5l
Subject: Re: [V9fs-developer] [PATCH v2 16/16] iomap: Make readpage
 synchronous
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
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Oct 15, 2020 at 10:42:03AM +0100, Christoph Hellwig wrote:
> > +static void iomap_read_page_end_io(struct bio_vec *bvec,
> > +		struct completion *done, bool error)
> 
> I really don't like the parameters here.  Part of the problem is
> that ctx is only assigned to bi_private conditionally, which can
> easily be fixed.  The other part is the strange bool error when
> we can just pass on bi_stats.  See the patch at the end of what
> I'd do intead.

I prefer assigning ctx conditionally to propagating the knowledge
that !rac means synchronous.  I've gone with this:

 static void iomap_read_page_end_io(struct bio_vec *bvec,
-               struct completion *done, bool error)
+               struct iomap_readpage_ctx *ctx, blk_status_t status)
 {
        struct page *page = bvec->bv_page;
        struct iomap_page *iop = to_iomap_page(page);
 
-       if (!error)
+       if (status == BLK_STS_OK) {
                iomap_set_range_uptodate(page, bvec->bv_offset, bvec->bv_len);
+       } else if (ctx && ctx->status == BLK_STS_OK) {
+               ctx->status = status;
+       }
 
        if (!iop ||
            atomic_sub_and_test(bvec->bv_len, &iop->read_bytes_pending)) {
-               if (done)
-                       complete(done);
+               if (ctx)
+                       complete(&ctx->done);
                else
                        unlock_page(page);
        }

> >  	} else {
> >  		WARN_ON_ONCE(ctx.cur_page_in_bio);
> > -		unlock_page(page);
> > +		complete(&ctx.done);
> >  	}
> >  
> > +	wait_for_completion(&ctx.done);
> 
> I don't think we need the complete / wait_for_completion dance in
> this case.
> 
> > +	if (ret >= 0)
> > +		ret = blk_status_to_errno(ctx.status);
> > +	if (ret == 0)
> > +		return AOP_UPDATED_PAGE;
> > +	unlock_page(page);
> > +	return ret;
> 
> Nipick, but I'd rather have a goto out_unlock for both error case
> and have the AOP_UPDATED_PAGE for the normal path straight in line.
> 
> Here is an untested patch with my suggestions:

I think we can go a little further here:

@@ -340,16 +335,12 @@ iomap_readpage(struct page *page, const struct iomap_ops *
ops)
 
        if (ctx.bio) {
                submit_bio(ctx.bio);
-               WARN_ON_ONCE(!ctx.cur_page_in_bio);
-       } else {
-               WARN_ON_ONCE(ctx.cur_page_in_bio);
-               complete(&ctx.done);
+               wait_for_completion(&ctx.done);
+               if (ret > 0)
+                       ret = blk_status_to_errno(ctx.status);
        }
 
-       wait_for_completion(&ctx.done);
        if (ret >= 0)
-               ret = blk_status_to_errno(ctx.status);
-       if (ret == 0)
                return AOP_UPDATED_PAGE;
        unlock_page(page);
        return ret;


... there's no need to call blk_status_to_errno if we never submitted a bio.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905728EF9B
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 11:51:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kSzuq-0007Q7-4N; Thu, 15 Oct 2020 09:51:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+d12e96c8672b4e58918a+6262+infradead.org+hch@casper.srs.infradead.org>)
 id 1kSzuo-00078v-8A
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ZNMyaMGLyh0iAzgchZNWKe2QHg2PouniT97lm2hLjc=; b=GxS1emGHUVWovTuOFwOQD8WZn0
 6bXvbyQRdBAaRCOInagXYC6Km5Jcxyx9iXqh/p6LfrQM65qdkF/xoRuarESoyzAECNmkSl/b/WH9g
 q65NtITShr+zvltfywFZLI1/ZYSFMm9Vfk7eqbLQcZqiN5pq8XlucNZTXGVf3UxtQOZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ZNMyaMGLyh0iAzgchZNWKe2QHg2PouniT97lm2hLjc=; b=nLu8nhEtnUyHlwSHauD8KyFz/y
 DwI41MosS5LTOFzdTVWNLjxWX0r39cd0boiaitT/GAGDh9rugDi/fGNxq9C7wwtUsMiyQ+ORaV1Vl
 btJ+QJHk8FLf89R+1+4QfIj8Gz0gPxtNokGHqlCiaaMmpvsd796/ju/v4phzGG+f0IyQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSzm7-00GOka-3u
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5ZNMyaMGLyh0iAzgchZNWKe2QHg2PouniT97lm2hLjc=; b=UbzTDpbCdU/uUj0rHetupp4L8v
 PaUluuLxr8LZvOCbK9ck4YLDi3+zPB/hmdH1KgeWEQy8Co2xXtMtUhhVl9GuJYbtbnLeCYd76TNBS
 HZdz95qNkGmkZVezmYCzg8HJhkMbKqv1Xzk2iHdAGnB93fydw7f720JSiZsLwGL22D4bQXb6udDfh
 PL01QS5q/vOm7rs0lz6hK4oIgOO7vvQYNc16v1alatMUt6a+VXectLz3GydJeK3X0T3ZVV1HjE6ii
 B2gLxhncLeJgIGpvtuBsx546BEOgs/6FT1ows1Phr2vQszB8BnyKkzc5Y6LhzlbR7Y0dCe+NH+Dss
 rHuYJitg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kSzlr-0005i9-5C; Thu, 15 Oct 2020 09:42:03 +0000
Date: Thu, 15 Oct 2020 10:42:03 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201015094203.GA21420@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-17-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009143104.22673-17-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
X-Headers-End: 1kSzm7-00GOka-3u
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

> +static void iomap_read_page_end_io(struct bio_vec *bvec,
> +		struct completion *done, bool error)

I really don't like the parameters here.  Part of the problem is
that ctx is only assigned to bi_private conditionally, which can
easily be fixed.  The other part is the strange bool error when
we can just pass on bi_stats.  See the patch at the end of what
I'd do intead.

> @@ -318,15 +325,17 @@ iomap_readpage(struct page *page, const struct iomap_ops *ops)
>  
>  	trace_iomap_readpage(page->mapping->host, 1);
>  
> +	ctx.status = BLK_STS_OK;

This should move into the initializer for ctx.  Or we could just drop
it given that BLK_STS_OK is and must always be 0.

>  	} else {
>  		WARN_ON_ONCE(ctx.cur_page_in_bio);
> -		unlock_page(page);
> +		complete(&ctx.done);
>  	}
>  
> +	wait_for_completion(&ctx.done);

I don't think we need the complete / wait_for_completion dance in
this case.

> +	if (ret >= 0)
> +		ret = blk_status_to_errno(ctx.status);
> +	if (ret == 0)
> +		return AOP_UPDATED_PAGE;
> +	unlock_page(page);
> +	return ret;

Nipick, but I'd rather have a goto out_unlock for both error case
and have the AOP_UPDATED_PAGE for the normal path straight in line.

Here is an untested patch with my suggestions:


diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 887bf871ca9bba..81d34725565d7e 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -162,33 +162,34 @@ static void iomap_set_range_uptodate(struct page *page, unsigned off,
 	spin_unlock_irqrestore(&iop->uptodate_lock, flags);
 }
 
-static void iomap_read_page_end_io(struct bio_vec *bvec,
-		struct completion *done, bool error)
+struct iomap_readpage_ctx {
+	struct page		*cur_page;
+	bool			cur_page_in_bio;
+	blk_status_t		status;
+	struct bio		*bio;
+	struct readahead_control *rac;
+	struct completion	done;
+};
+
+static void
+iomap_read_page_end_io(struct iomap_readpage_ctx *ctx, struct bio_vec *bvec,
+		blk_status_t status)
 {
 	struct page *page = bvec->bv_page;
 	struct iomap_page *iop = to_iomap_page(page);
 
-	if (!error)
+	if (status == BLK_STS_OK)
 		iomap_set_range_uptodate(page, bvec->bv_offset, bvec->bv_len);
 
 	if (!iop ||
 	    atomic_sub_and_test(bvec->bv_len, &iop->read_bytes_pending)) {
-		if (done)
-			complete(done);
-		else
+		if (ctx->rac)
 			unlock_page(page);
+		else
+			complete(&ctx->done);
 	}
 }
 
-struct iomap_readpage_ctx {
-	struct page		*cur_page;
-	bool			cur_page_in_bio;
-	blk_status_t		status;
-	struct bio		*bio;
-	struct readahead_control *rac;
-	struct completion	done;
-};
-
 static void
 iomap_read_end_io(struct bio *bio)
 {
@@ -197,12 +198,11 @@ iomap_read_end_io(struct bio *bio)
 	struct bvec_iter_all iter_all;
 
 	/* Capture the first error */
-	if (ctx && ctx->status == BLK_STS_OK)
+	if (ctx->status == BLK_STS_OK)
 		ctx->status = bio->bi_status;
 
 	bio_for_each_segment_all(bvec, bio, iter_all)
-		iomap_read_page_end_io(bvec, ctx ? &ctx->done : NULL,
-				bio->bi_status != BLK_STS_OK);
+		iomap_read_page_end_io(ctx, bvec, bio->bi_status);
 	bio_put(bio);
 }
 
@@ -297,8 +297,7 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 		ctx->bio->bi_opf = REQ_OP_READ;
 		if (ctx->rac)
 			ctx->bio->bi_opf |= REQ_RAHEAD;
-		else
-			ctx->bio->bi_private = ctx;
+		ctx->bio->bi_private = ctx;
 		ctx->bio->bi_iter.bi_sector = sector;
 		bio_set_dev(ctx->bio, iomap->bdev);
 		ctx->bio->bi_end_io = iomap_read_end_io;
@@ -318,14 +317,16 @@ iomap_readpage_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 int
 iomap_readpage(struct page *page, const struct iomap_ops *ops)
 {
-	struct iomap_readpage_ctx ctx = { .cur_page = page };
+	struct iomap_readpage_ctx ctx = {
+		.cur_page	= page,
+		.status		= BLK_STS_OK,
+	};
 	struct inode *inode = page->mapping->host;
 	unsigned poff;
 	loff_t ret;
 
 	trace_iomap_readpage(page->mapping->host, 1);
 
-	ctx.status = BLK_STS_OK;
 	init_completion(&ctx.done);
 
 	for (poff = 0; poff < PAGE_SIZE; poff += ret) {
@@ -340,17 +341,16 @@ iomap_readpage(struct page *page, const struct iomap_ops *ops)
 
 	if (ctx.bio) {
 		submit_bio(ctx.bio);
-		WARN_ON_ONCE(!ctx.cur_page_in_bio);
-	} else {
-		WARN_ON_ONCE(ctx.cur_page_in_bio);
-		complete(&ctx.done);
+		wait_for_completion(&ctx.done);
 	}
 
-	wait_for_completion(&ctx.done);
-	if (ret >= 0)
-		ret = blk_status_to_errno(ctx.status);
-	if (ret == 0)
-		return AOP_UPDATED_PAGE;
+	if (ret < 0)
+		goto out_unlock;
+	ret = blk_status_to_errno(ctx.status);
+	if (ret < 0)
+		goto out_unlock;
+	return AOP_UPDATED_PAGE;
+out_unlock:
 	unlock_page(page);
 	return ret;
 }


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

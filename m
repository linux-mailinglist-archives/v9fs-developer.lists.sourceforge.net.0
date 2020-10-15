Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A25AB28F925
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 21:03:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kT8XR-0007l4-FE; Thu, 15 Oct 2020 19:03:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kT8XO-0007ks-RB
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 19:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oNJXIe6ApwnR4LV/FIl4/BNaWNi8NSTj4mgOrmFnzuk=; b=Pc6Eb9+SSndb7niG3qxpBAdr+k
 wcIfT3F0u57Mhy7rRC70d32mFkgbyb8H9klIS5CdJxvf5wT8Ffsw+RBcu5bhZ397z4q/Mojhcd/P6
 OoqResV5HLoTvVjKm+T5bi9hGcx0QYZBUQsKp26q3yk0i2lHT5EoV+pEXqc7kZ5NKPxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oNJXIe6ApwnR4LV/FIl4/BNaWNi8NSTj4mgOrmFnzuk=; b=VDahNK78yXGky883Qlk1qyP/nL
 RaZSULUf8GqmO1tWjhUCHxaeXW0lUU66Sv9hPjIeApE5cZWPuBOjFNkH8nSWkvM5UxzFXzKnFchB/
 HG2hDrHujXtJF//igUrR9WH56xQsY4jEQAzitYaNS7S8rdTvGDY9kCUFvkM/OocfcqMo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kT8X9-00GwHA-84
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 19:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oNJXIe6ApwnR4LV/FIl4/BNaWNi8NSTj4mgOrmFnzuk=; b=NX+4sGxWbcObdfGwkGyOjAO42I
 RwmquKATXBHbPE8QSMBRvqg3SOeDdcTChlMCCwoXnLis0DLRnkhZ9SBCeMdxlmrOEU5T31XnSKdna
 8BJnB9a8evpDeuTlBno2NyNtBFQ3rhK5+DQAIo0aSwxVOlbPXbe1xBNJP+/BLP07zrDu8t86RMeAH
 /PjljktE1B37EED9rYHkhPumMrgN299CGCffnkM19ZidMR2ViOe3nCfbLb380F9gIBfoc1CJNWBEM
 pVilSrRr9k6B9lRS2zCnqwquGo2pBX6mLt0eMBFVmNSqr+ihKMHE6zdFkrlbS40ju3J1wa+nt0m9O
 xHvnTZKg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kT8Wu-00055X-Dw; Thu, 15 Oct 2020 19:03:12 +0000
Date: Thu, 15 Oct 2020 20:03:12 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201015190312.GB20115@casper.infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-17-willy@infradead.org>
 <20201015094203.GA21420@infradead.org>
 <20201015164333.GA20115@casper.infradead.org>
 <20201015175848.GA4145@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015175848.GA4145@infradead.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kT8X9-00GwHA-84
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

On Thu, Oct 15, 2020 at 06:58:48PM +0100, Christoph Hellwig wrote:
> On Thu, Oct 15, 2020 at 05:43:33PM +0100, Matthew Wilcox wrote:
> > I prefer assigning ctx conditionally to propagating the knowledge
> > that !rac means synchronous.  I've gone with this:
> 
> And I really hate these kinds of conditional assignments.  If the
> ->rac check is too raw please just add an explicit
> 
> 	bool synchronous : 1;
> 
> flag.

I honestly don't see the problem.  We have to assign the status
conditionally anyway so we don't overwrite an error with a subsequent
success.

> True.  I'd still prefer the AOP_UPDATED_PAGE as the fallthrough case
> and an explicit goto out_unlock, though.

So this?

        if (ctx.bio) {
                submit_bio(ctx.bio);
                wait_for_completion(&ctx.done);
                if (ret < 0)
                        goto err;
                ret = blk_status_to_errno(ctx.status);
        }

        if (ret < 0)
                goto err;
        return AOP_UPDATED_PAGE;
err:
        unlock_page(page);
        return ret;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

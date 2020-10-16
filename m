Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EF228FE64
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Oct 2020 08:36:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kTJLZ-00027S-MQ; Fri, 16 Oct 2020 06:36:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+3f298eef0c732a4c5343+6263+infradead.org+hch@casper.srs.infradead.org>)
 id 1kTJLY-00027L-RV
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Oct 2020 06:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAA1eJndUJazjd9wD1gXENLx75tdwnXKcLKd7pL1gTU=; b=H8LcJDiWKsRYP8AGa8pbvJzsqq
 84k/uO8hfHrQvOErj74MOlvR30ud6C8b0aYxn2yOO1IR8oAivX3qlVAdpbNOwb7AF9Sqx/Prtkk4c
 vKfx0RqUC8pNzjwcFlWARSzZC/IEdd1CYTQvftZgqWwHCeQUwGEZovrJvvNwJg2rVKA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eAA1eJndUJazjd9wD1gXENLx75tdwnXKcLKd7pL1gTU=; b=SLkfUBwnyOixluMrSiExy8iAVE
 tDND6uxkG/JL4PROnZA0V39TcZdWnfTHRaZNmsFeEfls8C5KCAZI6f/X/KLP+QDx47nCh69D12M0H
 B1NPRQbkexhIJMou63pLpao5mKPeC/aW8s+ubaJDq74nHWN1zG7yOq1S3VQuBEH6BIZk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kTJLK-00CHX9-I7
 for v9fs-developer@lists.sourceforge.net; Fri, 16 Oct 2020 06:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eAA1eJndUJazjd9wD1gXENLx75tdwnXKcLKd7pL1gTU=; b=SBWbXHnwsC7WyfY9k/gweEYk5A
 p+2fGdIWIVbT7n9C1xTGSaGtmyZHzjIApovUpFs3FufX4XdbGFnHU75YYi+FL0hcvw3i3u16C115J
 vBIBNtCO07eyGfiLvCyk/WBfHjfSjVgCLpEOQ7wnWZ8GEoyBAj9psYz6+FTNojyIXPKbj6fBUPuk0
 zVWH6r2qB41hpph2TFteLdPL3avD3zzvX1Xi6yRJXcEccBlOV0jh+OOtS58d2jEesSCt4agpAfL7C
 KsoAEaxAJk/5vbf1akWUscAxYxQjQY3spErwPnoC4n1qtlyzfcn0RaaErSNQgIVsGk30H4ziVJgZ0
 Cv2kunvQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kTJL8-0001O0-W2; Fri, 16 Oct 2020 06:35:47 +0000
Date: Fri, 16 Oct 2020 07:35:46 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201016063546.GA4808@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-17-willy@infradead.org>
 <20201015094203.GA21420@infradead.org>
 <20201015164333.GA20115@casper.infradead.org>
 <20201015175848.GA4145@infradead.org>
 <20201015190312.GB20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015190312.GB20115@casper.infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kTJLK-00CHX9-I7
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
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Oct 15, 2020 at 08:03:12PM +0100, Matthew Wilcox wrote:
> I honestly don't see the problem.  We have to assign the status
> conditionally anyway so we don't overwrite an error with a subsequent
> success.

Yes, but having a potential NULL pointer to a common structure is just
waiting for trouble.

> 
> > True.  I'd still prefer the AOP_UPDATED_PAGE as the fallthrough case
> > and an explicit goto out_unlock, though.
> 
> So this?
> 
>         if (ctx.bio) {
>                 submit_bio(ctx.bio);
>                 wait_for_completion(&ctx.done);
>                 if (ret < 0)
>                         goto err;
>                 ret = blk_status_to_errno(ctx.status);
>         }
> 
>         if (ret < 0)
>                 goto err;
>         return AOP_UPDATED_PAGE;
> err:
>         unlock_page(page);
>         return ret;
> 

Looks good.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

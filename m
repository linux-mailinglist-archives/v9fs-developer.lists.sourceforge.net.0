Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 106E428F7FF
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 19:59:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kT7Ws-0000NY-28; Thu, 15 Oct 2020 17:59:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+d12e96c8672b4e58918a+6262+infradead.org+hch@casper.srs.infradead.org>)
 id 1kT7Wr-0000M0-D9
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 17:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x+XQ7VEyYNfvRvizRGPoAdTEAMGVk8qPQWatjzYSgQw=; b=ZB4FJL77+1NN4yWCNzKj7hjkvL
 gckioGn/Ss72yvOJwcTrzv5G0VDE0qg/9pN1UrzsTgsQmIWF2M1Qm6vfSgC3146MvjU5Cw4v7bvXH
 yAlADbNMEsQeAMCwibB8y0D49ZHdrRsqfsWDCL+6p8zQt5Rd8kC6q/11NYtmeKSVMPns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x+XQ7VEyYNfvRvizRGPoAdTEAMGVk8qPQWatjzYSgQw=; b=ewGfOzPNc/ApF6P+7AB6fI5HBM
 27W3RbFzzIMAdPBR7zZUtpOSJS0MqQX6stFNPT2IR7QWHIg4F6vsKpEsKKrEA5MAUhNN+aLkvc+64
 i2xlfUkkBDEu+UJfUoDnPJ4jbpasE3F9KLnBok1dTx5UHtZ35sreF4ccNISSXeirk9iY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kT7Wj-00Bj2s-Oy
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 17:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=x+XQ7VEyYNfvRvizRGPoAdTEAMGVk8qPQWatjzYSgQw=; b=m21slifxK1bGUo9NkuLnasLmGW
 W7j1mSzLsl8lqkNcmNBEmyamMl2n/iSza8Fv9vJdGtVQIw2/kDlRcMmM4PWbe5eP6FTvI4xm0WOWP
 4Adx+LchNEcYX2u8R/hnI8+L4xfRz5R7/ZW9gYaZ59Wva288nDtTL0QGvEDQcyQNBdTqXo87Bl3HW
 E62GWuauRw2KoIGK3HW5V9LXG8lMy3MQUVaq3gY0yr4/hMeSjIpZfqFbIV5olX2c1do/vAiTNpYlO
 890vukb4WHYvxnqK7wVoxPPIDsWceSIRHULvymZsZRjmZLVpToKJoS//KCJAy1r/TgDXANhlomCkj
 PpgfwI1A==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kT7Wa-00018B-31; Thu, 15 Oct 2020 17:58:48 +0000
Date: Thu, 15 Oct 2020 18:58:48 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201015175848.GA4145@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-17-willy@infradead.org>
 <20201015094203.GA21420@infradead.org>
 <20201015164333.GA20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015164333.GA20115@casper.infradead.org>
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
X-Headers-End: 1kT7Wj-00Bj2s-Oy
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

On Thu, Oct 15, 2020 at 05:43:33PM +0100, Matthew Wilcox wrote:
> On Thu, Oct 15, 2020 at 10:42:03AM +0100, Christoph Hellwig wrote:
> > > +static void iomap_read_page_end_io(struct bio_vec *bvec,
> > > +		struct completion *done, bool error)
> > 
> > I really don't like the parameters here.  Part of the problem is
> > that ctx is only assigned to bi_private conditionally, which can
> > easily be fixed.  The other part is the strange bool error when
> > we can just pass on bi_stats.  See the patch at the end of what
> > I'd do intead.
> 
> I prefer assigning ctx conditionally to propagating the knowledge
> that !rac means synchronous.  I've gone with this:

And I really hate these kinds of conditional assignments.  If the
->rac check is too raw please just add an explicit

	bool synchronous : 1;

flag.

> @@ -340,16 +335,12 @@ iomap_readpage(struct page *page, const struct iomap_ops *
> ops)
>  
>         if (ctx.bio) {
>                 submit_bio(ctx.bio);
> +               if (ret > 0)
> +                       ret = blk_status_to_errno(ctx.status);
>         }
>  
> -       wait_for_completion(&ctx.done);
>         if (ret >= 0)
> -               ret = blk_status_to_errno(ctx.status);
> -       if (ret == 0)
>                 return AOP_UPDATED_PAGE;
>         unlock_page(page);
>         return ret;
> 
> 
> ... there's no need to call blk_status_to_errno if we never submitted a bio.

True.  I'd still prefer the AOP_UPDATED_PAGE as the fallthrough case
and an explicit goto out_unlock, though.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

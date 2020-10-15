Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C5B28F185
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 13:50:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kT1mB-0001kl-3J; Thu, 15 Oct 2020 11:50:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kT1m9-0001kQ-Oo
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 11:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XLRuihqm3fAlHyAROY0lvBAgKqxOu9ggAgyL2LNoHgw=; b=d0mYcS+iCuTfZt+RIdfAXyMu/F
 fbbI5+BxHCFVFwUWXVGZKhScMbQu7tTODEs91HCpd/Zn+FVG5WzjsM6ChhzF5nNZjOBPf9NzkxExN
 A4Ki80Y94/87EZ/JJGOP0+r5X1AZAOsZ9IQHeio6aXgCosEeuCrCWefzHPhmeb/IdRuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XLRuihqm3fAlHyAROY0lvBAgKqxOu9ggAgyL2LNoHgw=; b=KCHdFPbaFNh9I+OpiRDI/67bUL
 G5+YJZN3FsKKBJD+rZisZgXA/P5T9HF2SyNRzeTFRNXTx6J8c0MRHsnMM3Rm9MFiUrAeTennTbqZN
 K5TVW0FJQX8kIZJeJTv7Q8Vf6kzqzkHUMy398zbMejbl1a9IaBm/zJzCmfzFTp3XvYZg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kT1lt-00GVaE-2o
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 11:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XLRuihqm3fAlHyAROY0lvBAgKqxOu9ggAgyL2LNoHgw=; b=VixR6nbubUCnsr4ZO2wy9wuxCn
 lduZ4bu+AY2nVEOKTBe3JvtWf0PlYzWVbpiellQE6WWeKJ46G0qRMjoBJK9Zqxld+20RhqXCyTXW8
 iIJ7jl6BzmDlIQEHhkYHBhTOphSFccJhtJ7PpwARQc60tLRYyOXI9J4I06bLQgXnncAM+vpCMN1TW
 moWLhI0VJd33AOfpSmp24xN24NWqTOcT4f7uyXVJtcRgmtAdi8WW/5Tj8q5TbdPOmTEfJAcHjHHpN
 vx2Me/S+s+qLI0dsDRm2ZiSRjkSNyE2miUVgJCU5cSIyqF0lNfp5SeuzMdGwwLIvbsLqhY94JNLFJ
 JtXRqa5w==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kT1lV-0004fH-KR; Thu, 15 Oct 2020 11:49:49 +0000
Date: Thu, 15 Oct 2020 12:49:49 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201015114949.GY20115@casper.infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201015090242.GA12879@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015090242.GA12879@infradead.org>
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
X-Headers-End: 1kT1lt-00GVaE-2o
Subject: Re: [V9fs-developer] [PATCH v2 00/16] Allow readpage to return a
 locked page
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

On Thu, Oct 15, 2020 at 10:02:42AM +0100, Christoph Hellwig wrote:
> On Fri, Oct 09, 2020 at 03:30:48PM +0100, Matthew Wilcox (Oracle) wrote:
> > Ideally all filesystems would return from ->readpage with the page
> > Uptodate and Locked, but it's a bit painful to convert all the
> > asynchronous readpage implementations to synchronous.  The first 14
> > filesystems converted are already synchronous.  The last two patches
> > convert iomap to synchronous readpage.
> 
> Is it really that bad?  It seems like a lot of the remainig file systems
> use the generic mpage/buffer/nobh helpers.
> 
> But I guess this series is a good first step.

I'm just testing a patch to mpage_readpage():

+++ b/fs/mpage.c
@@ -406,11 +406,17 @@ int mpage_readpage(struct page *page, get_block_t get_block)
                .nr_pages = 1,
                .get_block = get_block,
        };
+       int err;
 
        args.bio = do_mpage_readpage(&args);
-       if (args.bio)
-               mpage_bio_submit(REQ_OP_READ, 0, args.bio);
-       return 0;
+       if (!args.bio)
+               return 0;
+       bio_set_op_attrs(args.bio, REQ_OP_READ, 0);
+       guard_bio_eod(args.bio);
+       err = submit_bio_wait(args.bio);
+       if (!err)
+               err = AOP_UPDATED_PAGE;
+       return err;
 }
 EXPORT_SYMBOL(mpage_readpage);
 

but I'm not looking forward to block_read_full_page().


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

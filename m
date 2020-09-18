Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8743326F599
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 08:00:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJ9RF-0004Lw-8P; Fri, 18 Sep 2020 06:00:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kJ9RD-0004Le-UJ
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 06:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P9fY6byayfuxyKCLSm6xqBSHHq4ia1kjqvHSYTQPD60=; b=EZcEb3r4PNhQTQ2zrg/oNRAU8M
 3mx1I4br5oQBNAt41JCZ8Ajfb/JWGxpiweInO3R25w5C8oJpdA+RFP9rnWWTNHPFam3bbm7mltqqe
 wcz2UwNK3SCxICo82pGhKnq9QYEIzGxBRQQkjYtgd+CQHzmEI4umNIlVOhi4cC2qrbmM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P9fY6byayfuxyKCLSm6xqBSHHq4ia1kjqvHSYTQPD60=; b=c8W93t17jWuq4iEhlDykNpGwVZ
 okEZmrAbS1wmg0pBQpQyIu8oxJS2diFNcwv8b7RbUuGca2cIIkj+QGx3lwMtVR74Cp0K52l4Mhhi2
 Iqf/0vyMp0oVefMJI4vDSiACVYtV2Yz4bAIEkjm+t75pSxzqOEOmFtppWErdxLyyzllM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ9Qz-00F6SJ-N5
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 06:00:02 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 5EAEFC01B; Fri, 18 Sep 2020 07:59:34 +0200 (CEST)
Date: Fri, 18 Sep 2020 07:59:19 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200918055919.GA30929@nautica>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-3-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917151050.5363-3-willy@infradead.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJ9Qz-00F6SJ-N5
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

Matthew Wilcox (Oracle) wrote on Thu, Sep 17, 2020:
> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> index cce9ace651a2..506ca0ba2ec7 100644
> --- a/fs/9p/vfs_addr.c
> +++ b/fs/9p/vfs_addr.c
> @@ -280,6 +280,10 @@ static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
>  		goto out;
>  
>  	retval = v9fs_fid_readpage(v9inode->writeback_fid, page);
> +	if (retval == AOP_UPDATED_PAGE) {
> +		retval = 0;
> +		goto out;
> +	}

FWIW this is a change of behaviour; for some reason the code used to
loop back to grab_cache_page_write_begin() and bail out on
PageUptodate() I suppose; some sort of race check?
The whole pattern is a bit weird to me and 9p has no guarantee on
concurrent writes to a file with cache enabled (except that it will
corrupt something), so this part is fine with me.

What I'm curious about is the page used to be both unlocked and put, but
now isn't either and the return value hasn't changed for the caller to
make a difference on write_begin / I don't see any code change in the
vfs  to handle that.
What did I miss?


(FWIW at least cifs in the series has the same pattern change; didn't
check all of them)


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

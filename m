Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D4C2772F5
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Sep 2020 15:45:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kLRZI-0001eD-CA; Thu, 24 Sep 2020 13:45:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jack@suse.cz>) id 1kLRZG-0001dn-UO
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Sep 2020 13:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VlUqvpjE+DbgekE2+bdwhIP+W4nuPpjOWvFCPqRwnZA=; b=BKUcKkDtaM+OoZ2792DubEPgA1
 3EiOmi3UhbNcOHPUE+JfXI55/JVhqLTvfhq7IN72tLRFpSXUyKjPsqdNkLXpGMP9dma4Or22du6V+
 XQvVZg34x8uwet68IP25kK3Q0la1UNTcMl/X6OzhgV0bm5OG2s8t4cSO17eZ9jrlmWwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VlUqvpjE+DbgekE2+bdwhIP+W4nuPpjOWvFCPqRwnZA=; b=Vv5uBxf+N/0CBOXh8Pq0wCF9hs
 3Pgg2eo7sAIpDUXdueTwPuWtxDyobTVtuh0aZ/clb7Y1gKd64ti/hAhU6Mh7V5zZGGm3anfbuRJh2
 a+gb+xMGrvsLRfTh8vjGXjoidxAih+p28haKq5PJtzTGQOG0D1o7T77/k8L8YkV+WPSI=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kLRZA-006ENi-Qc
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Sep 2020 13:45:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 856DEACF5;
 Thu, 24 Sep 2020 13:45:38 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id EEFC11E12F7; Thu, 24 Sep 2020 11:00:21 +0200 (CEST)
Date: Thu, 24 Sep 2020 11:00:21 +0200
From: Jan Kara <jack@suse.cz>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200924090021.GE27019@quack2.suse.cz>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-13-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917151050.5363-13-willy@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kLRZA-006ENi-Qc
Subject: Re: [V9fs-developer] [PATCH 12/13] udf: Tell the VFS that readpage
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

On Thu 17-09-20 16:10:49, Matthew Wilcox (Oracle) wrote:
> The udf inline data readpage implementation was already synchronous,
> so use AOP_UPDATED_PAGE to avoid cycling the page lock.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Looks good. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza
> ---
>  fs/udf/file.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/udf/file.c b/fs/udf/file.c
> index 628941a6b79a..52bbe92d7c43 100644
> --- a/fs/udf/file.c
> +++ b/fs/udf/file.c
> @@ -61,9 +61,8 @@ static int udf_adinicb_readpage(struct file *file, struct page *page)
>  {
>  	BUG_ON(!PageLocked(page));
>  	__udf_adinicb_readpage(page);
> -	unlock_page(page);
>  
> -	return 0;
> +	return AOP_UPDATED_PAGE;
>  }
>  
>  static int udf_adinicb_writepage(struct page *page,
> -- 
> 2.28.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

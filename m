Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5BB285840
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Oct 2020 07:49:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQ2Ka-00008B-KK; Wed, 07 Oct 2020 05:49:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+47a0ee7340e53641f5ce+6254+infradead.org+hch@casper.srs.infradead.org>)
 id 1kQ2KZ-00007l-13
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 05:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BBGqLkpiWOAukT4cGbe+ekpiE16tTJaZW03Gt7ynzdI=; b=fAl6jkzUqVmtMqGF+N0z48s/wZ
 ozVE+MHFcEy1mlpw5BcFATIL+KLtx1oouBVugz6FDruf/SNjWQCIM61+wgH2jhMgES9TUpHor3Ahg
 jgv5GdaYN4UPp1sGNx5nMXx5YGMZSnoOSl1Xe7VE1GocM+L7oR2HOEsvZ09/G+CMgY4I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BBGqLkpiWOAukT4cGbe+ekpiE16tTJaZW03Gt7ynzdI=; b=Lv+LhvOW5ve8Mh0IAT/9ELc8Jx
 3gaS1mI5qchoXTp9hnZLLGYm3wig3AV4xCN1tiC1c9sjo3fYD3QFWbiuEcGvwSie0v20hLAdAwDii
 u7dcyHEQPUljyajjjMPtBx29IEzB+UHFAWi471B+/bbDNBONcXqrRNxFyhEiv5fQMqA8=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQ2KJ-001jxz-AU
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 05:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BBGqLkpiWOAukT4cGbe+ekpiE16tTJaZW03Gt7ynzdI=; b=t/QSLeG7RQBiWYRnopnrssXYFK
 n3vc0rGv17CNvb8Y/WkwuC/SxjNbRnzsh5m9BRlD8G6GX7t98k1d/y8cbqRO3l5L1aMv6Ydc0Mlg5
 mI7i+pJQhT+VDALgc36DA0L/rTkp3ekxv+5aT/QsLlOv6P0LrPlMneAQMxZv5s2RdPz9PrRCSBa+T
 mSbtHJTbLCF/3NY+XJ95FcoXB62OM28dlVXti3pxX4KlwMT2J1tLLDuKyTyp1gXlUOrs/GWjXG7M9
 YPio7RcXP51/avKaLimQVw1+JGWGKFzzAB90Z4jGDaZdw3MOOzI9IPKUfE6nNI5jJkBF/BQQWeSoh
 mzhEKVAg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kQ2Jl-0004NF-9U; Wed, 07 Oct 2020 05:48:49 +0000
Date: Wed, 7 Oct 2020 06:48:49 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201007054849.GA16556@infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201004180428.14494-2-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kQ2KJ-001jxz-AU
Subject: Re: [V9fs-developer] [PATCH 1/7] 9P: Cast to loff_t before
 multiplying
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
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, josef@toxicpanda.com, joseph.qi@linux.alibaba.com,
 dsterba@suse.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Oct 04, 2020 at 07:04:22PM +0100, Matthew Wilcox (Oracle) wrote:
> On 32-bit systems, this multiplication will overflow for files larger
> than 4GB.
> 
> Cc: stable@vger.kernel.org
> Fixes: fb89b45cdfdc ("9P: introduction of a new cache=mmap model.")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/9p/vfs_file.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 3576123d8299..6d97b6b4d34b 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -612,9 +612,9 @@ static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
>  	struct writeback_control wbc = {
>  		.nr_to_write = LONG_MAX,
>  		.sync_mode = WB_SYNC_ALL,
> -		.range_start = vma->vm_pgoff * PAGE_SIZE,
> +		.range_start = (loff_t)vma->vm_pgoff * PAGE_SIZE,

Given the may places where this issue shows up I think we really need
a vma_offset or similar helper for it.  Much better than chasing missing
casts everywhere.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01352299349
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Oct 2020 18:04:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kX5vB-00029U-Nb; Mon, 26 Oct 2020 17:04:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsterba@suse.cz>) id 1kX5vA-00029L-J3
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dJ76jeOVnxpC9On/a554KkN29jD9aOQ/FABgBnLX8do=; b=J+Ya5cNKqmE6nAySzxgYoAAgT6
 M8G4Jk8mwMbw7cOniWcgVGafD42h8Zi1ek8V/fuecVDhzjnWar1K+MAlANmL/2tViow5KZlZL0SrL
 gMbJzJ8U3wq9g8oRvBUlF6iXVzDIvJihK86BH+d1CvYhDHZeAkAO3WkhWsKaqw7iJ5iQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dJ76jeOVnxpC9On/a554KkN29jD9aOQ/FABgBnLX8do=; b=LJ0OqsAiSF33SF7lAPdi9ck7d9
 XEw/CX/OJ3zmEn8+PnOan/CUg+jPoWm0IKZBc4GWEYYRO9xcnJitTsTQEgxc4BHyGJc4C31yx2RFR
 mcYeQKvbvrHoxgiUiLWxsXHMIgGgzgd/o+KB7fWorQwyYzUCCi2sqTwAX4hbUPRknZmI=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX5v5-007pCE-Ve
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:04:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 7D236AE1C;
 Mon, 26 Oct 2020 17:04:18 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id D20C2DA6E2; Mon, 26 Oct 2020 18:02:44 +0100 (CET)
Date: Mon, 26 Oct 2020 18:02:44 +0100
From: David Sterba <dsterba@suse.cz>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201026170244.GQ6756@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ericvh@gmail.com, lucho@ionkov.net,
 viro@zeniv.linux.org.uk, jlayton@kernel.org, idryomov@gmail.com,
 mark@fasheh.com, jlbec@evilplan.org, joseph.qi@linux.alibaba.com,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-btrfs@vger.kernel.org, clm@fb.com, josef@toxicpanda.com,
 dsterba@suse.com, stable@vger.kernel.org
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-6-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201004180428.14494-6-willy@infradead.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kX5v5-007pCE-Ve
Subject: Re: [V9fs-developer] [PATCH 5/7] btrfs: Promote to unsigned long
 long before shifting
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
Reply-To: dsterba@suse.cz
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, josef@toxicpanda.com, joseph.qi@linux.alibaba.com,
 dsterba@suse.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Oct 04, 2020 at 07:04:26PM +0100, Matthew Wilcox (Oracle) wrote:
> On 32-bit systems, this shift will overflow for files larger than 4GB.
> 
> Cc: stable@vger.kernel.org
> Fixes: df480633b891 ("btrfs: extent-tree: Switch to new delalloc space reserve and release")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/btrfs/ioctl.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
> index ac45f022b495..4d3b7e4ae53a 100644
> --- a/fs/btrfs/ioctl.c
> +++ b/fs/btrfs/ioctl.c
> @@ -1277,7 +1277,7 @@ static int cluster_pages_for_defrag(struct inode *inode,
>  	page_cnt = min_t(u64, (u64)num_pages, (u64)file_end - start_index + 1);
>  
>  	ret = btrfs_delalloc_reserve_space(BTRFS_I(inode), &data_reserved,
> -			start_index << PAGE_SHIFT,
> +			(loff_t)start_index << PAGE_SHIFT,

> -				start_index << PAGE_SHIFT,
> +				(loff_t)start_index << PAGE_SHIFT,

> -			start_index << PAGE_SHIFT,
> +			(loff_t)start_index << PAGE_SHIFT,

As this repeats 3 times I've added a variable. Patch added to misc-next,
thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

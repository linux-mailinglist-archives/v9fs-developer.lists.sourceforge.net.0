Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DF3D0C91
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 12:52:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m69qJ-0002Du-0d; Wed, 21 Jul 2021 10:52:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsterba@suse.cz>) id 1m69qH-0002DY-8O
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 10:52:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tbXyjAK9/zbaL9b+l3GlYTIFHULSzENd3xXwuJBkAjM=; b=l7QRVGHJCzrol3kRqBeCq68vyK
 cPsT7e18JyOof9k4dJjXYPHuWWQEVSClQ2ZPNqfB+FQpsmTDhpHYzv1ySnrAabsE3QH0Fh8w+E4iK
 ITbh3LBRve+WxKI1Zu+7Rkp0vMtD3Lm0LzzWmOcYYtsfuWrt4zYldBunVWsqFUSl1w3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tbXyjAK9/zbaL9b+l3GlYTIFHULSzENd3xXwuJBkAjM=; b=N8Z7SLpSHC3c+noYlYexvmYeD6
 8Zs4cPbk4RG+ccPOMy/1ql4mj4v8K8+0n+N98CyxQ+kCR9WMbP0jE/FhDctzZ93elwiCIQ6LpY+Ig
 OkMdLJ2U78NkyLGnXndkvIkWwvPHzEAcgkDQ6xDTeygnorNItlUm9U8vnfPDbbXSHBTc=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m69qC-0007nQ-21
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 10:52:45 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 961F6224C0;
 Wed, 21 Jul 2021 10:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1626864750;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tbXyjAK9/zbaL9b+l3GlYTIFHULSzENd3xXwuJBkAjM=;
 b=DPyZnUuH89vHNp5STNHwDjy/7c7ZMcrIoQJCiUVJOJ9Xq6xCLnLgSuzSbAnofqaAH9CTdV
 C57BOX6qKPFrF/oevuSxqhOM0rS0NZFxqSDiQpJz+OkuTDwSFA5qxweGWmXfq2ayNL2uLg
 4XGa5CK2oa6jf/1nFlgWb136h/fuSsE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1626864750;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tbXyjAK9/zbaL9b+l3GlYTIFHULSzENd3xXwuJBkAjM=;
 b=0rbzu4o+jXA43DYMwGjzHYuREPuOG2v0h99Xd/PfmtQTh7w2Yc3q9Z3xp/ycRous8PQf8X
 Pn0vVgZtP1UHrZBA==
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
 by relay2.suse.de (Postfix) with ESMTP id 6F7A0A3B81;
 Wed, 21 Jul 2021 10:52:30 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 601A6DA704; Wed, 21 Jul 2021 12:49:49 +0200 (CEST)
Date: Wed, 21 Jul 2021 12:49:49 +0200
From: David Sterba <dsterba@suse.cz>
To: Josef Bacik <josef@toxicpanda.com>
Message-ID: <20210721104949.GB19710@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Josef Bacik <josef@toxicpanda.com>,
 linux-btrfs@vger.kernel.org, kernel-team@fb.com,
 linux-fsdevel@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net
References: <cover.1626288241.git.josef@toxicpanda.com>
 <696f89db6b30858af65749cafb72a896552cfc44.1626288241.git.josef@toxicpanda.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <696f89db6b30858af65749cafb72a896552cfc44.1626288241.git.josef@toxicpanda.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: toxicpanda.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m69qC-0007nQ-21
Subject: Re: [V9fs-developer] [PATCH v3 8/9] 9p: migrate from sync_inode to
 filemap_fdatawrite_wbc
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kernel-team@fb.com, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I don't see any 9p people in CC, adding them. The cover letter is
https://lore.kernel.org/linux-btrfs/cover.1626288241.git.josef@toxicpanda.com/

On Wed, Jul 14, 2021 at 02:47:24PM -0400, Josef Bacik wrote:
> We're going to remove sync_inode, so migrate to filemap_fdatawrite_wbc
> instead.
> 
> Signed-off-by: Josef Bacik <josef@toxicpanda.com>
> ---
>  fs/9p/vfs_file.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 59c32c9b799f..6b64e8391f30 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -625,12 +625,7 @@ static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
>  	p9_debug(P9_DEBUG_VFS, "9p VMA close, %p, flushing", vma);
>  
>  	inode = file_inode(vma->vm_file);
> -
> -	if (!mapping_can_writeback(inode->i_mapping))
> -		wbc.nr_to_write = 0;
> -
> -	might_sleep();
> -	sync_inode(inode, &wbc);
> +	filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
>  }
>  
>  
> -- 
> 2.26.3


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D52FC233EA5
	for <lists+v9fs-developer@lfdr.de>; Fri, 31 Jul 2020 07:24:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k1NXC-0002QK-SA; Fri, 31 Jul 2020 05:24:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1k1NXA-0002QB-T8
 for v9fs-developer@lists.sourceforge.net; Fri, 31 Jul 2020 05:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tPkDg+BkG+CmhSLlb1RqgR//w/3VyVvVztpDyJjNyPM=; b=cpqUtCWh2MGtsMigbR1nyWTX3+
 UMEdt04xxnTHxItIBQXmzIBo5NApRxZiXdP8VhU4xtY+o1zf5i9YFEJrI6LW57MiiCqtE3tC0Fg4a
 GeaadnBeOq+6SoNHZbVPOuFmU+bD+5Hiz/KnwXr2umvNziu2Qom7uZu0BozA2JVnQRoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tPkDg+BkG+CmhSLlb1RqgR//w/3VyVvVztpDyJjNyPM=; b=hRxgBmxCNVjOHezpDYSm9SrYIK
 3bx5qlvSsV9nJ5ZZ2U/q/x9gpquKOcTyVI58hU2EAnhNzBFILVDqhIpkuZmGhFjBvjPACPK1QXVxB
 61C+UwCWcseF49clsLP3aZghrMuzcK/2/k4YA/l9yqexSQ9zjFoHxWn601WoYYjDLkHQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1NX8-007urL-Uj
 for v9fs-developer@lists.sourceforge.net; Fri, 31 Jul 2020 05:24:44 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 5DC4FC01C; Fri, 31 Jul 2020 07:24:36 +0200 (CEST)
Date: Fri, 31 Jul 2020 07:24:21 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Li Heng <liheng40@huawei.com>
Message-ID: <20200731052421.GA22875@nautica>
References: <1596013140-49744-1-git-send-email-liheng40@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596013140-49744-1-git-send-email-liheng40@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k1NX8-007urL-Uj
Subject: Re: [V9fs-developer] [PATCH -next] 9p: Remove unneeded cast from
 memory allocation
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Li Heng wrote on Wed, Jul 29, 2020:
> Remove casting the values returned by memory allocation function.
> 
> Coccinelle emits WARNING:
> 
> ./fs/9p/vfs_inode.c:226:12-29: WARNING: casting value returned by memory allocation function to (struct v9fs_inode *) is useless.
> 
> Signed-off-by: Li Heng <liheng40@huawei.com>

Why not, I'll take this for next.
Please pay a bit more attention to the commit message next time though,
neither "Remove casting the values" nor "x emits warning" are proper
English -- I've taken the liberty to fix the grammar a bit...

> ---
>  fs/9p/vfs_inode.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 0fd5bf2..ae0c38a 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -223,8 +223,7 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
>  struct inode *v9fs_alloc_inode(struct super_block *sb)
>  {
>  	struct v9fs_inode *v9inode;
> -	v9inode = (struct v9fs_inode *)kmem_cache_alloc(v9fs_inode_cache,
> -							GFP_KERNEL);
> +	v9inode = kmem_cache_alloc(v9fs_inode_cache, GFP_KERNEL);
>  	if (!v9inode)
>  		return NULL;
>  #ifdef CONFIG_9P_FSCACHE


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

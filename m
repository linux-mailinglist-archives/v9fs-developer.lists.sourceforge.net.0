Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CC037FA69
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 May 2021 17:15:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lhD3F-0003wu-VJ; Thu, 13 May 2021 15:15:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1lhD3F-0003wY-CD
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 15:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WrkXCzg+EMudeHX0kOMy3Gq4XNuKCeqId/9/t9V4cGk=; b=QXbxGeOp5WHKWKrRKyW8qbN45w
 aDSge+eCCWu0PuUZST89fB4YW5e4HUye0dMurxICMn+DJe16SexAexpiE/Xaf7ZmuzQUBmCxqIvfE
 DcUZgSj8+2JTkpB7g6aYfEtMlqOiBykgQLElK2xAfVg/uSHOXT9LOooXGgDwtqEhZiWE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WrkXCzg+EMudeHX0kOMy3Gq4XNuKCeqId/9/t9V4cGk=; b=SENEQfUXXaYIQKi6PyzncnpLX0
 odDH111JR1bhQGxh496w0nHZ13fFv2LPCiFBtLzB4/aX+0Nkv+FP1e4r/1TX3TzSBp2omDwnm6MnG
 jkJoO5AVBSrmkeAbR/EvdtFlLX+g47hRGfdr+adpl4Hr+GBcI73pQEKXd6s+4i27j22Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhD37-0005xa-Nq
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 15:15:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8501C61406;
 Thu, 13 May 2021 15:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620918887;
 bh=lvISWgCHqfDjlJaGVkO7Xg7MmWmSFb0/oMlT49Ld9Eo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Y53olRElXk6w7ILXRmCrP6SlN0fwUP3L2li2hqoEs+uwcJ2SEbgrWit+/+Nqd2cqi
 G+qW4fikwoQrhAouGtk166RZzVx6Pd6FEwZ9DrgPyzSCxxTsRW/OUczJy688dWLhHB
 Zl5B8dRSH72HqomxduxvvtcLdpHrE0YW/4Q/KqsqqYOM96Js4f6Ua0kE9XoQ8PXdqf
 tpio6vqE/c8Yd7Iwy/16cpLLSZ+CpSOlsmN7lo/Qs8g6tHtfiomHxzqXXHJLh+Ui+A
 dZbsMrp7Y5jnzSY0t6W8cuzJUrVcpm5oL68+XuLDkpRm+zJCLm5yEdXuzqW9M2gw/1
 hsB2eExu6Eegg==
Message-ID: <69b577faaff376bde047edb9dfbda0b770ab0ca4.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, geert@linux-m68k.org
Date: Thu, 13 May 2021 11:14:45 -0400
In-Reply-To: <162090298141.3166007.2971118149366779916.stgit@warthog.procyon.org.uk>
References: <162090298141.3166007.2971118149366779916.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhD37-0005xa-Nq
Subject: Re: [V9fs-developer] [PATCH] netfs: Make CONFIG_NETFS_SUPPORT
 auto-selected rather than manual
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2021-05-13 at 11:49 +0100, David Howells wrote:
> Make the netfs helper library selected automatically by the things that use
> it rather than being manually configured, even though it's required.
> 
> Fixes: 3a5829fefd3b ("netfs: Make a netfs helper module")
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-mm@kvack.org
> cc: linux-cachefs@redhat.com
> cc: linux-afs@lists.infradead.org
> cc: linux-nfs@vger.kernel.org
> cc: linux-cifs@vger.kernel.org
> cc: ceph-devel@vger.kernel.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: linux-fsdevel@vger.kernel.org
> Link: https://lore.kernel.org/r/CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com
> ---
> 
>  fs/netfs/Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/netfs/Kconfig b/fs/netfs/Kconfig
> index 578112713703..b4db21022cb4 100644
> --- a/fs/netfs/Kconfig
> +++ b/fs/netfs/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  config NETFS_SUPPORT
> -	tristate "Support for network filesystem high-level I/O"
> +	tristate
>  	help
>  	  This option enables support for network filesystems, including
>  	  helpers for high-level buffered I/O, abstracting out read
> 
> 

Makes sense. No one is going to enable this w/o a fs that uses it, so
might as well make it automagic.

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

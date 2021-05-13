Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6996037FA57
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 May 2021 17:13:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lhD1l-0003qk-NT; Thu, 13 May 2021 15:13:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1lhD1l-0003qa-5r
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 15:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LilxA8/JUwtl+MkE/RM0XapuyOmd+S1erRzzuzB6AY4=; b=I8hjOcWNZvmbPk+dNFykYTw86M
 645Cs7Q6B5nXVX/ZLliXyNtk/SMS+hr8uE7rPHFRrAGrVkvXlLuxODHSxpllDCzWg5XY5j/kBLW9l
 z7IGSV0fqpbg8DMDs4rv8/rd2h/vhCGV7HNpZF+Ha674o8r7Q+Z9iT+HZGFG1Ni7QqpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LilxA8/JUwtl+MkE/RM0XapuyOmd+S1erRzzuzB6AY4=; b=VUgvjB4i0BdV1MSI4qZy5WSZps
 ZKz6Bp235MObE4kvUdozL05j5p/mxiZJAOWsOgZpFwqdhC+rtrgOZl4jNYW39KmJeZf6RcNB4wcOl
 ksGJy3RV2OnhJf8BoccG0PwzPc+9sYsDywhnbQbbxHBAXsl0fIxNGZtSf+5yS01CoVz0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhD1i-0005oq-RC
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 15:13:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 50F95610A7;
 Thu, 13 May 2021 15:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620918802;
 bh=41qb467358PVWANG8SIzcwNL37SGfMDJteXHTiVFBmk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Qx2rlVZSXYR2TxqHlZxJ1qDYqorMs4V3rrBSNXmrDaFr5uI2z94F7FU+eielXHQ6w
 2qVIDsLxAF96kf3b4BGAB48Nbtg0iPtdpMEemoAitO+/0QNgy1DqDkFsldKm2iFG34
 +aGB6I+7cJL3h/SyZxWRbhI8FV4FwxZEEkAQTWEi8d9fSYWV9qxXuKce3QsXLcxvUP
 lBV8m6hEDtLxxc5bQ7/tgghDpTOj9AAuS3EZHS1bAJo29OIZBY9Kwi7BYJQop8iqGL
 fjMc+CK+tp7BY+ZZXOfaCc1pPRse2na0vsFEWjbQvB4PbRz5/bLXYsCspK9njJAwts
 5R80Xhp0QuCUg==
Message-ID: <f820202cc50d6869a5ef1f4deabed4b4c75db9b6.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, willy@infradead.org
Date: Thu, 13 May 2021 11:13:20 -0400
In-Reply-To: <162090295383.3165945.13595101698295243662.stgit@warthog.procyon.org.uk>
References: <162090295383.3165945.13595101698295243662.stgit@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhD1i-0005oq-RC
Subject: Re: [V9fs-developer] [PATCH] netfs: Pass flags through to
 grab_cache_page_write_begin()
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
> In netfs_write_begin(), pass the AOP flags through to
> grab_cache_page_write_begin() so that a request to use GFP_NOFS is honoured.
> 
> Fixes: e1b1240c1ff5 ("netfs: Add write_begin helper")
> Reported-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-mm@kvack.org
> cc: linux-cachefs@redhat.com
> cc: linux-afs@lists.infradead.org
> cc: linux-nfs@vger.kernel.org
> cc: linux-cifs@vger.kernel.org
> cc: ceph-devel@vger.kernel.org
> cc: v9fs-developer@lists.sourceforge.net
> cc: linux-fsdevel@vger.kernel.org
> ---
> 
>  fs/netfs/read_helper.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 193841d03de0..725614625ed4 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -1068,7 +1068,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>  	DEFINE_READAHEAD(ractl, file, NULL, mapping, index);
>  
>  retry:
> -	page = grab_cache_page_write_begin(mapping, index, 0);
> +	page = grab_cache_page_write_begin(mapping, index, flags);
>  	if (!page)
>  		return -ENOMEM;
>  
> 
> 

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

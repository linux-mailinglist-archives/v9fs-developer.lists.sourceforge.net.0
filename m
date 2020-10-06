Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C59FD284AEB
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Oct 2020 13:29:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kPl9p-00047V-VK; Tue, 06 Oct 2020 11:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1kPl9o-000474-9X
 for v9fs-developer@lists.sourceforge.net; Tue, 06 Oct 2020 11:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WTGCoxANt7xspBxDRm2/+cTwAid+75Sjgs0Hk0tH2Ds=; b=BQe461U3eSSuERG/g4MJnwnpQU
 Uuv9iKDkdsfn+oryr+0+d9Qa8k6msN2pQoFSvxLhgZ2p/YrRHKh2AHf0k2FihdtkTeGfiGkPyxG9o
 g3XHRv5o3exWI2Agwr8s2KSR/lcky+VLnU/H8thzg4meQZFZtbvLqVx7GAZ9W80gT16k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WTGCoxANt7xspBxDRm2/+cTwAid+75Sjgs0Hk0tH2Ds=; b=ei6O03zlKdZYS8TUmlGPrNnqGi
 iV/1O4/8Ai7LEWlddGtQ9V63ugw4JUKJSCYI2iQH45H/C+n4w58zJpVNp1EFjr+fjYen8iGDQTCGz
 RPxGYQr7RZMItWf6OHCVe0JmnbTe1gP0sai8UMosDZe1ZGtpmxE60AsC8WdXixHmllBg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPl9Y-000vLi-Qc
 for v9fs-developer@lists.sourceforge.net; Tue, 06 Oct 2020 11:29:24 +0000
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net [68.20.15.154])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ECD62078E;
 Tue,  6 Oct 2020 11:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601983743;
 bh=vV/cWTk5oZ3xCfPmOW1JyTYnqQAJ5XkLf+0bV/y1Ito=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Jlhl4S6lFeJYtGWHmUA4l515wPAaDd/izhoqUtrYXjms0ElqbF3M1ArUgFO1ky40k
 zer6Zj9SWbb2ipxs05ptZWJ6MDYoZRPh+rtKtTZ8YbwdQuR8Z44fKxafme5xp9Yxo5
 ryw9iFW4AEoas3dmsQFu+N/Z05Z69uSV6dPaytRg=
Message-ID: <c00f08a9891c878ee9483aa9d05b4e28c2a5791a.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
 linux-fsdevel@vger.kernel.org
Date: Tue, 06 Oct 2020 07:29:00 -0400
In-Reply-To: <20201004180428.14494-4-willy@infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-4-willy@infradead.org>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
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
X-Headers-End: 1kPl9Y-000vLi-Qc
Subject: Re: [V9fs-developer] [PATCH 3/7] ceph: Promote to unsigned long
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
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 josef@toxicpanda.com, joseph.qi@linux.alibaba.com, viro@zeniv.linux.org.uk,
 dsterba@suse.com, v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, 2020-10-04 at 19:04 +0100, Matthew Wilcox (Oracle) wrote:
> On 32-bit systems, this shift will overflow for files larger than 4GB.
> 
> Cc: stable@vger.kernel.org
> Fixes: 61f68816211e ("ceph: check caps in filemap_fault and page_mkwrite")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/ceph/addr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 6ea761c84494..970e5a094035 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -1522,7 +1522,7 @@ static vm_fault_t ceph_filemap_fault(struct vm_fault *vmf)
>  	struct ceph_inode_info *ci = ceph_inode(inode);
>  	struct ceph_file_info *fi = vma->vm_file->private_data;
>  	struct page *pinned_page = NULL;
> -	loff_t off = vmf->pgoff << PAGE_SHIFT;
> +	loff_t off = (loff_t)vmf->pgoff << PAGE_SHIFT;
>  	int want, got, err;
>  	sigset_t oldset;
>  	vm_fault_t ret = VM_FAULT_SIGBUS;

Good catch! Would you like us to take this in via the ceph tree, or are
you planning to submit altogether upstream? Either way:

Reviewed-by: Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

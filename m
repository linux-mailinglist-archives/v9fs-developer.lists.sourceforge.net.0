Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7434433E80
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 20:33:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mctvI-0003ZX-PQ; Tue, 19 Oct 2021 18:33:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mctvG-0003ZN-72
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZ9xrxMcNRI8ZuFFAy2iTPbxahYga2XstNQpPO9cMgE=; b=D7UMxmQwI6gbXyTbPi+8i0aVME
 c20VVvKM/difkuyVpVbNBxM69wkHpLT61vpXTzdzdo2uR2tUlB/ayQA+gAmEX1Z2TmJY+liXESmLm
 vAvA4a6KYA+GHsE+MW3AEYJgS7YrITOODrASt32EmUWuXnx04GQLHLgbRY9B1VS7sWec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZ9xrxMcNRI8ZuFFAy2iTPbxahYga2XstNQpPO9cMgE=; b=jmGCEVXtpqt0yquBC1K1hlo/7L
 y8HTmNLnBpjiJpmfvGXcoGweLglBHMVWfJuluFmIAJZVhrJwrfobFPZAJu0iaS8Mt2iNecp2LSI/M
 /SQSB5Xx9431EyF/eyNzyWl+HYBWcPqfLzJq9IDqziZV+LmH2G8PFq0/BzDAg/JlA1Ho=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mctvC-006U4M-Aa
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 18:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GZ9xrxMcNRI8ZuFFAy2iTPbxahYga2XstNQpPO9cMgE=; b=cn4Pc1pEaoHMVy8gIsrUIPBp6n
 IvhYVvPxLOGXmopmvPBIi8Z01toSzSmWvibfLFkBjdaHyUYJOrxR08qrwOT8UZ0xqUlec+T5luiVg
 GzIFfFKh4dwXqT/lDoAJASJwu3IC6cN7Nd7fTUc4kJHy6UjU9MOVZASY6Q/pq5RXGcHm+wZiqO5xJ
 L7mBvfVKYZM/Ih213xkdpm9shfhx35HfA4lgljh8ZVAEeC0fdP+lXyV7QW2BHwjDKms8f+xacEzUx
 RYX/9mTfEdCpiyeJAUYH1Hz1l6jJXF6KG6nNRl9qXwdGZU88BN3vWFIH5MDv87MotH6YVNyhJZwtM
 Byq3EC8w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mctqE-00Bvpr-F1; Tue, 19 Oct 2021 18:28:14 +0000
Date: Tue, 19 Oct 2021 19:28:02 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YW8OMsrEzrY8aSxo@casper.infradead.org>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 18, 2021 at 03:50:32PM +0100,
 David Howells wrote:
 > @@ -2625,6 +2625,10 @@ ssize_t filemap_read(struct kiocb *iocb, struct
 iov_iter *iter, > if ((iocb->ki_flags & IOCB_WAITQ) && already_r [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mctvC-006U4M-Aa
Subject: Re: [V9fs-developer] [PATCH 01/67] mm: Stop filemap_read() from
 grabbing a superfluous page
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kent Overstreet <kent.overstreet@gmail.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 18, 2021 at 03:50:32PM +0100, David Howells wrote:
> @@ -2625,6 +2625,10 @@ ssize_t filemap_read(struct kiocb *iocb, struct iov_iter *iter,
>  		if ((iocb->ki_flags & IOCB_WAITQ) && already_read)
>  			iocb->ki_flags |= IOCB_NOWAIT;
>  
> +		isize = i_size_read(inode);
> +		if (unlikely(iocb->ki_pos >= isize))
> +			goto put_pages;
> +

Is there a good reason to assign to isize here?  I'd rather not,
because it complicates analysis, and a later change might look at
the isize read here, not realising it was a racy use.  So I'd
rather see:

		if (unlikely(iocb->ki_pos >= i_size_read(inode)))
			goto put_pages;


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

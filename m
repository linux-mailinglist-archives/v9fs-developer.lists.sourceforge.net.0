Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DD02B7E63
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 14:38:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfNfj-0005rj-Es; Wed, 18 Nov 2020 13:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kfMtU-00032m-NJ
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 12:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PODBhYa4eqg5SsAKwLi7N4d6sQhfEDKLSvLvLhMBzfI=; b=f9DLGU8+fFl8tKSwqUQQFKLnlt
 zo8qnpz8UYo3OF/23m6SatDm6CcpgIGRieAGcp0u0uPq09vUXLxAbAzYkt9KPTPJ7t2pgAoyYXjhT
 +gCcAiG9S2ffLQZrnj8eTe/hy7vRz+N7C9b3f7vgl96pUF01ddrdKDTFFQDimBsF+mPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PODBhYa4eqg5SsAKwLi7N4d6sQhfEDKLSvLvLhMBzfI=; b=XfW6umOuA2xTEp7sT1PUkdPACH
 JVJdKAEFzvWofq8kNyoxFZrfyIyzTmk1IAEGLTKJ+M/FlYVCW5VLIKjy8RQPAhyfy3J0Gbzw5Yipv
 k3CM4C7w6EC/l+AKVApKujHDRpQ89AB+ohP0m4Rd5o2RljMlcm8Qd9xn+U6/emDOP8wU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfMtL-003kPs-Ph
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 12:49:04 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 9480DC009; Wed, 18 Nov 2020 13:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1605703721; bh=PODBhYa4eqg5SsAKwLi7N4d6sQhfEDKLSvLvLhMBzfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y5tNWIk2VSS8T7V29HtJ3Qe38OORtBVjP6d7WLgio1ZTJqNjCGTdcuQETm3400mnb
 ujbzmA8DLrZOk1zQyhw1i+Jy+bcbXhCSLOAM01SVMIeqCcAGnUQsyPKUcVD3sf4R+c
 pvrm4yShO0Yri3Dbc7k95D9L7W8Rgv9qlOwMifSXq2w/eK4ydyZ+2vHQfmxLdBBYKL
 aP4MW1E5txB5a3x4T8RiFx9/thhhCOlTHcOC0k9MivfcJvKeZjbg79vR5FC6od2rPw
 Adq/z8iYcQC7/AXwYjI9gAnAvw0SbTrYBB4+JBfPjmJS0trNp0fbTGqsdZjaP1901G
 BuVCHT6ucmKQw==
Date: Wed, 18 Nov 2020 13:48:26 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20201118124826.GA17850@nautica>
References: <1514086.1605697347@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1514086.1605697347@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kfMtL-003kPs-Ph
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Wed, Nov 18, 2020:
> Here's a rough draft of a patch to convert 9P to use the rewritten fscache
> API.  It compiles, but I've no way to test it.  This is built on top of my
> fscache-iter branch:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter

Thanks, I'm ashamed I hadn't found time to work on this it's a great
help.
I can get some test running with this.

What's the current schedule/plan for the fscache branch merging? Will
you be trying this merge window next month?

Couple more questions below

> Notes:
> 
>  (*) I've switched to use ITER_XATTR rather than ITER_BVEC in some places.
> 
>  (*) I've added a pair of helper functions to get the cookie:
> 
> 	v9fs_inode_cookie()
> 	v9fs_session_cache()
> 
>      These return NULL if CONFIG_9P_FSCACHE=n.
> 
>  (*) I've moved some of the fscache accesses inline.  Using the above helper
>      functions, it all compiles away due to NULL pointer checks in the header
>      file if fscache is disabled.
> 
>  (*) 9P's readpage and readpages now just jump into the netfs helpers, as does
>      write_begin.  v9fs_req_issue_op() initiates the I/O on behalf of the
>      helpers.
> 
>  (*) v9fs_write_begin() now returns the subpage and v9fs_write_end() goes back
>      out to the head page.  thp_size() is also used.  This should mean you
>      handle transparent huge pages (THPs) and can turn that on.
> 
>  (*) I have made an assumption that 9p_client_read() and write can handle I/Os
>      larger than a page.  If this is not the case, v9fs_req_ops will need
>      clamp_length() implementing.

There's a max driven by the client's msize (client->msize - P9_IOHDRSZ ;
unfortunately msize is just guaranted to be >= 4k so that means the
actual IO size would be smaller in that case even if that's not intended
to be common)

>  (*) The expand_readahead() and clamp_length() ops should perhaps be
>      implemented to align and trim with respect to maximum I/O size.
> 
>  (*) iget and evict acquire and relinquish a cookie.
> 
>  (*) open and release use and unuse that cookie.
> 
>  (*) writepage writes the dirty data to the cache.
> 
>  (*) setattr resizes the cache if necessary.
> 
>  (*) The cache needs to be invalidated if a 3rd-party change happens, but I
>      haven't done that.

There's no concurrent access logic in 9p as far as I'm aware (like NFS
does if the mtime changes for example), so I assume we can keep ignoring
this.

>  (*) With these changes, 9p should cache local changes too, not just data
>      read.
> 
>  (*) If 9p supports DIO writes, it should invalidate a cache object with
>      FSCACHE_INVAL_DIO_WRITE when one happens - thereby stopping caching for
>      that file until all file handles on it are closed.

Not 100% sure actually there is some code about it but comment says it's
disabled when cache is active; I'll check just found another problem
with some queued patch that need fixing first...

> I forgot something: netfs_subreq_terminated() needs to be called when
> the read is complete.  If p9_client_read() is synchronous, then that
> would be here,

(it is synchronous; I'll add that suggestion)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

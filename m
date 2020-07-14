Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 772DB21F07A
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jul 2020 14:13:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvJoF-00063t-Ev; Tue, 14 Jul 2020 12:13:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jvJoD-00063h-Rn
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 12:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dbM7QhdQH+BOGMhLWa7O6b96M53JJLuDNJ3jghm2BOQ=; b=kt38J64qwETRpMN6JrVnk1JS5Y
 Ep8E0UO1Y3L693h1TBNzXX1R7zmLhzHetetOIsShmiketWys2bUJdgeqcRJ93DnsXRzVLH9aZsi9L
 cpKWlmAKz0Upacl4I3XCG6lQ59GnjGB5XAF6svNgfp2FaExvAcKWWgHmllGhTVx9KXA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dbM7QhdQH+BOGMhLWa7O6b96M53JJLuDNJ3jghm2BOQ=; b=CPCGOOomuP+bOvIZM7DTiBEfda
 SpyCgxECMJX+ovT4CHv+5PHQOi7UGNgnRD9IIN2SPZKVv9O5//OEQ78GNQHoosv/+YNkmgv+X1Lx1
 nVG8E22Dkr5AQ10sX846HAmJBH+6fDoWzhC+/ezV8oyHx64tA2fLIsntbZEmsyaXcW3w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvJoB-00HPF0-K6
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 12:13:17 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C9AB1C01B; Tue, 14 Jul 2020 14:13:04 +0200 (CEST)
Date: Tue, 14 Jul 2020 14:12:49 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Victor Hsieh <victorhsieh@google.com>
Message-ID: <20200714121249.GA21928@nautica>
References: <20200713215759.3701482-1-victorhsieh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200713215759.3701482-1-victorhsieh@google.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jvJoB-00HPF0-K6
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Victor Hsieh wrote on Mon, Jul 13, 2020:
> The fid parameter of TCREATE represents the directory that the file

This is not TCREATE, this is TLCREATE.
The fid represents the directory before the call, but on success
represents the file that has been created.

> should be created at. The current implementation mistakenly passes a
> locally created fid for the file. The correct file fid is usually
> retrieved by another WALK call, which does happen right after.
> 
> The problem happens when a new created fd is read from (i.e. where
> private_data->fid is used), but not write to.

I'm not sure why the code currently does a 2nd walk from the directory
with the name which is prone to a race instead of cloning ofid without a
path, but I fail to see the problem you ran into - file->private_data is
a fid pointing to the file as it should be.

Could you describe what kind of errors you get and if possible how to
reproduce?

> Fixes: 5643135a2846 ("fs/9p: This patch implements TLCREATE for 9p2000.L protocol.")
> Signed-off-by: Victor Hsieh <victorhsieh@google.com>
> Cc: stable@vger.kernel.org

(afaiu it is normally frowned upon for developers to add this cc (I can
understand stable@ not wanting spam discussing issues left and right
before maintainers agreed on them!) ; I can add it to the commit itself
if requested but they normally pick most such fixes pretty nicely for
backport anyway; I see most 9p patches backported as long as the patch
applies cleanly which is pretty much all the time.
Please let me know if I understood that incorrectly)

> ---
>  fs/9p/vfs_inode_dotl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
> index 60328b21c5fb..90a7aaea918d 100644
> --- a/fs/9p/vfs_inode_dotl.c
> +++ b/fs/9p/vfs_inode_dotl.c
> @@ -285,7 +285,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
>  			 err);
>  		goto error;
>  	}
> -	err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
> +	err = p9_client_create_dotl(dfid, name, v9fs_open_to_dotl_flags(flags),
>  				    mode, gid, &qid);
>  	if (err < 0) {
>  		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

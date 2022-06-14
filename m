Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E055B54A79F
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 05:42:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0xRT-0001C3-VI; Tue, 14 Jun 2022 03:42:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0xRS-0001Bv-Pk
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 03:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kMhrbHmtDy8FgmIFOYrbI1pKa88ais5XYanlCNmLm+4=; b=cBzfU9u/em3HPApO+hXPd3z2cF
 16ra9wEJ/ZatuAe9ahywX8G455g9bWZcF4S5ze2u7Kfp2pxp1y8rCo1SD/Rk5eQ2WlhUzidnrxbw8
 wGTb9i5AYUMEA2n/Bweqph27upz6armfBY+LuxCRcKpDf/RVdUUTop6Wl96KW05Y5Qaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kMhrbHmtDy8FgmIFOYrbI1pKa88ais5XYanlCNmLm+4=; b=g8SEjSjt+xQ91GCMeB+LtXniiK
 6UUSld15T8pcM7T7IWFNRMdwn/O4PEkUqU45at9bV31RwfOL0MGQz4XFx7WhYSY3lynl6kyQeUQzf
 knaRdbUlC5RfXZoiusuv50/Qd8PrLOGavLEa3tOt8+f9+D3vCjnSAfvu70IbOAg6TY4Q=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0xRN-0000oG-Tp
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 03:42:10 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D485DC01E; Tue, 14 Jun 2022 05:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655178120; bh=kMhrbHmtDy8FgmIFOYrbI1pKa88ais5XYanlCNmLm+4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJfWrgZ3HXfWO/UQCWGDmW7ZCSuYL8dR9Lmc2kF710OpYtEWfGZ5UMNFnWsGUYdSJ
 BvqwzFNePwZRalWakPC25IN8crVstzf9mmlO98v+o7X+IWIrucEOLzxr8WDOIn3XCP
 wPlE/SZtCrtAhnHmC6shrJhXzkPpbj3xUNRnvnyXUQHlK3o4MoL4S5jyqbdxSbACq5
 cOIR9zlE5lPOZDo/6eaVHmPaE83/QfVGe+3RYpT74j7P0QwxuGtSB4b0Wv5mLmBdgy
 A4LP36pSTbhlT1HscCfxuGn3XuHkxoLsO6H2P/R1V1wtI3HoE4bQK5Xl2ICvdF75zv
 f+Ut48QSmErpw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AE1E6C009;
 Tue, 14 Jun 2022 05:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655178120; bh=kMhrbHmtDy8FgmIFOYrbI1pKa88ais5XYanlCNmLm+4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJfWrgZ3HXfWO/UQCWGDmW7ZCSuYL8dR9Lmc2kF710OpYtEWfGZ5UMNFnWsGUYdSJ
 BvqwzFNePwZRalWakPC25IN8crVstzf9mmlO98v+o7X+IWIrucEOLzxr8WDOIn3XCP
 wPlE/SZtCrtAhnHmC6shrJhXzkPpbj3xUNRnvnyXUQHlK3o4MoL4S5jyqbdxSbACq5
 cOIR9zlE5lPOZDo/6eaVHmPaE83/QfVGe+3RYpT74j7P0QwxuGtSB4b0Wv5mLmBdgy
 A4LP36pSTbhlT1HscCfxuGn3XuHkxoLsO6H2P/R1V1wtI3HoE4bQK5Xl2ICvdF75zv
 f+Ut48QSmErpw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id dfc027e7;
 Tue, 14 Jun 2022 03:41:55 +0000 (UTC)
Date: Tue, 14 Jun 2022 12:41:40 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>
Message-ID: <YqgDdNUxC0hV6KR9@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org>
 <20220614033802.1606738-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614033802.1606738-1-asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Tue, Jun 14, 2022 at 12:38:02PM
 +0900: > cached operations sometimes need to do invalid operations (e.g.
 read > on a write only file) > Historic fscache had added a "writeb [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0xRN-0000oG-Tp
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Tue, Jun 14, 2022 at 12:38:02PM +0900:
> cached operations sometimes need to do invalid operations (e.g. read
> on a write only file)
> Historic fscache had added a "writeback fid" for this, but the conversion
> to new fscache somehow lost usage of it: use the writeback fid instead
> of normal one.
> 
> Note that the way this works (writeback fid being linked to inode) means
> we might use overprivileged fid for some operations, e.g. write as root
> when we shouldn't.
> Ideally we should keep both fids handy, and only use the writeback fid
> when really required e.g. reads to a write-only file to fill in the page
> cache (read-modify-write); but this is the situation we've always had
> and this commit only fixes an issue we've had for too long.
> 
> Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads and caching")
> Cc: stable@vger.kernel.org
> Cc: David Howells <dhowells@redhat.com>
> Reported-By: Christian Schoenebeck <linux_oss@crudebyte.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> Ok so finally had time to look at this, and it's not a lot so this is
> the most straight forward way to do: just reverting to how the old
> fscache worked.
> 
> This appears to work from quick testing, Chiristian could you test it?
> 
> I think the warnings you added in p9_client_read/write that check
> fid->mode might a lot of sense, if you care to resend it as
> WARN_ON((fid->mode & ACCMODE) == O_xyz);
> instead I'll queue that for 5.20
> 
> 
> @Stable people, I've checked it applies to 5.17 and 5.18 so should be
> good to grab once I submit it for inclusion (that commit was included in
> 5.16, which is no longer stable)
> 
> 
>  fs/9p/vfs_addr.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> index 7382c5227e94..262968d02f55 100644
> --- a/fs/9p/vfs_addr.c
> +++ b/fs/9p/vfs_addr.c
> @@ -58,7 +58,11 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
>   */
>  static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
>  {
> -	struct p9_fid *fid = file->private_data;
> +	struct inode *inode = file_inode(file);
> +	struct v9fs_inode *v9inode = V9FS_I(inode);
> +	struct p9_fid *fid = v9inode->writeback_fid;
> +

Sorry for mails back-to-back (grmbl I hate git commit --amend not
warning I only have unstaged changes), this is missing the following
here:

+    /* If there is no writeback fid this file only ever has had
+     * read-only opens, so we can use file's fid which should
+     * always be set instead */
+    if (!fid)
+        fid = file->private_data;

Christian, you can find it here to test:
https://github.com/martinetd/linux/commit/a6e033c41cc9f0ec105f5d208b0a820118e2bda8

> +	BUG_ON(!fid);
>  
>  	p9_fid_get(fid);
>  	rreq->netfs_priv = fid;

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB80678E7B
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:44:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9I6-0007d4-3G;
	Tue, 24 Jan 2023 02:44:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pK9I3-0007cx-Ci
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HTS1ZbZA1TUADjld+raUJqmd4pxeyrVKtWHVtO56iNw=; b=RjhfnRO+w3T4ljeADuPDq4jrGt
 SZGqA9XAC84Lj0KYD94mDlIOc6z1JlZZx2cIBBmJZJXcOQB54aSdGHAzwRLAoQQugwlgn7RrzeugJ
 oY6QBXZ9NOD4QxsUjv70tVVjZiZOxUz42xYELfRViYfw5YnYzOlmyIntPOBdy6P2Mf7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HTS1ZbZA1TUADjld+raUJqmd4pxeyrVKtWHVtO56iNw=; b=L7o1az0BArvBjvfUN0Ucp53bGU
 mR2NBKXG5BzbUw8DTXdf8GcgTmVCVKCV/st7uTkbZmY1rIIN664ntZLYXgmXo1ZZSHtKauBikE7F2
 plu1RPPS4wTAoY1HvbUZDWAMUaTckleraEQRifHDs10Fal3akzSjtNJCq16bb+wIGOJM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK9Hy-00DvDT-In for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:44:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 83D2CC01E; Tue, 24 Jan 2023 03:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674528248; bh=HTS1ZbZA1TUADjld+raUJqmd4pxeyrVKtWHVtO56iNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F0RhzEZND/5LfsABCtWDR9xa5yhiK9tt1DKJQXleksWBvc6ywXFdBCTRbr2HrsH+b
 HKCY4DkKcoDz0FRh8mpcnsl1sHo+1jT5l/0vnc9KhF2Je0uL+dbmKBHaIdJCKryWrt
 1xL5ac8aLhmrMde6i/bPOZM1MA4Y0bWLfUP+guU5Bue5ZAUMIxUgf0jruFy3MNMEII
 eINNCfhSJzMdJ2U+fb2gVBaO7sMRGeQn9ueTAiuHHbyKO8SyuS01YBEZw2ofpeoid3
 KvjrduDcqbFSM3D27Y/rOvznSepcx3/RDjglWsD87pRtNhaTgG59x/Q4oJdl2FWyIx
 2KoOY3qjtJWnw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C1AD8C009;
 Tue, 24 Jan 2023 03:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1674528247; bh=HTS1ZbZA1TUADjld+raUJqmd4pxeyrVKtWHVtO56iNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aYX5LCOYgSENiFQRS/BnkaxgHeqU1ZlFISHHmmZavmJCJwIFNCTUy1l66kJaiBkhU
 SqcaPEdijGw98Dd9dmAUykYj/BeFZrz+O61dQbYZtMmoDLqFjH0uyzWyl6to4BlaCU
 pcp6ug6Wv8npzAANS/p/P4ZKmmlBUPzK+6MsYAQI8Zk1o6CJPGw7gpblEquCgr1Nsu
 n6lo8t1LDhJWNoi/YAMSvWVtUtkObpj4slGWFGXfdV+ZevBV0d87cxP6Yf3Ku5He0N
 0vus9nPMBAKZCdMPTsQPB31BodKxX7e1k3lF8TBQZx2z4WrIVvlg3XiLqrXyzsH2E/
 7Mh2T2UWwNiFg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ed1f598f;
 Tue, 24 Jan 2023 02:43:43 +0000 (UTC)
Date: Tue, 24 Jan 2023 11:43:28 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Message-ID: <Y89F0KGdEBcwu39Y@codewreck.org>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-4-evanhensbergen@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221218232217.1713283-4-evanhensbergen@icloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sun, Dec 18, 2022 at 11:22:13PM
 +0000: > We had 3 different sets of file operations across 2 different
 protocol
 > variants differentiated by cache which really only change [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pK9Hy-00DvDT-In
Subject: Re: [V9fs-developer] [PATCH v2 03/10] Consolidate file operations
 and add readahead and writeback
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sun, Dec 18, 2022 at 11:22:13PM +0000:
> We had 3 different sets of file operations across 2 different protocol
> variants differentiated by cache which really only changed 3
> functions.  But the real problem is that certain file modes, mount
> options, and other factors weren't being considered when we
> decided whether or not to use caches.
> 
> This consolidates all the operations and switches
> to conditionals within a common set to decide whether or not
> to do different aspects of caching.
> 
> Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> ---
>  fs/9p/v9fs.c           |  30 ++++------
>  fs/9p/v9fs.h           |   2 +
>  fs/9p/v9fs_vfs.h       |   4 --
>  fs/9p/vfs_dir.c        |   9 +++
>  fs/9p/vfs_file.c       | 123 +++++++----------------------------------
>  fs/9p/vfs_inode.c      |  31 ++++-------
>  fs/9p/vfs_inode_dotl.c |  19 ++++++-
>  7 files changed, 71 insertions(+), 147 deletions(-)
> 
> diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> index 1675a196c2ba..536769cdf7c8 100644
> --- a/fs/9p/vfs_dir.c
> +++ b/fs/9p/vfs_dir.c
> @@ -214,6 +214,15 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
>  	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
>  		 inode, filp, fid ? fid->fid : -1);
>  	if (fid) {
> +		if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE)) {

dir release, but the fid is of type regular file ?

Either way this doesn't look directly related to cache level
consodilations, probably better in another commit.

> +			int retval = file_write_and_wait_range(filp, 0, -1);
> +
> +			if (retval != 0) {
> +				p9_debug(P9_DEBUG_ERROR,
> +					"trying to flush filp %p failed with error code %d\n",
> +					filp, retval);
> +			}
> +		}
>  		spin_lock(&inode->i_lock);
>  		hlist_del(&fid->ilist);
>  		spin_unlock(&inode->i_lock);
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

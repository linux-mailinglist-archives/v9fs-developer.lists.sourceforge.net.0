Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F9E3F34C2
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 21:46:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mHASs-0000Qu-G1; Fri, 20 Aug 2021 19:46:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1mHASq-0000Qm-Oe
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 19:46:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/44eN0Pzrhkw1zLuLGiBbWdwM698m7o++gY4gOG1oW8=; b=ZPuqQ4YSz8PmiwSyhnAPMRKq7
 xLlzJwg0Mp8ZNG+B8qq6wz4gu4cZG84i/UPCTcGK9ThkitSroyZRHYk4J5QzR9wjQzGfcbZ/mOxGV
 y4o5EyCceOp7wgiA1tZbbIR5JcVbYyuIhsmg8gWxUwZtsL6OQh9FmB43ajBTEUdRsVJU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/44eN0Pzrhkw1zLuLGiBbWdwM698m7o++gY4gOG1oW8=; b=M7QvcEBGzPzMOtLRzEwbhqyUxF
 qVJNenDYU4P33PgqE5zK5LsXSqoRjLHrD6vJFq8PbwU7qaPXnNxPgQisen4P8W0FkGh9O0pGdidpz
 /alLCDvdP1OoWHZsaAUj3Q8ExwKdvVtO5YVE4m+Ln4PNgFxIJ+mzgNSv7dbZpUcMAcss=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mHASo-0001Dl-L0
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 19:46:04 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mHASE-00ESrA-C0; Fri, 20 Aug 2021 19:45:26 +0000
Date: Fri, 20 Aug 2021 19:45:26 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <YSAGVsTOc/Fw0x8l@zeniv-ca.linux.org.uk>
References: <20210820163919.435135-1-jlayton@kernel.org>
 <20210820163919.435135-3-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210820163919.435135-3-jlayton@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mHASo-0001Dl-L0
Subject: Re: [V9fs-developer] [PATCH v3 2/2] fs: remove mandatory file
 locking support
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, david@redhat.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 cluster-devel@redhat.com, linux-mm@kvack.org, rostedt@goodmis.org,
 ebiederm@xmission.com, luto@kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, torvalds@linux-foundation.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Aug 20, 2021 at 12:39:19PM -0400, Jeff Layton wrote:

> diff --git a/fs/locks.c b/fs/locks.c

> @@ -2857,8 +2744,7 @@ static void lock_get_status(struct seq_file *f, struct file_lock *fl,
>  			seq_puts(f, "POSIX ");
>  
>  		seq_printf(f, " %s ",
> -			     (inode == NULL) ? "*NOINODE*" :
> -			     mandatory_lock(inode) ? "MANDATORY" : "ADVISORY ");
> +			     (inode == NULL) ? "*NOINODE*" : "ADVISORY ");

Huh?

<looks>
        if (fl->fl_file != NULL)
		inode = locks_inode(fl->fl_file);

So basically that's fl->fl_file ? "ADVISORY" : "*NOINODE*"?

How could that trigger, though?  With locks_mandatory_area() gone, I don't
see how FL_POSIX file_lock with NULL ->fl_file could be ever found...
Confused...

Why is locks_copy_conflock() exported (hell, non-static), BTW?

> diff --git a/fs/namespace.c b/fs/namespace.c


> -#ifdef	CONFIG_MANDATORY_FILE_LOCKING
> -static bool may_mandlock(void)
> +static void warn_mandlock(void)
>  {
> -	pr_warn_once("======================================================\n"
> -		     "WARNING: the mand mount option is being deprecated and\n"
> -		     "         will be removed in v5.15!\n"
> -		     "======================================================\n");
> -	return capable(CAP_SYS_ADMIN);
> +	pr_warn_once("=======================================================\n"
> +		     "WARNING: The mand mount option has been deprecated and\n"
> +		     "         and is ignored by this kernel. Remove the mand\n"
> +		     "         option from the mount to silence this warning.\n"
> +		     "=======================================================\n");
>  }
> -#else
> -static inline bool may_mandlock(void)
> -{
> -	pr_warn("VFS: \"mand\" mount option not supported");
> -	return false;
> -}
> -#endif

Is there any point in having the previous patch not folded into this one?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B937C3F597F
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 09:56:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIRHu-0000ko-7w; Tue, 24 Aug 2021 07:56:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mIRHs-0000kV-3r
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 07:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HY+s8dAWtBVC1NQcYR31Db/d1oIyDMY7BPmWngYbVZ0=; b=XLeEXOCxTaYRvW6LvsEB7igNq1
 IsDnpWqeGs+WkbLWyW0oo3qlCXWGY5kpgMIQ6Ol7W5VBf4RMD6efAftROhUv+/TpCJbKIossIixn1
 /aRAGmITQbPh8LMTFZmLBD04Xv1+CawogojW7wiPDUhsKbm/eWxx+f8WjdbL8nXbtisE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HY+s8dAWtBVC1NQcYR31Db/d1oIyDMY7BPmWngYbVZ0=; b=WtXW4IYfY2EWOWc5c0H9rWSCvs
 tVW/NNClV3ii8JiPM7oJaFaixfmkw/hzOUzWe9vwD548UHSpVU4DYrUDfivfJ1s79XsJgVfbw2IGn
 FYQjM/HcZCqpVD0pNvtmkjYepzHOnQ8sd0PNXZLJucvScL67GaUM+DolAc1OEgRe2vOE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIRHm-00GcNq-IT
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 07:56:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F0C13C01D; Tue, 24 Aug 2021 09:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1629791747; bh=HY+s8dAWtBVC1NQcYR31Db/d1oIyDMY7BPmWngYbVZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCHk7DTc9TgFp+UtBGhBGE2SSbqxiBWU0OIcGXpSOHdD3phKTwoo9GwFHlGegKsea
 uSdSAM3T1R7JORiEt5+MCrBvBXkFS/49X0D2MSf1c9QNX0SpgyKVzcLxmtuKVIZLNA
 11lpLBUP1h85rEfJ7tyj3IOheUfcSwP474Gn8xTqdmx7JxlcnR8D0DkvGCxUgvNDkC
 gynUwSg9RucO3rJsdMIp60z3D07h7vQp4nFuXVedVnfH3W5SXDe/CjodIle9jjUWMd
 jwVxE5HK5quUivANIBgEaqQHTQseL/88TagkMGhekM7d+Tb/98F2auHmbi7zesoOAZ
 g4iLpGZRfaiAg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AA486C009;
 Tue, 24 Aug 2021 09:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1629791738; bh=HY+s8dAWtBVC1NQcYR31Db/d1oIyDMY7BPmWngYbVZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qfYtPwxvKrGTs41RMrmtnBWOMZe3VubriCrlVblZYLf+zwBFoEX5HSgjAmVpob2V0
 1WdavT3SqhOEh7njThH4OJngu9BXo6bgt2mJCklinf6GXejcemnAX8iS+yuxp0XZrc
 Qb04bhVA5vdxNKb3tyjpYTj2YMvCfWvOPsvZdfO+BBgcfMom5FdbP/1J9YIl9CFRhM
 ylQdYdH76bZNgFgp3qvw4VVMlzIjV9ovhAT4U63JZcdJompvSHHJNYJuVT0qFxMZMU
 YjCS8yM/92dvCwayGijpguNQxVkdbkBQWWlgEt6tTovqn7IlHq0C4hmWWn/WP5t/sl
 ziwNQ8GrVrCQQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cce5ff41;
 Tue, 24 Aug 2021 07:55:29 +0000 (UTC)
Date: Tue, 24 Aug 2021 16:55:14 +0900
From: asmadeus@codewreck.org
To: cgel.zte@gmail.com, Jeff Layton <jlayton@kernel.org>
Message-ID: <YSSl4tPGeowannmy@codewreck.org>
References: <20210824074503.62333-1-ran.xiaokai@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210824074503.62333-1-ran.xiaokai@zte.com.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cgel.zte@gmail.com wrote on Tue, Aug 24, 2021 at 12:45:03AM
 -0700: > From: CGEL <ran.xiaokai@zte.com.cn> > > due to commit 798b2ae3cd58
 ("Merge remote-tracking branch > 'file-locks/locks-next'"), labe [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mIRHm-00GcNq-IT
Subject: Re: [V9fs-developer] [PATCH] fs: 9q: remove unnecessary label
 "out_err"
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
Cc: lucho@ionkov.net, ericvh@gmail.com, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, ran.xiaokai@zte.com.cn,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cgel.zte@gmail.com wrote on Tue, Aug 24, 2021 at 12:45:03AM -0700:
> From: CGEL <ran.xiaokai@zte.com.cn>
> 
> due to commit 798b2ae3cd58 ("Merge remote-tracking branch
> 'file-locks/locks-next'"), label "out_err" should be removed to
> avoid build warning.

That commit is not in master (it's a linux-next commit), you cannot
refer to a commit id that hasn't been merged in commit messages.
Also given it's a trivial merge commit so please take a minute to find
the real culprit (fs: remove mandatory file locking support) next time.


Given it's not merged yet, Jeff can still fix his patch in his branch,
I've added him to recipients -- can you remove the label?
I've never used mandatory file locking myself so I'll admit I didn't
really look at your patch the other day...

> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: CGEL <ran.xiaokai@zte.com.cn>
> ---
>  fs/9p/vfs_file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 978666530d8e..d2d83163d6b0 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -319,7 +319,7 @@ static int v9fs_file_lock_dotl(struct file *filp, int cmd, struct file_lock *fl)
>  		ret = v9fs_file_getlock(filp, fl);
>  	else
>  		ret = -EINVAL;
> -out_err:
> +
>  	return ret;
>  }

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

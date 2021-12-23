Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B86D47E9A3
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Dec 2021 00:14:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0XIM-0000Nb-2Y; Thu, 23 Dec 2021 23:14:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n0XIK-0000NV-4R
 for v9fs-developer@lists.sourceforge.net; Thu, 23 Dec 2021 23:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y91BeSmqGXr/+UBmcINrbASkr4x2UMrRV+bdI+j5fFc=; b=PAR0Oe7VTjcusPXCcYozluy9ml
 o2Z3Xsb9bZbJBCO1MdnFxWDymoXjJXjUEmkrghU8YyaoEVmTuKGjYo0JH8t+UKrzgDKiwF7/XzDOH
 h/7OEN4pFbiIOY8GEg9Bfksrq0Jdd53cOCH3tUmtT+2E5JIgrAt9R8Df08wAxTyIoSGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y91BeSmqGXr/+UBmcINrbASkr4x2UMrRV+bdI+j5fFc=; b=d0LmpR1MvzkdYivnAkB1HFwB/w
 ZYaiQ5HZA9ZQYLkFnFUeKf0w3r3EruCSzpJfE+KydF0NbSAiBDKQ0Eewi/HInFcYoqsrUI3lngNr0
 g/kwYfNZV/TBeTko+m31BeMziiwJA7+gfrx/z5oknZwmsEdhRuwADAs5WMiV9/KBp8i0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0XI8-0004SP-QZ
 for v9fs-developer@lists.sourceforge.net; Thu, 23 Dec 2021 23:14:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0ACA6C01D; Fri, 24 Dec 2021 00:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640301266; bh=y91BeSmqGXr/+UBmcINrbASkr4x2UMrRV+bdI+j5fFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LVwoFtUEcuEuxTZX15shM7NJMHNT0xZqv+vLhRYzFbUQZ5IWfz6wxNzsGpeLNDaUW
 9p3IvncTlC0Qc09mmC5oYERPjEvxf8zhJokGOudi72aSCupaI4G/40xnT0BvaSIfqg
 d+hpiO+LpCCf2rlsnCLc1kkhTkjk9Vbtg57Ibed0MWgk/lO9xieX+pnAdascddL7fN
 EGxEMaTwtTWlFeQaGvIIDqtxO0LTfUtpFyeqT+kcL8HfrHctQu7+DBsPdVXul9bYSD
 H63D3Y8mGcuEOyAqRxG3r66vu92IbC68sb3xoAkr4Svhp45SgaHuNPNIjGNHODC3WN
 ng3nRS00ZI+TQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 69FA7C009;
 Fri, 24 Dec 2021 00:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640301265; bh=y91BeSmqGXr/+UBmcINrbASkr4x2UMrRV+bdI+j5fFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wCvcN9EswgESruSc1khcij7KfrOQyVmyJ+s//wERoiXWzsMHCyYp2DnMGInInAAcr
 fuG0LdJTkClpNhhPLA1HAZyXMKDYeJ2HGiNS2GSVBnga/LzutqzVrc2piszXmODC8x
 /roXEf6eMiiDZbICX+AlSjQkog9aOVGsBFQhdFqw6JRjCp433V0ysyL6i4EQGd65lu
 39Yoq4SAkk8pJLuxkJHkiMGM0PITmKU2AhFWymgvCGXRx/fNP++Syx1zI+f6AshOfs
 dpjaPE9d1DDdxTO095XE4KmobN2aBClWSlSRRPxoZYhQc2WNnV9wED92rYgPc9NzMs
 THHalMNmAFOBw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b7d8b844;
 Thu, 23 Dec 2021 23:14:20 +0000 (UTC)
Date: Fri, 24 Dec 2021 08:14:05 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <YcUCvUF10TKg2wDI@codewreck.org>
References: <076a9ce6-ae06-5b3e-f577-d993e55089f1@virtuozzo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <076a9ce6-ae06-5b3e-f577-d993e55089f1@virtuozzo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Vasily Averin wrote on Thu, Dec 23, 2021 at 09:21:23PM +0300:
 > kernel export thread (nfsd/lockd/ksmbd) uses F_SETLK cmd with the FL_SLEEP
 > flag set to request asynchronous processing of blocking loc [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n0XI8-0004SP-QZ
Subject: Re: [V9fs-developer] [PATCH] v9fs: handle async processing of
 F_SETLK with FL_SLEEP flag
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
 kernel@openvz.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vasily Averin wrote on Thu, Dec 23, 2021 at 09:21:23PM +0300:
> kernel export thread (nfsd/lockd/ksmbd) uses F_SETLK cmd with the FL_SLEEP
> flag set to request asynchronous processing of blocking locks.
> 
> Currently v9fs does not support such requests and calls blocking
> locks_lock_file_wait() function.

There's two stages to 9p locks: the client first tries to get the lock
locally on the client, then if it was obtained locally also tries to get
it on the server.
I believe the servers should just ignores flags like FL_SLEEP they don't
know about, so we need to translate it as well if required.

> To work around the problem let's detect such request, drop FL_SLEEP
> before execution of potentially blocking functions.

I'm not up to date with lock mechanisms, could you confirm I understand
the flags right?
- F_SETLK: tries to lock, on conflict return immediately with error
- F_SETLKW|FL_SLEEP: tries to lock, on conflict wait for lock to become available
- F_SETLKW: not possible through flock/fcntl setlk, can happen otherwise?
but for 9p purpose same as above.
- F_SETLK|FL_SLEEP: tries to lock, on conflict ????? you'd want it to
return immediately but setup some callback to be woken up? how could
that work without passing some wake up struct? or just behave as plain
F_SETLK? but then FL_SLEEP has no purpose, I don't get it.


> 
> Dropped FL_SLEEP flag should be restored back because some calling
> function (nfsd4_lock) require it.
> 
> https://bugzilla.kernel.org/show_bug.cgi?id=215383
> Signed-off-by: Vasily Averin <vvs@virtuozzo.com>
> ---
>  fs/9p/vfs_file.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 612e297f3763..81c98afdbb32 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -135,6 +135,7 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>  	int res = 0;
>  	unsigned char fl_type;
>  	struct v9fs_session_info *v9ses;
> +	bool async = false;
>  
>  	fid = filp->private_data;
>  	BUG_ON(fid == NULL);
> @@ -142,6 +143,10 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>  	if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
>  		BUG();
>  
> +	async = (fl->fl_flags & FL_SLEEP) && IS_SETLK(cmd);
> +	if (async)
> +		fl->fl_flags &= ~FL_SLEEP;
> +

So clearing the flag makes the local lock not wait at all in case of
SETLK|FL_SLEEP, and this errors instead.

I can't comment on this without understanding what's expected better

>  	res = locks_lock_file_wait(filp, fl);
>  	if (res < 0)
>  		goto out;
> @@ -230,6 +235,8 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>  	if (flock.client_id != fid->clnt->name)
>  		kfree(flock.client_id);
>  out:
> +	if (async)
> +		fl->fl_flags |= FL_SLEEP;
>  	return res;
>  }
>  

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

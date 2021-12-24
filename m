Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994F47EFB4
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Dec 2021 15:57:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0m0A-0004Ao-Af; Fri, 24 Dec 2021 14:56:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n0m08-0004AQ-9T
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 14:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nEVxjBgIHnPIs5D5WENJIX174TMUU1r26CncUlg8waU=; b=JbXXAwJE48lDx1uQK2DqV6LFyS
 g6p26rxB0qVA4FikSmTgrtmdwUQ30GQnM/X5SYpNA+YWHe1pkrsL/yc3RPsFgdBTm3QBkIg4ujuth
 tXRtwEj3jKxdJWV12wBOZlMxO2MWuGUU3foKlSOy6bfA0wJRFfUGaqG6V9DvQsVgYGPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nEVxjBgIHnPIs5D5WENJIX174TMUU1r26CncUlg8waU=; b=n
 Jkjc/4GKd8EwIARHt1VggcBfXGVWkTgL3IxTFk9sZ+4tFrUWRiPr/I+89Lule6hOYQf4y68mMjZrH
 /UC5jmRc8gCTcIRDz8gs4U4pMRoj5fBAKvF12+nW/4O2/0BLhRB75jbYjUZ8XDjOvtJSsB2fDYDRQ
 uK/UeXMhNDj8VaaA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0m08-008DvQ-AT
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 14:56:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C3A6FC01F; Fri, 24 Dec 2021 15:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640357809; bh=nEVxjBgIHnPIs5D5WENJIX174TMUU1r26CncUlg8waU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fQuCefnHECg5/uop9AlUMr/9Le4MvFka3+vpKv1wR178qIr6yRXmz35ydWyfFRPEe
 R4ujOz7cefSC33v8WLiLZ8E+OUyLOwYF6nY2EETaRl8gJ3+uxPDfaNOmetGWm9flau
 LE+aelkRPs6kYBC9TDavnHOBrHypLQ9ZCO7EveQ8jE5imiMREXx+aw/RAkKBXZHVdS
 9FZk/RuzU7xHxJ4PHuT2TDHm1VxDte9Z4zWHVqMDfkcyuLmkpG1BtCNoXM6EyCv131
 N4nNZuxi9ere6NwAi2aRcb14csL+zKgtGup7Ta1W9FKm66OMtQqkwfguOAvbY8N8vH
 bEPFTne398stA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 89FDEC009;
 Fri, 24 Dec 2021 15:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640357808; bh=nEVxjBgIHnPIs5D5WENJIX174TMUU1r26CncUlg8waU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=iXdVzxOv6RsOKwb0c+tWtgI30V4NUm4Xl+LFOakJds0yN1JiKhWY/ibKyUZIWlMgc
 iJwn3CN8cHbRrsiNQj0BYYRG5Dx7qGbtOKfFpp9MmcYaA7hUPfHMtM0BLNGvqcaRec
 0wrj+cnGY0qMRIuCxu7HYDyTE9oR5ud0+4WlLUL/n6LwvsRmaP/ypvnzFX8Gj9b6fU
 0WugExpRXRNTiv5B7PCOq833WD/FbmTnQLL+R1nz853Pm0SAXhGuXv8m+DFd6E9r3T
 ivnXbrtvxKQ0rQeHfGZuIO375qg/cnnWwpIKB1sFeu7+jfAhd2eefPcgeLq60wKCwi
 h6xvOUUiLKK0Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8adb1ba1;
 Fri, 24 Dec 2021 14:56:42 +0000 (UTC)
Date: Fri, 24 Dec 2021 23:56:27 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <YcXfm6U/6+Xmv7be@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a979a5bc-f2bc-7035-beed-6a3919471d39@virtuozzo.com>
 <d0e10f8b-565c-3772-75df-5cc2d729ff8a@virtuozzo.com>
 <05ab1af5-9b5f-f505-2a68-c90f50a1fb46@virtuozzo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Vasily Averin wrote on Fri, Dec 24, 2021 at 01:18:54PM +0300:
 > > On the other hand, just clearing the FL_SLEEP flag like you've done for
 > > 9p will make the server think the lock has been queued whe [...] 
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
X-Headers-End: 1n0m08-008DvQ-AT
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, "J. Bruce Fields" <bfields@fieldses.org>,
 kernel@openvz.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vasily Averin wrote on Fri, Dec 24, 2021 at 01:18:54PM +0300:
> > On the other hand, just clearing the FL_SLEEP flag like you've done for
> > 9p will make the server think the lock has been queued when it hasn't
> > really been.
> > That means the client lock request will hang forever and never be
> > granted even when the lock becomes available later on, so unless I
> > misunderstood something here I don't think that's a reasonable fallback.
> 
> I did not get your this statement. Could you please elaborate it in more details?
> 
> Right now nfsd/lockd/ksmbd drop FL_SLEEP on own side, and this looks acceptable for them:
> instead of blocking lock they submit non-blocking SETLK and it's enough to avoid server deadlock. 
> 
> If the lock is already taken: SETLK just return an error and will not wait.
> I'm agree it isn't ideal, and perhaps  can cause server will return some unexpected errno,
> but I do not see how it can make the server think the lock has been queued.

Right, sorry I was still under the assumption that SETLK+sleep would
return error + enqueue something.
Reading again it must return FILE_LOCK_DEFERRED if enqueued, so the
server can make the difference, and we're "just" not respecting the
client's request to enqueue the lock as you say -- I guess that's
acceptable.

> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 612e297f3763..27ede4a4a6f4 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -142,10 +142,15 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>  	if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
>  		BUG();
>  
> -	res = locks_lock_file_wait(filp, fl);
> -	if (res < 0)
> -		goto out;
> -
> +	if ((fl->fl_flags & FL_SLEEP) && IS_SETLK(cmd)) {
> +		res = posix_lock_file(filp, fl, NULL);

Should we also check fl->fl_flags & (FL_POSIX|FL_FLOCK) like
locks_lock_file_wait does, to call either posix_lock_file or ... there
doesn't seem to be an exported flock_lock_file equivalent in the other
case, so back to wait variant there?
(or rephrasing the question, what happens if the lock is a FL_FLOCK lock
and we call posix_lock_file on it? Or are we guaranted that if FL_SLEEP
is set we're about posix locks?)

> +		if (res)
> +			goto out;
> +	} else {
> +		res = locks_lock_file_wait(filp, fl);
> +		if (res < 0)
> +			goto out;
> +	}
>  	/* convert posix lock to p9 tlock args */
>  	memset(&flock, 0, sizeof(flock));
>  	/* map the lock type */

Vasily Averin wrote on Fri, Dec 24, 2021 at 03:07:38PM +0300:
 > On 24.12.2021 10:31, Dominique Martinet wrote:
> > If that process is made asynchronous, we need a way to run more
> > 9p-specific code in that one's lm_grant callback, so we can proceed onto
> > the second step which is...
> > 
> >  - send the lock request to the 9p server and wait for its reply
> > (note that the current code is always synchronous here: even if you
> > request SETLK without the SLEEP flag you can be made to wait here.
> > I have work in the closest to make some requests asynchronous, so
> > locking could be made asynchronous when that lands, but my code
> > introduced a race somewhere I haven't had the time to fix so this
> > improvement will come later)
> > 
> > What would you suggest with that?
> 
> It isn't necessary to make request asynchronous,
> it's enough to avoid blocking locks.

Well, it depends on what you have in mind with blocking.
A synchronous RPC to some server which might never reply if it doesn't
feel like it (bug or whatever) is very much blocking in my opinion.

> As far as  I understand blocking does not happen for SETLK command,
> so it should be enough to chenge first part and call non-blocking 
> posix_file_lock() instead of blocking locks_lock_file_wait().
> 
> It would be great to make processing of 2nd part asynchronous too,
> but I think it looks like over-engineering, because we even are not
> 100% sure that someone really uses this functionality.

Yes, it will have to wait anyway, that asynchronous code has been
waiting for me to debug it for at least two years so it won't be ready
tomorrow... Let's start with what we can do; I'm happy with your
approach if it doesn't bring obvious problems.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

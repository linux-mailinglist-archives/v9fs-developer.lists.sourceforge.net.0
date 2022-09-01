Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6620D5A9B7E
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Sep 2022 17:23:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTm2l-0007xH-WF;
	Thu, 01 Sep 2022 15:23:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oTm2g-0007x9-VM
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 15:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jeq6rWkZ2saoR9mcZBGwOYdcBbjMoQ//DB9+YQR7Rqg=; b=dJK1ajqxrTZBd67iBvo0i2ukJU
 Z5AJBfRJGHx9UVG1qM9umIOZSa6gTRPCHcl8Xr2Yr0CPqBc2I+tEGfR8gIFsWp3FfsT9DYRlBr6U0
 xPfMYod2I9IQhHJkNhlFri6jYMPUPuw2OMk1ZtvkKeSVcLSicmwxNcXEcSq4uXbI8C8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jeq6rWkZ2saoR9mcZBGwOYdcBbjMoQ//DB9+YQR7Rqg=; b=LShJJacwzEuqJcE9f4gu3xJZ1a
 tJ43rY+YcSlirr5G3xaObJNeOvBXGs15bgJAwmj0SpQu3quFrXWclqb1QJPj6v8/SULXHxADDmg1/
 j516fe+zBkaqF6xjTA6d8oIXR4vXfuPOtlUT50ANUUSGBGdptxNLnLafHJ9dMVKdhiTA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTm2Y-0001a6-V3 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 15:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=jeq6rWkZ2saoR9mcZBGwOYdcBbjMoQ//DB9+YQR7Rqg=; b=p2i5WIONTAhUGlBzdebH2PuEF5
 RJR5+FUsS7DMNjuD8e1h5K5LQjGj6sqrU7yg9jIcTt19nCYGilXnK0/f/pdxk/l8xJKhppg4xNxgH
 +lPU0Rx9NFwK64F4Qc/f3q0GCYHeoPH5El88L6cXB5grEioUPGr1oTlN/mXke+cnliclTzf4Z/YsL
 bkAkRgIpqEckRqzGhnh4OxKteqkyfYCwSkdswtZZ0gbPW03rS5f9L6iFRkzSi79jvzQpezNzYsI6A
 NxNQIbmkwFdcp5gp39PSPsYd+EjrfbKbOr9IGm27/bVbCIFaNAsPk60mDXQMuttdQasRkUbBrjzly
 PGfia/JaeiXDtsIzGvyl8rpAJYvPGAGFd95vG+DpLGC1vfcn0yzFrJkdeCl2e7PPwxeIXNTyJIqAQ
 n1BS3ai6xWfKxUf6Dn5uWKrTbM4crbTZ2QAcpEAmkUq3O4F1qKPAsiDHrol1if9c+k4yveLgTwrsc
 CHNSNEPp1/jkvWScJD4CpfoB/PrWZ/j1u73f1c8lycSqiYXjwoH3hQZAcknSEIwL0pOQJfUDSiFbX
 Ajn5rQghLkjshvFzoZvNrE+PDONi6Ppj+7ty2fuV7KR3VMGrr9/V8fkd34POjFd3qU0/WDO2lWLkJ
 62HZKfVzDiKSN1S8xy+f2irxf+1rAM0xR+4daXU5Q=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Date: Thu, 01 Sep 2022 17:23:12 +0200
Message-ID: <69253379.JACLdFHAbQ@silver>
In-Reply-To: <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
References: <00000000000039af4d05915a9f56@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4293faaf-8279-77e2-8b1a-aff765416980@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 27. August 2022 08:11:48 CEST Tetsuo Handa wrote:
 > syzbot is reporting hung task at p9_fd_close() [1], for p9_mux_poll_stop()
 > from p9_conn_destroy() from p9_fd_close() is failing to int [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oTm2Y-0001a6-V3
Subject: Re: [V9fs-developer] [PATCH v2] 9p/trans_fd: perform read/write
 with TIF_SIGPENDING set
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 27. August 2022 08:11:48 CEST Tetsuo Handa wrote:
> syzbot is reporting hung task at p9_fd_close() [1], for p9_mux_poll_stop()
>  from p9_conn_destroy() from p9_fd_close() is failing to interrupt already
> started kernel_read() from p9_fd_read() from p9_read_work() and/or
> kernel_write() from p9_fd_write() from p9_write_work() requests.
> 
> Since p9_socket_open() sets O_NONBLOCK flag, p9_mux_poll_stop() does not
> need to interrupt kernel_{read,write}(). However, since p9_fd_open() does
> not set O_NONBLOCK flag, but pipe blocks unless signal is pending,
> p9_mux_poll_stop() needs to interrupt kernel_{read,write}() when the file
> descriptor refers to a pipe. In other words, pipe file descriptor needs
> to be handled as if socket file descriptor. We somehow need to interrupt
> kernel_{read,write}() on pipes.
> 
> If we can tolerate "possibility of breaking userspace program by setting
> O_NONBLOCK flag on userspace-supplied file descriptors" and "possibility
> of race window that userspace program clears O_NONBLOCK flag between after
> automatically setting O_NONBLOCK flag and before calling
> kernel_{read,write}()", we could automatically set O_NONBLOCK flag
> immediately before calling kernel_{read,write}().
> 
> A different approach, which this patch is doing, is to surround
> kernel_{read,write}() with set_thread_flag(TIF_SIGPENDING) and
> recalc_sigpending(). This might be ugly and bit costly, but does not
> touch userspace-supplied file descriptors.

So the intention in this alternative approach is to allow user space apps  
still being able to perform blocking I/O, while at the same time making the 
kernel thread interruptible to fix this hung task issue, correct?

> Link: https://syzkaller.appspot.com/bug?extid=8b41a1365f1106fd0f33 [1]
> Reported-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Tested-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
> ---
> Although syzbot tested that this patch solves hung task problem, syzbot
> cannot verify that this patch will not break functionality of p9 users.
> Please test before applying this patch.
> 
>  net/9p/trans_fd.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index e758978b44be..e2f4e3245a80 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -256,11 +256,13 @@ static int p9_fd_read(struct p9_client *client, void
> *v, int len) if (!ts)
>  		return -EREMOTEIO;
> 
> -	if (!(ts->rd->f_flags & O_NONBLOCK))
> -		p9_debug(P9_DEBUG_ERROR, "blocking read ...\n");
> -
>  	pos = ts->rd->f_pos;
> +	/* Force non-blocking read() even without O_NONBLOCK. */
> +	set_thread_flag(TIF_SIGPENDING);
>  	ret = kernel_read(ts->rd, v, len, &pos);
> +	spin_lock_irq(&current->sighand->siglock);
> +	recalc_sigpending();
> +	spin_unlock_irq(&current->sighand->siglock);

Is the recalc_sigpending() block here actually needed? The TIF_SIGPENDING flag 
is already cleared by net/9p/client.c, no?

>  	if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
>  		client->status = Disconnected;
>  	return ret;
> @@ -423,10 +425,12 @@ static int p9_fd_write(struct p9_client *client, void
> *v, int len) if (!ts)
>  		return -EREMOTEIO;
> 
> -	if (!(ts->wr->f_flags & O_NONBLOCK))
> -		p9_debug(P9_DEBUG_ERROR, "blocking write ...\n");
> -
> +	/* Force non-blocking write() even without O_NONBLOCK. */
> +	set_thread_flag(TIF_SIGPENDING);
>  	ret = kernel_write(ts->wr, v, len, &ts->wr->f_pos);
> +	spin_lock_irq(&current->sighand->siglock);
> +	recalc_sigpending();
> +	spin_unlock_irq(&current->sighand->siglock);
>  	if (ret <= 0 && ret != -ERESTARTSYS && ret != -EAGAIN)
>  		client->status = Disconnected;
>  	return ret;




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

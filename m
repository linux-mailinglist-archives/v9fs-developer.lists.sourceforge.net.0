Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A055F6A19
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Oct 2022 16:56:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogSIm-00045O-NY;
	Thu, 06 Oct 2022 14:56:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ogSIk-00045H-I7
 for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 14:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZMNLSUf6Qyu+KAvj19SIjC94yMD3cu4FuP71CCwikco=; b=LcxnMOwebdvsBxFn98diZGB9zU
 ytskHhpLVE4BVrRVaiicoW+51CBRK2b3gMUIuqHVnNleSKl2u7BY9N+qCyoZ9Rhk0EZn3yK90owtB
 UQJeaMYUbMMLAM0/nW+jPh8o4fA5VsixYvv+HbeM5t1ohS6QCNG7JxOeIsnY5MupS760=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZMNLSUf6Qyu+KAvj19SIjC94yMD3cu4FuP71CCwikco=; b=b6N6MpptWjMDgbKvCaeF5LEOht
 jJiJhLnIs1Yfp24iLI/3yXZa5e+fpZcd5/9e7abb2JK1k7SQcjDZtrHi88V25huUBCmR6Sixs6M6k
 rM0pxE6hIBDVahwVf9NEohoK6RRKeLbxzY1JTNzYPmT5pkCqsGPKd0X2tGwNIJ0x5uiM=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogSIV-0005tq-48 for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 14:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=ZMNLSUf6Qyu+KAvj19SIjC94yMD3cu4FuP71CCwikco=; b=apay3AV+e6EflvSpAGN7446iGx
 Bx9yWzyD+DGQAT+uEgfm0r+HGI83ma3jW3qE21NDREDulKXM6NCasNtG+1sWcOOWgXaEerqR49wtm
 HlPJopd0gfUEq09TEjT5Pgj8+7ndP3aBhKZzg3fGY6i0XaNmdt6i7mlPzL25tdjZIKXnNWf45XUyS
 +fp2+mCr8EV38pbzD7+uqswIfgrbeu9xDUhqJtJjOCyTv5obWbN2cDA+1pa0ZxlYqc7x0DRP0m/HK
 dWvpCdtU72MvQOMg5P5L5ucqgooiVQ7BGlkBj37mU6SN0L62EWim/0ELgqc3mTy1zSjrH6Qa8d1tg
 porQub+l5qd9vUOUuSll3cGolp3so4sanafaeaUqA72ECjMRh9m4OOqzWInnn0qsYZmfeA7ef4Ivq
 YY9bUcKuFA0rD2aWMVD6sUK7nUgs5yfm+1JEp1ofZUKVUKC9O+kkaWox8MJHAVSYaMQ6Lo6wEzapt
 Nfu5uZozaS44n/GsLFx7ZFgGC9SxT+CHRVld5bE3PIRxdgZqcFIZBJ229bALobHRoXIzNABIdlD/7
 GvapyEl61a0ogg41frsE48tOijaYVep1bIiYgKT9hZiaCGZ9zaSYIcrNuQnIP779GUqCRsl+TGz2M
 6UZevLjAGMBdqb6y8fuGxPMmwlY5c2u5dJFPBE8jM=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Date: Thu, 06 Oct 2022 16:55:23 +0200
Message-ID: <4870107.4IDB3aycit@silver>
In-Reply-To: <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
References: <00000000000039af4d05915a9f56@google.com>
 <000000000000c1d3ca0593128b24@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 26. August 2022 17:27:46 CEST Tetsuo Handa wrote:
 > syzbot is reporting hung task at p9_fd_close() [1], for p9_mux_poll_stop()
 > from p9_conn_destroy() from p9_fd_close() is failing to int [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ogSIV-0005tq-48
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_fd: always use O_NONBLOCK
 read/write
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 26. August 2022 17:27:46 CEST Tetsuo Handa wrote:
> syzbot is reporting hung task at p9_fd_close() [1], for p9_mux_poll_stop()
>  from p9_conn_destroy() from p9_fd_close() is failing to interrupt already
> started kernel_read() from p9_fd_read() from p9_read_work() and/or
> kernel_write() from p9_fd_write() from p9_write_work() requests.
> 
> Since p9_socket_open() sets O_NONBLOCK flag, p9_mux_poll_stop() does not
> need to interrupt kernel_read()/kernel_write(). However, since p9_fd_open()
> does not set O_NONBLOCK flag, but pipe blocks unless signal is pending,
> p9_mux_poll_stop() needs to interrupt kernel_read()/kernel_write() when
> the file descriptor refers to a pipe. In other words, pipe file descriptor
> needs to be handled as if socket file descriptor.
> 
> We somehow need to interrupt kernel_read()/kernel_write() on pipes.
> 
> A minimal change, which this patch is doing, is to set O_NONBLOCK flag
>  from p9_fd_open(), for O_NONBLOCK flag does not affect reading/writing
> of regular files. But this approach changes O_NONBLOCK flag on userspace-
> supplied file descriptors (which might break userspace programs), and
> O_NONBLOCK flag could be changed by userspace. It would be possible to set
> O_NONBLOCK flag every time p9_fd_read()/p9_fd_write() is invoked, but still
> remains small race window for clearing O_NONBLOCK flag.
> 
> If we don't want to manipulate O_NONBLOCK flag, we might be able to
> surround kernel_read()/kernel_write() with set_thread_flag(TIF_SIGPENDING)
> and recalc_sigpending(). Since p9_read_work()/p9_write_work() works are
> processed by kernel threads which process global system_wq workqueue,
> signals could not be delivered from remote threads when p9_mux_poll_stop()
>  from p9_conn_destroy() from p9_fd_close() is called. Therefore, calling
> set_thread_flag(TIF_SIGPENDING)/recalc_sigpending() every time would be
> needed if we count on signals for making kernel_read()/kernel_write()
> non-blocking.
> 
> Link: https://syzkaller.appspot.com/bug?extid=8b41a1365f1106fd0f33 [1]
> Reported-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Tested-by: syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>
> ---
> Although syzbot tested that this patch solves hung task problem, syzbot
> cannot verify that this patch will not break functionality of p9 users.
> Please test before applying this patch.
> 
>  net/9p/trans_fd.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

I would also prefer this simpler v1 instead of v2 for now. One nitpicking ...

> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index e758978b44be..9870597da583 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -821,11 +821,13 @@ static int p9_fd_open(struct p9_client *client, int
> rfd, int wfd) goto out_free_ts;
>  	if (!(ts->rd->f_mode & FMODE_READ))
>  		goto out_put_rd;
> +	ts->rd->f_flags |= O_NONBLOCK;

... I think this deserves a short comment like:

    /* prevent hung task with pipes */

Anyway,

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  	ts->wr = fget(wfd);
>  	if (!ts->wr)
>  		goto out_put_rd;
>  	if (!(ts->wr->f_mode & FMODE_WRITE))
>  		goto out_put_wr;
> +	ts->wr->f_flags |= O_NONBLOCK;
> 
>  	client->trans = ts;
>  	client->status = Connected;





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

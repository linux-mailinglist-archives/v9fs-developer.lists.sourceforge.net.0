Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A23DD624295
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Nov 2022 13:53:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ot73G-00007g-9x;
	Thu, 10 Nov 2022 12:53:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ot72z-00006y-6i
 for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Nov 2022 12:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uE7Ck4EtYBz/wcXrSLHMyRkTqmg+wCFbqyStElQkJpw=; b=V3FRCoppHoPua384DjZhXnpaE7
 OVtkuFXUBoztSTNQz8j4O0rOPaGk+vVT0BdvX0YS0/jl79xmQxVtH4uclb28dRcVKASdoyu7MAEEw
 +weSt+ZTVizqXuRQJThhq/705MzAj3yvdbUc5jVJl6On6wyEV5XJssXzlQlAb0Bhat3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uE7Ck4EtYBz/wcXrSLHMyRkTqmg+wCFbqyStElQkJpw=; b=BxrMcsbv7l65PdgnWjlDwLdZZa
 Xl1o4lwsy+TeD2FH75+1W/+N0ZQ4G0D5ImKuiOOAYzLuxK/K/Eap6v3ItmfK2D80RjeflzUSiPD1A
 koYaKkABKmBvLD2YZSDnYzRlLDpOysczeuSYpG4SUfAAgRNEcNnXcNijuSdz5HfE5SVw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ot72Q-0002uo-31 for v9fs-developer@lists.sourceforge.net;
 Thu, 10 Nov 2022 12:52:32 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D67C6C020; Thu, 10 Nov 2022 13:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668084725; bh=uE7Ck4EtYBz/wcXrSLHMyRkTqmg+wCFbqyStElQkJpw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DOBidv1zZjavZ1xKt/CqcraiR/oFwo4hY5x8bCXq1CYnjL695unPSsvabIF491znP
 /uS6noFHqfTs5oyESAgQ6fF4/ukY5k8WfB2r0NCiUwvmqiL7oKJ2auEJrjIDDU4NdZ
 h5/tyLSBSsao4Gh0pKw0s0E2yl479QMsHjWqo4atHhaYqsEND9LoXG49f7oDUBjwQi
 Apd11Ex+NdNxC9KXPSEGy7LuVUKdTQI4urHQs5LB3dztIym9/NSFg5QT3ukv742V27
 K6/UsSM8JoJwaItBxnTahYBVMg2bUeZtkkcKW7KOz2lp2IDnPXfDOc69vgRzqXzaQc
 LmjltUUQM7m6A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 57AFDC009;
 Thu, 10 Nov 2022 13:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668084724; bh=uE7Ck4EtYBz/wcXrSLHMyRkTqmg+wCFbqyStElQkJpw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iij8LtkZUcZ4zL35dEe3fl1s5cnDEkkSGg0U1oTfEuizmq8QWcj+w5pyXchNi3ZdZ
 xNxCtTriu8go6xqmeQICH9/fL3eYzZBtT5RBzZi9Gb+ULne6RleotS+Sfao2B4YdjA
 L+32mToJPJEtL9KWD9PL+HVcdUhOGcKp/FPb3SlYtVousP0+oAfgMz+bP0BmLkCawm
 69xXnxt1LSUZJdl7TwZGXdsfbR3jJPYdV0dwV75vIm4GjAocHTlVBqr1EA9zrBkIPE
 HTj8nktxsnUV7gSvAlg5FrdW6BHndJ2SIMHESfkvOighn5AnLrfL+9sY1DOpA6yviE
 9JTBEfskUhl0g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id aa0808b5;
 Thu, 10 Nov 2022 12:51:54 +0000 (UTC)
Date: Thu, 10 Nov 2022 21:51:39 +0900
From: asmadeus@codewreck.org
To: Zhengchao Shao <shaozhengchao@huawei.com>
Message-ID: <Y2zz24jRIo9DdWw7@codewreck.org>
References: <20221110122606.383352-1-shaozhengchao@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110122606.383352-1-shaozhengchao@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Zhengchao Shao wrote on Thu, Nov 10,
 2022 at 08:26:06PM +0800:
 > Syz reported the following issue: > kernel BUG at lib/list_debug.c:53!
 > invalid opcode: 0000 [#1] PREEMPT SMP KASAN > RIP: 0010:__list [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ot72Q-0002uo-31
Subject: Re: [V9fs-developer] [PATCH net] net/9p: fix issue of list_del
 corruption in p9_fd_cancel()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, edumazet@google.com,
 weiyongjun1@huawei.com, kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 pabeni@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zhengchao Shao wrote on Thu, Nov 10, 2022 at 08:26:06PM +0800:
> Syz reported the following issue:
> kernel BUG at lib/list_debug.c:53!
> invalid opcode: 0000 [#1] PREEMPT SMP KASAN
> RIP: 0010:__list_del_entry_valid.cold+0x5c/0x72
> Call Trace:
> <TASK>
> p9_fd_cancel+0xb1/0x270
> p9_client_rpc+0x8ea/0xba0
> p9_client_create+0x9c0/0xed0
> v9fs_session_init+0x1e0/0x1620
> v9fs_mount+0xba/0xb80
> legacy_get_tree+0x103/0x200
> vfs_get_tree+0x89/0x2d0
> path_mount+0x4c0/0x1ac0
> __x64_sys_mount+0x33b/0x430
> do_syscall_64+0x35/0x80
> entry_SYSCALL_64_after_hwframe+0x46/0xb0
> </TASK>
> 
> The process is as follows:
> Thread A:                       Thread B:
> p9_poll_workfn()                p9_client_create()
> ...                                 ...
>     p9_conn_cancel()                p9_fd_cancel()
>         list_del()                      ...
>         ...                             list_del()  //list_del
>                                                       corruption
> There is no lock protection when deleting list in p9_conn_cancel(). After
> deleting list in Thread A, thread B will delete the same list again. It
> will cause issue of list_del corruption.

Thanks!

I'd add a couple of lines here describing the actual fix.
Something like this?
---
Setting req->status to REQ_STATUS_ERROR under lock prevents other
cleanup paths from trying to manipulate req_list.
The other thread can safely check req->status because it still holds a
reference to req at this point.
---

With that out of the way, it's a good idea; I didn't remember that
p9_fd_cancel (and cancelled) check for req status before acting on it.
This really feels like whack-a-mole, but I'd say this is one step
better.

Please tell me if you want to send a v2 with your words, or I'll just
pick this up with my suggestion and submit to Linus in a week-ish after
testing. No point in waiting a full cycle for this.


> Fixes: 52f1c45dde91 ("9p: trans_fd/p9_conn_cancel: drop client lock earlier")
> Reported-by: syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com
> Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
> ---
> v2: set req status when removing list

(I don't recall seeing a v1?)

> ---
>  net/9p/trans_fd.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 56a186768750..bd28e63d7666 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -202,9 +202,11 @@ static void p9_conn_cancel(struct p9_conn *m, int err)
>  
>  	list_for_each_entry_safe(req, rtmp, &m->req_list, req_list) {
>  		list_move(&req->req_list, &cancel_list);
> +		req->status = REQ_STATUS_ERROR;
>  	}
>  	list_for_each_entry_safe(req, rtmp, &m->unsent_req_list, req_list) {
>  		list_move(&req->req_list, &cancel_list);
> +		req->status = REQ_STATUS_ERROR;
>  	}
>  
>  	spin_unlock(&m->req_lock);

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

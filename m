Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA9963C71C
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 19:23:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p05Gj-0004AN-Be;
	Tue, 29 Nov 2022 18:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p05Gi-0004AG-9f
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 18:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ZSzUkPwSZlE7lwVIYK/zlxt6BpFN/kJRekUXyW8GJk=; b=FnqMWyWDtMcq+EZcjXsNDewRTD
 gspm3DeVSYtQ55OBxBFHsDiz7ErnOxF2GzIW59vxIQwJSU/LCe/CTntZOGCbVzeFbG4/FNkco57fN
 b4Ojzj0FwVvuzEuD1rjrGmJtkmfD4k7/BUiGYXjmRptFPXpdAO6Tg1+GI8CUFXSBFsek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ZSzUkPwSZlE7lwVIYK/zlxt6BpFN/kJRekUXyW8GJk=; b=dGJdYAlAXEl2WNwvqsqwBe280n
 pe2fnzqbIuy6vhfHbArhP8jTLwr6SdusfhgB4SXAX7P+jZZIDYpC+24umeFM5mntukKgR9+eif1GX
 Y4P159vW8viNsQ0wXiIDUxC99jgmwL3P24ZqDKrGxKvwWi0ZUhG9tb8KHz3BTXSONxCU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p05Gb-000UvV-Qc for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 18:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=5ZSzUkPwSZlE7lwVIYK/zlxt6BpFN/kJRekUXyW8GJk=; b=VbJ+rXDlSrYHfgeC2Iew3PURBK
 big7AR0VqNOdMaZFqdekRc1hj8yZDPfKUV3Bgyfh459GvTU75BOsFViXpq++WtktoynNnhRJWkuEr
 xOnagvByYPCoCccB+zEcQiu+sH08VgdDYeI5ASOnTqwNwJWIeqEfj0sJM16aQDBjlQzhrxcwg7z/r
 t9gvX8sk7tbrIhKZa2hXc3qznZFSydt1FXtLLx012BVpZJVjMPyGn1A/w7ltbaVcqY5cFZGH48BLr
 Tsut2PsSYQ9uP1b144SzAoxU2QJGqQoAx5+xXoSQZO22gXe5qw69H0VvFTwaEq27Ve8IZy0TtC0dT
 rTN2Kp9+PhhMDVlKx6F28pbidKBIBTilA2HhLhh9x3A2Qe/Y/8zGob782F0tHNBPX+JA5Iy2qxiNt
 a3vYZrxgjSpGOxz7uNV+M3nIlgxHqtJdCRotI6zTkGgR2593+9afngf/qUhzXE+Qym9s5UW7Mv6Wm
 mwbI8FCuq8cp7tZJErIv+LQAnJk5tewABZYhUa7qpj+cNdcScG9ltGjJvLfAvtiwBRJv0RPY5lW2x
 GVpmU9tLuHKZCR1vgi7e7W71IKF809i1hCoWoGTKzDyod4WWY4VH/zJdqRkOxVrPeMoYo5d4ZzlMl
 KOnfagswQd05C7hznra6z0VDHn1kAxtvmR9M9P/1U=;
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 Schspa Shi <schspa@gmail.com>
Date: Tue, 29 Nov 2022 19:23:19 +0100
Message-ID: <4282856.sKfH6co6qd@silver>
In-Reply-To: <m2r0xlu3l9.fsf@gmail.com>
References: <20221129162251.90790-1-schspa@gmail.com>
 <m2r0xlu3l9.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, November 29,
 2022 5:26:46 PM CET Schspa Shi wrote:
 > > Schspa Shi <schspa@gmail.com> writes: > > > The transport layer of fs
 does not fully support the cancel request. > > When the request [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p05Gb-000UvV-Qc
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
Cc: v9fs-developer@lists.sourceforge.net, Schspa Shi <schspa@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, November 29, 2022 5:26:46 PM CET Schspa Shi wrote:
> 
> Schspa Shi <schspa@gmail.com> writes:
> 
> > The transport layer of fs does not fully support the cancel request.
> > When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
> > will forcibly delete the request, and at this time p9_[read/write]_work
> > may continue to use the request. Therefore, it causes UAF .
> >
> > There is the logs from syzbot.
> >
> > Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
> > 0x00 0x00 . . . . . . . . ] (in kfence-#110):
> >  p9_fcall_fini net/9p/client.c:248 [inline]
> >  p9_req_put net/9p/client.c:396 [inline]
> >  p9_req_put+0x208/0x250 net/9p/client.c:390
> >  p9_client_walk+0x247/0x540 net/9p/client.c:1165
> >  clone_fid fs/9p/fid.h:21 [inline]
> >  v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
> >  v9fs_xattr_set fs/9p/xattr.c:100 [inline]
> >  v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
> >  __vfs_setxattr+0x119/0x180 fs/xattr.c:182
> >  __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
> >  __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
> >  vfs_setxattr+0x143/0x340 fs/xattr.c:309
> >  setxattr+0x146/0x160 fs/xattr.c:617
> >  path_setxattr+0x197/0x1c0 fs/xattr.c:636
> >  __do_sys_setxattr fs/xattr.c:652 [inline]
> >  __se_sys_setxattr fs/xattr.c:648 [inline]
> >  __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
> >  do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
> >  __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
> >  do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
> >  entry_SYSENTER_compat_after_hwframe+0x70/0x82
> >
> > Below is a similar scenario, the scenario in the syzbot log looks more
> > complicated than this one, but the root cause seems to be the same.
> >
> >      T21124               p9_write_work        p9 read_work
> > ======================== first trans =================================
> > p9_client_walk
> >   p9_client_rpc
> >     p9_client_prepare_req
> >     /* req->refcount == 2 */
> >     c->trans_mod->request(c, req);
> >       p9_fd_request
> >         req move to unsent_req_list
> >                             req->status = REQ_STATUS_SENT;
> >                             req move to req_list
> >                             << send to server >>
> >     wait_event_killable
> >     << get kill signal >>
> >     if (c->trans_mod->cancel(c, req))
> >        p9_client_flush(c, req);
> >          /* send flush request */
> >          req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
> > 		 if (c->trans_mod->cancelled)
> >             c->trans_mod->cancelled(c, oldreq);
> >               /* old req was deleted from req_list */
> >               /* req->refcount == 1 */
> >   p9_req_put
> >     /* req->refcount == 0 */
> >     << preempted >>
> >                                        << get response, UAF here >>
> >                                        m->rreq = p9_tag_lookup(m->client, m->rc.tag);
> >                                          /* req->refcount == 1 */
> >                                        << do response >>
> >                                        p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
> >                                          /* req->refcount == 0 */
> >                                          p9_fcall_fini
> >                                          /* request have been freed */
> >     p9_fcall_fini
> >      /* double free */
> >                                        p9_req_put(m->client, m->rreq);
> >                                          /* req->refcount == 1 */
> >
> > To fix it, we can wait the request with status REQ_STATUS_SENT returned.

9p server might or might not send a reply on cancelled request. If 9p server
notices client's Tflush request early enough, then it would simply discard the
old=cancelled request and not send any reply on that old request. If server
notices Tflush too late, then server would send a response to the old request.

http://ericvh.github.io/9p-rfc/rfc9p2000.html#anchor28

However after sending Tflush client waits for the corresponding Rflush
response, and at this point situation should be clear; no further response
expected from server for old request at this point. And that's what Linux
client does.

Which server implementation caused that?

> >
> > Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com
> >
> > Signed-off-by: Schspa Shi <schspa@gmail.com>
> > ---
> >  net/9p/client.c   |  2 +-
> >  net/9p/trans_fd.c | 12 ++++++++++++
> >  2 files changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/9p/client.c b/net/9p/client.c
> > index aaa37b07e30a..963cf91aa0d5 100644
> > --- a/net/9p/client.c
> > +++ b/net/9p/client.c
> > @@ -440,7 +440,7 @@ void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
> >  	smp_wmb();
> >  	req->status = status;
> >  
> > -	wake_up(&req->wq);
> > +	wake_up_all(&req->wq);

Purpose?

> >  	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
> >  	p9_req_put(c, req);
> >  }
> > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> > index eeea0a6a75b6..ee2d6b231af1 100644
> > --- a/net/9p/trans_fd.c
> > +++ b/net/9p/trans_fd.c
> > @@ -30,6 +30,7 @@
> >  #include <net/9p/transport.h>
> >  
> >  #include <linux/syscalls.h> /* killme */
> > +#include <linux/wait.h>
> >  
> >  #define P9_PORT 564
> >  #define MAX_SOCK_BUF (1024*1024)
> > @@ -728,6 +729,17 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
> >  		return 0;
> >  	}
> >  
> > +	/* If the request is been sent to the server, we need to wait for the
> > +	 * job to finish.
> > +	 */
> > +	if (req->status == REQ_STATUS_SENT) {
> > +		spin_unlock(&m->req_lock);
> > +		p9_debug(P9_DEBUG_TRANS, "client %p req %p wait done\n",
> > +			 client, req);
> > +		wait_event(req->wq, req->status >= REQ_STATUS_RCVD);
> > +
> > +		return 0;
> > +	}
> >  	/* we haven't received a response for oldreq,
> >  	 * remove it from the list.
> >  	 */
> 
> Add Christian Schoenebeck for bad mail address typo.
> 
> 






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

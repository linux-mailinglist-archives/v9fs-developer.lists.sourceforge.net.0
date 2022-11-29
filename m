Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FC263CB1F
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Nov 2022 23:38:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p09Ff-0004Im-GL;
	Tue, 29 Nov 2022 22:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p09FR-0004Ie-Jz
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 22:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=smCY981fzC9mZh3eGXAC3uy7nL+6sisKTqlh2Hjzenk=; b=NQf3HTa44SNXcEvf8YbeSa1DcL
 4zKgPUSq56NAVx8rxfWesnSYloJ0RQ+oz9WYEHONh53z0lR8VzuTRluhNDDiChn88QVSK2+Nem3Ur
 TuGqpIQPluiT3HUk9fBljiUW8qF/gZwyDjbc3rFUfwJmcq0MQsDBTvhkiks+ZPBOy1Tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=smCY981fzC9mZh3eGXAC3uy7nL+6sisKTqlh2Hjzenk=; b=fv12SHr4iF1UVeKYacYJbcKSTi
 hYrVtANrW4BBl5rtN2vKQC5/z4psB6jHKTvqu/tQmVwwRDviLuxfuPb8t8RtuexcAuxFLyzAYtXaH
 AsbeSUWa+CjgbCSHTOSuU+8dy4mNscXKsbb8WUSvAtC6asUGO9utKp0/732s7UQbIHeg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p09FO-000evx-Qs for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Nov 2022 22:38:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 01FAFC01F; Tue, 29 Nov 2022 23:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669761519; bh=smCY981fzC9mZh3eGXAC3uy7nL+6sisKTqlh2Hjzenk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NUbKTNPnHK6tuuncFbF/XE8RjNTxugpELitcB2dWP/xV+80Om6B/65tFtkyOE7u/6
 OMoqAdmfOT2CQOQQWKuwaACVp+VnCzZbjqo0aNM91bIVBNcuwiY+AUpwh4ihRSx5cl
 iy6P2GcCVgYIQmAQhX+GxGiExdaDD8FLgRHPJeHb734LqxiTQ90l4j4giD6sk2AyqS
 jEtpMb3LIZPfxNXmsbU79OQ2mTYii5ADJ98qDMnDPfSUtMJjAJ5Mu0u0kTv3YIO0DO
 7MxIy0tuZQO56bag0lP6H9tY2Jvafo/sxNlHqmsqhWfUu12hYnTaIiWPII4hrJbblB
 0RiF9Q9xUdvBw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5C02AC009;
 Tue, 29 Nov 2022 23:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669761517; bh=smCY981fzC9mZh3eGXAC3uy7nL+6sisKTqlh2Hjzenk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h6y1a2ztn0ZfYgUgUhnaPxMyQ4t+6WLvNiP12gfRIcnLekJ1foIMsNs33nDA6tk/u
 vSJ/ANhh7xYim9/WGJXKIkWCeG5QGQLGXkCHITcthUgOFI/dncLQsxpiBSKPMxm82+
 r53aS5ryiXr40YUAH8nQn86eG8RGcsUcUaoRHkyylhPGhhuQ3oCA2OigGhaFdhD3w/
 wsaI+53uvgy4xp1HH2oJpVio/b2KhEQnVe065T/IAG6iYv4aFNko18JQivt2VXeMsj
 N8hHq0ifjh9u4ZjxfDvs4/AdZcwPfvrh2udRXnW1n/rU44yoTc4M1h75kLUUcSkdxT
 B50011CaxcV2w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c0600905;
 Tue, 29 Nov 2022 22:38:21 +0000 (UTC)
Date: Wed, 30 Nov 2022 07:38:06 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>
Message-ID: <Y4aJzjlkkt5VKy0G@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129162251.90790-1-schspa@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi wrote on Wed, Nov 30, 2022 at 12:22:51AM +0800:
 > The transport layer of fs does not fully support the cancel request. >
 When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p09FO-000evx-Qs
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.co,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Schspa Shi wrote on Wed, Nov 30, 2022 at 12:22:51AM +0800:
> The transport layer of fs does not fully support the cancel request.
> When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
> will forcibly delete the request, and at this time p9_[read/write]_work
> may continue to use the request. Therefore, it causes UAF .
> 
> There is the logs from syzbot.
> 
> Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
> 0x00 0x00 . . . . . . . . ] (in kfence-#110):
>  p9_fcall_fini net/9p/client.c:248 [inline]
>  p9_req_put net/9p/client.c:396 [inline]
>  p9_req_put+0x208/0x250 net/9p/client.c:390
>  p9_client_walk+0x247/0x540 net/9p/client.c:1165
>  clone_fid fs/9p/fid.h:21 [inline]
>  v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
>  v9fs_xattr_set fs/9p/xattr.c:100 [inline]
>  v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
>  __vfs_setxattr+0x119/0x180 fs/xattr.c:182
>  __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
>  __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
>  vfs_setxattr+0x143/0x340 fs/xattr.c:309
>  setxattr+0x146/0x160 fs/xattr.c:617
>  path_setxattr+0x197/0x1c0 fs/xattr.c:636
>  __do_sys_setxattr fs/xattr.c:652 [inline]
>  __se_sys_setxattr fs/xattr.c:648 [inline]
>  __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
>  do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
>  __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
>  do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
>  entry_SYSENTER_compat_after_hwframe+0x70/0x82
> 
> Below is a similar scenario, the scenario in the syzbot log looks more
> complicated than this one, but the root cause seems to be the same.
> 
>      T21124               p9_write_work        p9 read_work
> ======================== first trans =================================
> p9_client_walk
>   p9_client_rpc
>     p9_client_prepare_req
>     /* req->refcount == 2 */
>     c->trans_mod->request(c, req);
>       p9_fd_request
>         req move to unsent_req_list
>                             req->status = REQ_STATUS_SENT;
>                             req move to req_list
>                             << send to server >>
>     wait_event_killable
>     << get kill signal >>
>     if (c->trans_mod->cancel(c, req))
>        p9_client_flush(c, req);
>          /* send flush request */
>          req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
> 		 if (c->trans_mod->cancelled)
>             c->trans_mod->cancelled(c, oldreq);
>               /* old req was deleted from req_list */
>               /* req->refcount == 1 */
>   p9_req_put
>     /* req->refcount == 0 */
>     << preempted >>
>                                        << get response, UAF here >>
>                                        m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>                                          /* req->refcount == 1 */
>                                        << do response >>
>                                        p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
>                                          /* req->refcount == 0 */
>                                          p9_fcall_fini
>                                          /* request have been freed */
>     p9_fcall_fini
>      /* double free */
>                                        p9_req_put(m->client, m->rreq);
>                                          /* req->refcount == 1 */
> 
> To fix it, we can wait the request with status REQ_STATUS_SENT returned.

Christian replied on this (we cannot wait) but I agree with him -- the
scenario you describe is proteced by p9_tag_lookup checking for refcount
with refcount_inc_not_zero (p9_req_try_get).

The normal scenarii for flush are as follow:
 - cancel before request is sent: no flush, just free
 - flush is ignored and reply comes first: we get reply from original
request then reply from flush
 - flush is handled and reply never comes: we only get reply from flush

Protocol-wise, we can safely reuse the tag after the flush reply got
received; and as far as I can follow the code we only ever free the tag
(last p9_call_fini) after flush has returned so the entry should be
protected.

If we receive a response on the given tag between cancelled and the main
thread going out the request has been marked as FLSHD and should be
ignored. . . here is one p9_req_put in p9_read_work() in this case but
it corresponds to the ref obtained by p9_tag_lookup() so it should be
valid.


I'm happy to believe we have a race somewhere (even if no sane server
would produce it), but right now I don't see it looking at the code.. :/

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

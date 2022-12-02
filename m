Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E566408D4
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 Dec 2022 15:57:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p17Tw-0008GX-Hq;
	Fri, 02 Dec 2022 14:57:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p17Tu-0008GM-Kw
 for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Dec 2022 14:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y3uCyu9VbobJOLb5bg2S4QnzxL/lvHbfdA0L+IHesDA=; b=VZeFXUd/gCP0QqFaE2gNrfx5v3
 x5Xs1pFBac2e9dR737xh/n+BMu1BqFmAKPRScoGQI+4k4EzinB4erl5SjRqoFJdERdJCfNRZgXaA4
 SWADvFTljD6WsEJURnSdCivehaS90UjRrwu/FiOGSETHnnuE3jxjbWnJ2bo6yQwG1ZpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y3uCyu9VbobJOLb5bg2S4QnzxL/lvHbfdA0L+IHesDA=; b=C
 KHU2CCMhVe4wROUuiRjFLrCvnfgsANgrCDQp1ozukrxjYFAWNVcBSQkneBeTxayLFKu4mtj5CWxKg
 /ROa/Q1I6ajD4jh8ru7YWVtAQ9A1gYg6RHoiG45VIKyNFFE1fijX5BUqVMeU3T37GpJYasj1fNLsl
 jo6GGfLXRYaPjgIE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p17Ts-000052-7e for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Dec 2022 14:57:37 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B1483C01F; Fri,  2 Dec 2022 15:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669993057; bh=Y3uCyu9VbobJOLb5bg2S4QnzxL/lvHbfdA0L+IHesDA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=bKexPzcAkwuHO3UyGyYVEs2AiHJzTvYQcT53TXWB4efz4Lida+bMsi0rv/MoInWFT
 1HRW/5l9hzS6MOAGa+kvh+c4gQeYXfWK+HJ5bLcNR+IC5GH92qUxN/9MFgFFRfoAca
 7QRBU691Kq0kNi8qgXJSNrPaLEhvfRY+mAyz77tWgDNrOn66nl7mLXkpxD1mcwYQM8
 ZO7znXG9+bgJ+1NAuTPJZcQJfwO6WuiZWUePYIJy1SykOZwOUaXnII7CFHmtwT0vWu
 WkiB4eSeHbB3e7/GcMAF70eEekwqHX56nXydBXPdK8qgcy7aM7sH6Afk4T/jcEFztt
 QxsADHsH/TS0w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0669FC009;
 Fri,  2 Dec 2022 15:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669993056; bh=Y3uCyu9VbobJOLb5bg2S4QnzxL/lvHbfdA0L+IHesDA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ZyelE6CvfHFzERG+lJE9Wsi2BF1WxMQ8j3iiztQPGvdqrE9Mu4llP6SLZlCUe7GSK
 sgp6/9sDJusoYqM2vf6QtkJdowPbBmZAbXg5+cGXClMXLeeTPJJYqhltO05POeoV5S
 RE753b2HJ66P1gX+XqXC9B94pnCGXC4zgpGLj1UjBtSPmDlBvinY874J4Yxsd3ngNr
 cFgQv5/RM8VhbQ95qJedEXED+cX8oMcrIyk54cRcSZJSupoaOMgt5Fbqe7xhPbV7Oo
 Pyqz46PDzstaexC1mTqWsWcHZ616yo2+2Vx2PGAxyAFEI76ePE6GT8d6lgqLP2Ljoa
 xcfROEf/peAVw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b911dc5e;
 Fri, 2 Dec 2022 14:57:20 +0000 (UTC)
Date: Fri, 2 Dec 2022 23:57:05 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y4oSQU4taHVQ0n2j@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4759293.MmlG3nAkEO@silver>
 <20221201033310.18589-1-schspa@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi wrote on Thu, Dec 01, 2022 at 11:33:10AM +0800:
 > When the new request allocated, the refcount will be zero if it is resued
 > one. But if the request is newly allocated from slab, it is not [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p17Ts-000052-7e
Subject: Re: [V9fs-developer] [PATCH v3] 9p/fd: set req refcount to zero to
 avoid uninitialized usage
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
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Schspa Shi wrote on Thu, Dec 01, 2022 at 11:33:10AM +0800:
> When the new request allocated, the refcount will be zero if it is resued
> one. But if the request is newly allocated from slab, it is not fully
> initialized before add it to idr.
> 
> If the p9_read_work got a response before the refcount initiated. It will
> use a uninitialized req, which will result in a bad request data struct.
> 
> Here is the logs from syzbot.
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
> complicated than this one, but this patch can fix it.
> 
>      T21124                   p9_read_work
> ======================== second trans =================================
> p9_client_walk
>   p9_client_rpc
>     p9_client_prepare_req
>       p9_tag_alloc
>         req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
>         tag = idr_alloc
>         << preempted >>
>         req->tc.tag = tag;
>                             /* req->[refcount/tag] == uninitialized */
>                             m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>                               /* increments uninitalized refcount */
> 
>         refcount_set(&req->refcount, 2);
>                             /* cb drops one ref */
>                             p9_client_cb(req)
>                             /* reader thread drops its ref:
>                                request is incorrectly freed */
>                             p9_req_put(req)
>     /* use after free and ref underflow */
>     p9_req_put(req)
> 
> To fix it, we can initize the refcount to zero before add to idr.

(fixed initialize typo here)

> Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com
> Signed-off-by: Schspa Shi <schspa@gmail.com>
> 
> --
> 
> Changelog:
> v1 -> v2:
>         - Set refcount to fix the problem.
> v2 -> v3:
>         - Comment messages improve as asmadeus suggested.

Just a note: when applying a patch with git am, this goes into the
commit message -- please include the changelog below the git's three
dashes instead (anything between the three dashes and the 'diff --git'
below:
> ---
>  net/9p/client.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c


Christian Schoenebeck wrote on Fri, Dec 02, 2022 at 12:48:39PM +0100:
> > +	/* refcount needs to be set to 0 before inserting into the idr
> > +	 * so p9_tag_lookup does not accept a request that is not fully
> > +	 * initialized. refcount_set to 2 below will mark request live.
> > +	 */
> > +	refcount_set(&req->refcount, 0);
> 
> I would s/live/ready for being used/, but comment should be clear enough
> anyway.

I blame golfing to fit into three lines, sorry!
Since it was my suggestion, I've taken the liberty to change 'live' to
'ready' as an half step; I think it's clearer than live and probably
understandable enough.

I've pushed this to my next branch and will submit to Linus for the
merge window in a couple of weeks, no point in rushing this to stable
unless it gets snatched through the net tree first...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

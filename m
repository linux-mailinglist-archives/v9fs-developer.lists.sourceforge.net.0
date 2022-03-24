Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 649894E62FF
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Mar 2022 13:13:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nXMLa-0006iz-8e; Thu, 24 Mar 2022 12:13:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <k.kahurani@gmail.com>) id 1nXMLY-0006it-S1
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Mar 2022 12:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hav0rATWMjGlQ+cV48GPrS9pE9mbLTfbqIgZp5c1PLU=; b=Jy4oDsHhJ2O2Zt34oEIbBz7Tru
 rlltQdMAIQyyFCR2/4o4TPGicKD4bAgk4q3PVe053VAJ5Qcq0k8xtSwL0FWzGwZiQ0YIeUhauBUKw
 iRrGFCJPVcZk1/TaC+I7m6Mf/N2R4d9NXNUu5AOReBjmWFM4obaO1HpAXngtPMumWg4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Hav0rATWMjGlQ+cV48GPrS9pE9mbLTfbqIgZp5c1PLU=; b=c
 l5P1z6ZFpd/2hvnRox24bc/DR2LkkhL3PTFvQa7NgdknEuuSAMliYT94iThk2asY1otYbUW3smjCT
 IspvhRr8jPUGNhuRFB3r0v4gDtFcWANuHReDDbgK8442X7LS8UcRnjYPG7DpRQn+xpW1BcIWfNfMz
 /3cBl3MGDR6m7oK0=;
Received: from mail-vk1-f170.google.com ([209.85.221.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nXMLW-00AOYl-Kb
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Mar 2022 12:13:43 +0000
Received: by mail-vk1-f170.google.com with SMTP id m84so2432092vke.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 24 Mar 2022 05:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=Hav0rATWMjGlQ+cV48GPrS9pE9mbLTfbqIgZp5c1PLU=;
 b=D+iZJh7wh00pe3/eHP/5qk7IJVopQJYJDCC73S+QCFfGitj2tfkN6p/jGCKytCRbCb
 ZrsD3ip911pV6jKsN33HDvJ+e2VXUS0IsD/gRsFzC4c5L9yIMsj6dJS2dLYsLz5Dbfjs
 A+e1Ovyzz+rjJT0VtuDCZrCbM5HJk5PZ++5rqGQmMAs9q+lo5lmycuODGOPuw8+Yvx1E
 qY4joZPcjvo1+aqdCFkgNmEztC95BWqQaifnSpZIMdiFfjHti4Caac843Ut9eruttnat
 7d4V1OK6/HBOkx6sc8un1maKOJMtmCnWjlgfiMKcLoJyxd+xWCMQl4LOa0RJ5Kyg/kbw
 GofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Hav0rATWMjGlQ+cV48GPrS9pE9mbLTfbqIgZp5c1PLU=;
 b=lNWDYeUbHfPRdlL1O6rJCuomWgMNZGbmYWwCT4ucAQrzkWCPZiBt35eBZ9aGdmsJQC
 CPj+7Mrns+JnC6udGZdRzYRO89smTAzT9v8NaKYmqVmZhdCGwBWSaFtVjqIP7BfivjCU
 KE0MBFP4OfQmZ2IqSVMFx5DvwkCmqzoHeQKb6A0RyHPQhZxAL6n/oKpHJYn4901DyNcr
 5vwEeXb7gWWYqsinhMGK+I1IBUy1gWH6Pg24F5il2I4ljDfDhEPo7uIyO198vv2guci4
 19nAPH6NmCR9VeEj1fnG2qk4TG6w/IJZCScapNhhB7tl2LpK9cHQg80xElvZFEw+Rq51
 CejQ==
X-Gm-Message-State: AOAM5327k5lU0muF1R+zvYj8m+jVw2o9g+4u08CMVGrvHFNFOiWU6QHd
 d+FVJVal34mzlyzTn/pCdWeqtBDZFCEfofnY/x0=
X-Google-Smtp-Source: ABdhPJzM8opa0VMTivMwRmaYH5kwYaZB6GxE8ZowfBDdFjDSruBQjjXiV8lkrMkEwUmRUPuEiMzMucGB5rI1xYFg+kQ=
X-Received: by 2002:a05:6122:8ca:b0:332:64b4:8109 with SMTP id
 10-20020a05612208ca00b0033264b48109mr2232541vkg.7.1648124016758; Thu, 24 Mar
 2022 05:13:36 -0700 (PDT)
MIME-Version: 1.0
From: David Kahurani <k.kahurani@gmail.com>
Date: Thu, 24 Mar 2022 15:13:25 +0300
Message-ID: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
To: davem@davemloft.net, ericvh@gmail.com, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net, 
 syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, February 28, 2022 at 4:38:57 AM UTC+3 > syzbot
 wrote on Sun, Feb 27,
 2022 at 04:53:29PM -0800: > > kmem_cache_destroy 9p-fcall-cache:
 Slab cache still has objects when > > called from
 p9_client_destroy+0x213/0x370 net/9p/client.c:1100 > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kahurani[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.170 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nXMLW-00AOYl-Kb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, February 28, 2022 at 4:38:57 AM UTC+3 asmadeus@codewreck.org
wrote:

> syzbot wrote on Sun, Feb 27, 2022 at 04:53:29PM -0800:
> > kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when
> > called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
>
> hmm, there is no previous "Packet with tag %d has still references"
> (sic) message, so this is probably because p9_tag_cleanup only relies on
> rcu read lock for consistency, so even if the connection has been closed
> above (clnt->trans_mode->close) there could have been a request sent
> (= tag added) just before that which isn't visible on the destroying
> side?
>
> I guess adding an rcu_barrier() is what makes most sense here to protect
> this case?
> I'll send a patch in the next few days unless it was a stupid idea.


Looking at this brought me to the same conclusion.

---------------------

From cd5a11207a140004bf55005fac7f7e4cec2fd075 Mon Sep 17 00:00:00 2001
From: David Kahurani <k.kahurani@gmail.com>
Date: Thu, 24 Mar 2022 15:00:23 +0300
Subject: [PATCH] net/9p: Flush any delayed rce free

As is best practice

kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when called
from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502 kmem_cache_destroy
mm/slab_common.c:502 [inline]
WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502
kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
Modules linked in:
CPU: 1 PID: 3701 Comm: syz-executor.3 Not tainted
5.17.0-rc5-syzkaller-00021-g23d04328444a #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
RIP: 0010:kmem_cache_destroy mm/slab_common.c:502 [inline]
RIP: 0010:kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
Code: da a8 0e 48 89 ee e8 44 6e 15 00 eb c1 c3 48 8b 55 58 48 c7 c6 60 cd
b6 89 48 c7 c7 30 83 3a 8b 48 8b 4c 24 18 e8 9b 30 60 07 <0f> 0b eb a0 90
41 55 49 89 d5 41 54 49 89 f4 55 48 89 fd 53 48 83
RSP: 0018:ffffc90002767cf0 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 1ffff920004ecfa5 RCX: 0000000000000000
RDX: ffff88801e56a280 RSI: ffffffff815f4b38 RDI: fffff520004ecf90
RBP: ffff888020ba8b00 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff815ef1ce R11: 0000000000000000 R12: 0000000000000001
R13: ffffc90002767d68 R14: dffffc0000000000 R15: 0000000000000000
FS:  00005555561b0400(0000) GS:ffff88802ca00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555556ead708 CR3: 0000000068b97000 CR4: 0000000000150ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 p9_client_destroy+0x213/0x370 net/9p/client.c:1100
 v9fs_session_close+0x45/0x2d0 fs/9p/v9fs.c:504
 v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:226
 deactivate_locked_super+0x94/0x160 fs/super.c:332
 deactivate_super+0xad/0xd0 fs/super.c:363
 cleanup_mnt+0x3a2/0x540 fs/namespace.c:1173
 task_work_run+0xdd/0x1a0 kernel/task_work.c:164
 tracehook_notify_resume include/linux/tracehook.h:188 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:175 [inline]
 exit_to_user_mode_prepare+0x27e/0x290 kernel/entry/common.c:207
 __syscall_exit_to_user_mode_work kernel/entry/common.c:289 [inline]
 syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:300
 do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f5ff63ed4c7
Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09
00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff
ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff01862e98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f5ff63ed4c7
RDX: 00007fff01862f6c RSI: 000000000000000a RDI: 00007fff01862f60
RBP: 00007fff01862f60 R08: 00000000ffffffff R09: 00007fff01862d30
R10: 00005555561b18b3 R11: 0000000000000246 R12: 00007f5ff64451ea
R13: 00007fff01864020 R14: 00005555561b1810 R15: 00007fff01864060
 </TASK>

Signed-off-by: David Kahurani <k.kahurani@gmail.com>
Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
---
 net/9p/client.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf..67c51913a 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1097,6 +1097,7 @@ void p9_client_destroy(struct p9_client *clnt)

  p9_tag_cleanup(clnt);

+ rcu_barrier();
  kmem_cache_destroy(clnt->fcall_cache);
  kfree(clnt);
 }
-- 
2.25.1

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

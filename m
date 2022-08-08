Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE4658CA3A
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Aug 2022 16:14:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oL3Wc-0003Qy-I2; Mon, 08 Aug 2022 14:14:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3PxrxYgkbAFYGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oL3Wb-0003Qs-Hv
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 14:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JbxttqbDHdfUzYooNKEfPwjaG5YKBPoGxF8SI8GnlAo=; b=O+b0wvWV3S2LRgtofnjw9CiDZI
 cCUNrux15OSc9cManRxiVZsR8x6ZznXXxd56Z775aSQ01J+GbU4SZyoN/IhppGS9iSw8MZK6RopIs
 GY/WXOv/bpaCjI8PhYqt0ggP1/PuUUEAHNdfDhHh9TDSp94HxriRngm4SoRJJm6ucaAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JbxttqbDHdfUzYooNKEfPwjaG5YKBPoGxF8SI8GnlAo=; b=c
 38sbUixkg4UZbEx2jL+wMfD5KOcPMQVZBijoFwYPg1kwCpvKvI/FjEnZLKQbn0MuUAP0mwx+JXBCY
 PBNbIYHyRgVRFkIc1xcv/dI7btiMZbOpmzalNQM+QU13NaOaTEmKxcMzrmd8yx9Vs4G3gOnzxZugl
 ltg0q6r4ctNEYU9o=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oL3WX-0007MP-A4
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 14:14:31 +0000
Received: by mail-il1-f197.google.com with SMTP id
 s3-20020a056e021a0300b002e10f0e8965so1680041ild.23
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 07:14:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc;
 bh=JbxttqbDHdfUzYooNKEfPwjaG5YKBPoGxF8SI8GnlAo=;
 b=uANIr3AEobXQ9s1GA+CorpPx67TjmoGQR0ieGD2PdSA2iTrNJ9eougckgm9z8UHoqj
 E8sIhF+zMnIrioD6ueAhOxAmlpmS26ptzfpJuSkTny5EjV1MIbOtHX/sVpiTO9WEYZUK
 CDISuH6QJSpupMyjRC/6KDz3R7xWlXzYgDbDp+bLsKaae6MzFiZ05L+pvlV5oB4swpjw
 pwDDEvx/100EhQOQDVmgIhkwsY6Bvd57iFvSq8BBZxiWRXVKcjEvmbvyyPdcIx6cQadN
 fjnQqt9aEs12foA+J+xNs0HM7TdoALiT8JPlE6IoNk6p92FaN1izg94cEss6oS7TI8km
 qr4w==
X-Gm-Message-State: ACgBeo3AkU4YQYdJ2qUCudPpSgqEvWm9m1yRc0M2z2OG4e3zNZYI+4r6
 O645o4RVyNRvknrH72X7a92TFMTrPPzYBMxVt/m/rEbKDc0B
X-Google-Smtp-Source: AA6agR5g0KpuQOyObZUkfCjHm/y5cz64ijRFmojwXbbmyIAIPgevNyi2viWTAmjmlWlOpT1XbciZ1k0dMqDKrjw6SkJscr0hfjhn
MIME-Version: 1.0
X-Received: by 2002:a5e:a70f:0:b0:684:d596:b7e7 with SMTP id
 b15-20020a5ea70f000000b00684d596b7e7mr1192526iod.84.1659968063797; Mon, 08
 Aug 2022 07:14:23 -0700 (PDT)
Date: Mon, 08 Aug 2022 07:14:23 -0700
In-Reply-To: <000000000000cad57405e5b5dbb7@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c7ff6a05e5bb6ec8@google.com>
From: syzbot <syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: ca688bff68bc Add linux-next specific files for 20220808 git tree:
 linux-next console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1408148e080000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oL3WX-0007MP-A4
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_req_put
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    ca688bff68bc Add linux-next specific files for 20220808
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1408148e080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c20e006003cdecb
dashboard link: https://syzkaller.appspot.com/bug?extid=50f7e8d06c3768dd97f3
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11f6ea66080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1640de8e080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com

============================================
WARNING: possible recursive locking detected
5.19.0-next-20220808-syzkaller #0 Not tainted
--------------------------------------------
kworker/1:2/1590 is trying to acquire lock:
ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: p9_tag_remove net/9p/client.c:367 [inline]
ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: p9_req_put net/9p/client.c:375 [inline]
ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: p9_req_put+0xc6/0x250 net/9p/client.c:372

but task is already holding lock:
ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: spin_lock include/linux/spinlock.h:349 [inline]
ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: p9_conn_cancel+0xaa/0x970 net/9p/trans_fd.c:192

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&clnt->lock);
  lock(&clnt->lock);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

3 locks held by kworker/1:2/1590:
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1280 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:636 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:663 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x87a/0x1610 kernel/workqueue.c:2260
 #1: ffffc90006357da8 (p9_poll_work){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264
 #2: ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: spin_lock include/linux/spinlock.h:349 [inline]
 #2: ffff888079686c18 (&clnt->lock){+.+.}-{2:2}, at: p9_conn_cancel+0xaa/0x970 net/9p/trans_fd.c:192

stack backtrace:
CPU: 1 PID: 1590 Comm: kworker/1:2 Not tainted 5.19.0-next-20220808-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/22/2022
Workqueue: events p9_poll_workfn
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_deadlock_bug kernel/locking/lockdep.c:2988 [inline]
 check_deadlock kernel/locking/lockdep.c:3031 [inline]
 validate_chain kernel/locking/lockdep.c:3816 [inline]
 __lock_acquire.cold+0x116/0x3a7 kernel/locking/lockdep.c:5053
 lock_acquire kernel/locking/lockdep.c:5666 [inline]
 lock_acquire+0x1ab/0x570 kernel/locking/lockdep.c:5631
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
 _raw_spin_lock_irqsave+0x39/0x50 kernel/locking/spinlock.c:162
 p9_tag_remove net/9p/client.c:367 [inline]
 p9_req_put net/9p/client.c:375 [inline]
 p9_req_put+0xc6/0x250 net/9p/client.c:372
 p9_conn_cancel+0x640/0x970 net/9p/trans_fd.c:213
 p9_poll_mux net/9p/trans_fd.c:627 [inline]
 p9_poll_workfn+0x25d/0x4e0 net/9p/trans_fd.c:1147
 process_one_work+0x991/0x1610 kernel/workqueue.c:2289
 worker_thread+0x665/0x1080 kernel/workqueue.c:2436
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

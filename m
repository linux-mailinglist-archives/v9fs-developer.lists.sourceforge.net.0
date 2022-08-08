Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32B58C40A
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Aug 2022 09:35:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oKxIT-0008Fu-Ja; Mon, 08 Aug 2022 07:35:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3urzwYgkbABUDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oKxIS-0008Fl-Np
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:35:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/xpnSNBx6YcejWp6D7piTFVv5HNYrOIvM8dSmc0S6BA=; b=CDXrkrBarYP099SbXjEMFetvS0
 dmdnZYfCuDxW2T05vvSgHlOZz02ey/05ubl4LzDBdS2Fub+mN0pmPiiy1cetEBe194FIYqa0sRrSv
 9r52SjjQHNzQtOeT1YzvugsyEgr6ErOvYy1GvpSRCeWcAM5LwSMLxo1OyY885IIwZrRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/xpnSNBx6YcejWp6D7piTFVv5HNYrOIvM8dSmc0S6BA=; b=k
 X/vYLAJ7Vb76RlJLAoF5MG3FXIRyC+S64rleC1ehjDjwL+/RFQOuHU6fRVQhJ8eJNV/SZXeCEoGkj
 rnrLDH3UVE53sCk5BB/g9Ar1yGE8Zx/O/b8iwfGUGYxwIj29adk35iMOteQGqwVTpYDHYCIR/Pc2+
 7zSq3rNSIKTLdUDA=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oKxIO-007U6F-ER
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:35:32 +0000
Received: by mail-il1-f199.google.com with SMTP id
 d6-20020a056e020be600b002dcc7977592so6058024ilu.17
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 00:35:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc;
 bh=/xpnSNBx6YcejWp6D7piTFVv5HNYrOIvM8dSmc0S6BA=;
 b=YCNEGsGHJkx3wRf1IFT3Z3l2eIIvhESq7z/mA+pnhoLT3tqdUV0czCG1OOO0amu04T
 BC1bXvQKbWq7FJL8zpYaicsAds/Xfqgb8UiAN1DMyNy8e80lOYV/UJ3+XM8wyWn14JIF
 dVtCPFLE1gpwkEXIokQL7x+VjZd59Qz+awmVx+jn0Y1UW927wFfhisZe+bu7zkJNmDpF
 Q1oiABwnHdqY73Zzdrzvv0OAqFPj0NOGVsJq/Yrqt1oBKfKc0ycaOs6iFQe9SfmmbRXa
 O9AmYK7QnFWeDmXy6kf6Hu9r/udZXL72bAifRRhxAo7AbbajwRHejKA68Oyck8AYn9wX
 jDow==
X-Gm-Message-State: ACgBeo0HqTml48zfdREzIbNbMnXhU8sjnEIRQy0T8Q7QEVUO3SJvLe7P
 Hl18U9v2Z95/HKJivG0HdcVic88mNRJbbUi9caNaunlrdBsF
X-Google-Smtp-Source: AA6agR5fu4lsLaBnQwWnoY06kfc+nwWMuw3HtpNnYavBhsec2hJvZv+x5XgXZSwZ84Ay5BoU/RIN6dj4CGs+gJsvHwuPTYeXYlgT
MIME-Version: 1.0
X-Received: by 2002:a02:664a:0:b0:33f:5310:35e1 with SMTP id
 l10-20020a02664a000000b0033f531035e1mr7630284jaf.214.1659944122896; Mon, 08
 Aug 2022 00:35:22 -0700 (PDT)
Date: Mon, 08 Aug 2022 00:35:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cad57405e5b5dbb7@google.com>
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
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: ca688bff68bc
 Add linux-next specific files for 20220808 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=104c8666080000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oKxIO-007U6F-ER
Subject: [V9fs-developer] [syzbot] possible deadlock in p9_req_put
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

Hello,

syzbot found the following issue on:

HEAD commit:    ca688bff68bc Add linux-next specific files for 20220808
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=104c8666080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c20e006003cdecb
dashboard link: https://syzkaller.appspot.com/bug?extid=50f7e8d06c3768dd97f3
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com

============================================
WARNING: possible recursive locking detected
5.19.0-next-20220808-syzkaller #0 Not tainted
--------------------------------------------
kworker/0:5/3683 is trying to acquire lock:
ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_tag_remove net/9p/client.c:367 [inline]
ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_req_put net/9p/client.c:375 [inline]
ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_req_put+0xc6/0x250 net/9p/client.c:372

but task is already holding lock:
ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: spin_lock include/linux/spinlock.h:349 [inline]
ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_conn_cancel+0xaa/0x970 net/9p/trans_fd.c:192

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&clnt->lock);
  lock(&clnt->lock);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

3 locks held by kworker/0:5/3683:
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1280 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:636 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:663 [inline]
 #0: ffff888011864d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x87a/0x1610 kernel/workqueue.c:2260
 #1: ffffc90005167da8 ((work_completion)(&m->rq)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264
 #2: ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: spin_lock include/linux/spinlock.h:349 [inline]
 #2: ffff888026be2c18 (&clnt->lock){+.+.}-{2:2}, at: p9_conn_cancel+0xaa/0x970 net/9p/trans_fd.c:192

stack backtrace:
CPU: 0 PID: 3683 Comm: kworker/0:5 Not tainted 5.19.0-next-20220808-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/22/2022
Workqueue: events p9_read_work
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
 p9_read_work+0x514/0x10c0 net/9p/trans_fd.c:403
 process_one_work+0x991/0x1610 kernel/workqueue.c:2289
 worker_thread+0x665/0x1080 kernel/workqueue.c:2436
 kthread+0x2e4/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

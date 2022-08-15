Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D598594317
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Aug 2022 00:55:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oNiz2-0003jS-Bz;
	Mon, 15 Aug 2022 22:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3n876YgkbAEY067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oNiyx-0003jH-Ot for v9fs-developer@lists.sourceforge.net;
 Mon, 15 Aug 2022 22:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ah+1dZUt7UeRfkSg4ZXLRhIOVtV2gaNkjc7aI0CWsB8=; b=DhCtn/bxS0l5EQ/Z5Qm5lqoKoE
 euNGH67F+6CyYGSfUxt42FO5KwTLOhg6GK5YMz/WQfqMLCLmFKiSyUt9Gymuwbvd//Wzi9amZGmTX
 stSXYYhasKnOysy6YqaYoCe/dHSJ1flXopk0Y4F+RgdUD9JNdrYLJnB7L799W9G0+7hA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ah+1dZUt7UeRfkSg4ZXLRhIOVtV2gaNkjc7aI0CWsB8=; b=F
 PHBsQ0+s7JoecvEOUfs4k2Uvw6mv4QPE7/tSY6cEMNMQAoFclyErdCA9+V+0ras43Zy+Xtt778Ksc
 iJxppuZdUbjqMrGDrvO/TgPpLiGjVDtgtRj45J7hQ5GK/KCMjrU3tyIJqLNy13PLYv3TZ1E1fAlC2
 6wmVaoaTPYlPyINc=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oNiyb-00037S-QS for v9fs-developer@lists.sourceforge.net;
 Mon, 15 Aug 2022 22:54:49 +0000
Received: by mail-io1-f72.google.com with SMTP id
 g22-20020a056602249600b0067caba4f24bso5001740ioe.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Aug 2022 15:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc;
 bh=Ah+1dZUt7UeRfkSg4ZXLRhIOVtV2gaNkjc7aI0CWsB8=;
 b=iAy40MWc0iD5YXiU6K9U+Us8b2ERpiu6/5A5xN03lZ9F+OuJ82xP1txKazatIOIrww
 M7Z7Yo1RkShWHTnhBtatComQhTxXb8qHWVJbUsg8X9sVI1R4BEHrfky2e52AfMP0Ju5I
 TEJ3Gj21ATeBWMhmRds0u5jhN5WfK2Dt0Ju83Mk2oaxRJ7J+qISOCUBnyz+rXyKTiqWt
 pUhkkE9Zb6gKf1RWX9Kwx7Mzbu6OOrJESBhUCoEA0O8RG/JPptlGdfYDK0+wkfFHdb9T
 N7EvA2zQGd8CoZRKrvpuTNdou5v701M/KzMnxH+fbGqOrZhfxG/e9CASzdawJGHXwZo1
 G9Wg==
X-Gm-Message-State: ACgBeo2J4ITD1RG9stY1s95dciBL2hST0w5j05dM8Vk0FUIZOG8ZnnLT
 +3P9xVtjiJknZOVzFcUsy2qP1SeOHd72o6xOLaiOXh5k//MR
X-Google-Smtp-Source: AA6agR5/rHbEP3eKZ8WQtjVvfdcLY2yMw+rI1yPRRLHG02IyeR16Xo6aTBoscenX1GVyRLfG/xIh94pHlP7UgrdJ+dXHeLrbaFUV
MIME-Version: 1.0
X-Received: by 2002:a05:6638:210d:b0:343:17cb:60a7 with SMTP id
 n13-20020a056638210d00b0034317cb60a7mr8436734jaj.292.1660604063454; Mon, 15
 Aug 2022 15:54:23 -0700 (PDT)
Date: Mon, 15 Aug 2022 15:54:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000509beb05e64f8351@google.com>
From: syzbot <syzbot+c4455787f92b4f78d5b1@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 568035b01cfb
 Linux 6.0-rc1 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=12a5b2a5080000
 kernel config: https://syzkaller.appspot.com/x/.config?x=e706e91b2a4 [...]
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1oNiyb-00037S-QS
Subject: [V9fs-developer] [syzbot] inconsistent lock state in p9_fd_request
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

HEAD commit:    568035b01cfb Linux 6.0-rc1
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12a5b2a5080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e706e91b2a433db
dashboard link: https://syzkaller.appspot.com/bug?extid=c4455787f92b4f78d5b1
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c4455787f92b4f78d5b1@syzkaller.appspotmail.com

================================
WARNING: inconsistent lock state
6.0.0-rc1-syzkaller #0 Not tainted
--------------------------------
inconsistent {IN-HARDIRQ-W} -> {HARDIRQ-ON-W} usage.
syz-executor.3/5046 [HC0[0]:SC0[0]:HE1:SE1] takes:
ffff88801e763818 (&clnt->lock){?...}-{2:2}, at: spin_lock include/linux/spinlock.h:349 [inline]
ffff88801e763818 (&clnt->lock){?...}-{2:2}, at: p9_fd_request+0x85/0x330 net/9p/trans_fd.c:672
{IN-HARDIRQ-W} state was registered at:
  lock_acquire kernel/locking/lockdep.c:5666 [inline]
  lock_acquire+0x1ab/0x570 kernel/locking/lockdep.c:5631
  __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
  _raw_spin_lock_irqsave+0x39/0x50 kernel/locking/spinlock.c:162
  p9_tag_remove net/9p/client.c:367 [inline]
  p9_req_put net/9p/client.c:375 [inline]
  p9_req_put+0xc6/0x250 net/9p/client.c:372
  req_done+0x1de/0x2e0 net/9p/trans_virtio.c:148
  vring_interrupt drivers/virtio/virtio_ring.c:2454 [inline]
  vring_interrupt+0x29d/0x3d0 drivers/virtio/virtio_ring.c:2429
  __handle_irq_event_percpu+0x227/0x870 kernel/irq/handle.c:158
  handle_irq_event_percpu kernel/irq/handle.c:193 [inline]
  handle_irq_event+0xa7/0x1e0 kernel/irq/handle.c:210
  handle_edge_irq+0x25f/0xd00 kernel/irq/chip.c:819
  generic_handle_irq_desc include/linux/irqdesc.h:158 [inline]
  handle_irq arch/x86/kernel/irq.c:231 [inline]
  __common_interrupt+0x9d/0x210 arch/x86/kernel/irq.c:250
  common_interrupt+0xa4/0xc0 arch/x86/kernel/irq.c:240
  asm_common_interrupt+0x22/0x40 arch/x86/include/asm/idtentry.h:640
  lock_is_held_type+0xe/0x140 kernel/locking/lockdep.c:5694
  lock_is_held include/linux/lockdep.h:283 [inline]
  rcu_read_lock_sched_held+0x3a/0x70 kernel/rcu/update.c:125
  trace_lock_release include/trace/events/lock.h:69 [inline]
  lock_release+0x560/0x780 kernel/locking/lockdep.c:5677
  rcu_lock_release include/linux/rcupdate.h:285 [inline]
  rcu_read_unlock include/linux/rcupdate.h:739 [inline]
  batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:412 [inline]
  batadv_nc_worker+0x86b/0xfa0 net/batman-adv/network-coding.c:719
  process_one_work+0x991/0x1610 kernel/workqueue.c:2289
  worker_thread+0x665/0x1080 kernel/workqueue.c:2436
  kthread+0x2e4/0x3a0 kernel/kthread.c:376
  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
irq event stamp: 527
hardirqs last  enabled at (527): [<ffffffff8982206f>] __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:159 [inline]
hardirqs last  enabled at (527): [<ffffffff8982206f>] _raw_spin_unlock_irq+0x1f/0x40 kernel/locking/spinlock.c:202
hardirqs last disabled at (526): [<ffffffff89821e41>] __raw_spin_lock_irq include/linux/spinlock_api_smp.h:117 [inline]
hardirqs last disabled at (526): [<ffffffff89821e41>] _raw_spin_lock_irq+0x41/0x50 kernel/locking/spinlock.c:170
softirqs last  enabled at (0): [<ffffffff8146165e>] copy_process+0x213e/0x7090 kernel/fork.c:2201
softirqs last disabled at (0): [<0000000000000000>] 0x0

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&clnt->lock);
  <Interrupt>
    lock(&clnt->lock);

 *** DEADLOCK ***

no locks held by syz-executor.3/5046.

stack backtrace:
CPU: 0 PID: 5046 Comm: syz-executor.3 Not tainted 6.0.0-rc1-syzkaller #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_usage_bug kernel/locking/lockdep.c:3961 [inline]
 valid_state kernel/locking/lockdep.c:3973 [inline]
 mark_lock_irq kernel/locking/lockdep.c:4176 [inline]
 mark_lock.part.0.cold+0x18/0xd8 kernel/locking/lockdep.c:4632
 mark_lock kernel/locking/lockdep.c:4596 [inline]
 mark_usage kernel/locking/lockdep.c:4541 [inline]
 __lock_acquire+0x847/0x56d0 kernel/locking/lockdep.c:5007
 lock_acquire kernel/locking/lockdep.c:5666 [inline]
 lock_acquire+0x1ab/0x570 kernel/locking/lockdep.c:5631
 __raw_spin_lock include/linux/spinlock_api_smp.h:133 [inline]
 _raw_spin_lock+0x2a/0x40 kernel/locking/spinlock.c:154
 spin_lock include/linux/spinlock.h:349 [inline]
 p9_fd_request+0x85/0x330 net/9p/trans_fd.c:672
 p9_client_rpc+0x2f0/0xce0 net/9p/client.c:660
 p9_client_version net/9p/client.c:880 [inline]
 p9_client_create+0xaec/0x1070 net/9p/client.c:985
 v9fs_session_init+0x1e2/0x1810 fs/9p/v9fs.c:408
 v9fs_mount+0xba/0xc90 fs/9p/vfs_super.c:126
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f072b089279
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f072c122168 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f072b19bf80 RCX: 00007f072b089279
RDX: 0000000020000040 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00007f072b0e3189 R08: 0000000020000400 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffcabcfe84f R14: 00007f072c122300 R15: 0000000000022000
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

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D22FE4EB52C
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Mar 2022 23:23:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZJJJ-0005FX-NV; Tue, 29 Mar 2022 21:23:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3xXhDYgkbANwQWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nZJJH-0005FR-R2
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 21:23:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v0K8DWFbOQdjknidpBMsBGitjb/a7o3BQTSVa0TtMn8=; b=jwbH/zl6U82pNONWd+AcmMXNqe
 MsYJGkF85rDsH6it3ZTNbgPKn5ao/2Wh2xrOCLzgJ5CJY0og6eVpQ7R5wLTUq6NyVvUdxeSPu7Vjj
 y/H08xwDrXec6ohbg44jFAJvWS/4ssjyuFjHANAttFrgeNa3vsHK362gOQ0kTO91JCCY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v0K8DWFbOQdjknidpBMsBGitjb/a7o3BQTSVa0TtMn8=; b=j
 NJ6l9K7HGVfObki7n0IY5+LBYDWYaWcEuNQVjxcUBUUWN2UmQAtsXrBOObjoWJ5Vh2sJ5KEYqi/8r
 ZorHt/3Pv+DumcasaJ33yK/DxtyxnUobFfDw/2/thRIVrrVylPtQCGxSaZylo9aBfglMMXoNPw2q3
 mplxJY//n/zbK6v8=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZJJD-00GFca-H3
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 21:23:26 +0000
Received: by mail-io1-f69.google.com with SMTP id
 g16-20020a05660203d000b005f7b3b0642eso13163307iov.16
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 14:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=v0K8DWFbOQdjknidpBMsBGitjb/a7o3BQTSVa0TtMn8=;
 b=G2eCNY84+qlVsWPrgi6YCE5j9OHApCyw7VObSVQ9S2uqPKOzn7mi2YpgP4P0GfrEVC
 2H1gcXSZsHLTx9dr9pYwHmg582yZmmAPqYpd5Z8JutmRwS0F0xuqM3EqET6sWDPZAZGZ
 fCU+aqH/BKcnkwFfdog8OE1VfJ8ALM0wlXXxMEeJA9Z4RZojNE3dLubsNcB4ad4ZVgA9
 4NgfL4yR8HdEqkpRh4+bF4OkQNULHWzoYzEK8vVpqIn2MndjTdRPeRHxLMSzvFrq5Yzp
 Y49uDV1oMe1s+u4iDSEWOUKK/Bz88p6Hw97CGst/j1jZlU27b35kpad/Ey8yuS3dM8YJ
 rtnQ==
X-Gm-Message-State: AOAM531LgnO2y1OKzuVFiCcg8yr/wNxM00mDMFUKb5XQ6LMdxyx8fQG9
 XG/Q9MUB2kG69c+9E0Uhr3S2yhj/JRE4tr+yA+JX8rDeM1wj
X-Google-Smtp-Source: ABdhPJy2Q44JWwuNISHDB1lR4wUAf+xBKHlLZWsVvjbrrJFBcwbu7QguAztOU+BXHw+hj+xz5j7IKV9oWzqiD6cweD8+0ZZawIV9
MIME-Version: 1.0
X-Received: by 2002:a05:6638:14c6:b0:319:e02c:1fc2 with SMTP id
 l6-20020a05663814c600b00319e02c1fc2mr16504041jak.44.1648588997598; Tue, 29
 Mar 2022 14:23:17 -0700 (PDT)
Date: Tue, 29 Mar 2022 14:23:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009523b605db620972@google.com>
From: syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, 
 lucho@ionkov.net, netdev@vger.kernel.org, pabeni@redhat.com, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 8515d05bf6bc
 Add linux-next specific files for 20220328 git tree: linux-next console
 output:
 https://syzkaller.appspot.com/x/log.txt?x=155abcc3700000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1nZJJD-00GFca-H3
Subject: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
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

HEAD commit:    8515d05bf6bc Add linux-next specific files for 20220328
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=155abcc3700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=530c68bef4e2b8a8
dashboard link: https://syzkaller.appspot.com/bug?extid=bde0f89deacca7c765b8
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
5.17.0-next-20220328-syzkaller #0 Not tainted
------------------------------------------------------
kworker/1:1/26 is trying to acquire lock:
ffff88807eece460 (sb_writers#3){.+.+}-{0:0}, at: p9_fd_write net/9p/trans_fd.c:428 [inline]
ffff88807eece460 (sb_writers#3){.+.+}-{0:0}, at: p9_write_work+0x25e/0xca0 net/9p/trans_fd.c:479

but task is already holding lock:
ffffc90000a1fda8 ((work_completion)(&m->wq)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #3 ((work_completion)(&m->wq)){+.+.}-{0:0}:
       process_one_work+0x905/0x1610 kernel/workqueue.c:2265
       worker_thread+0x665/0x1080 kernel/workqueue.c:2436
       kthread+0x2e9/0x3a0 kernel/kthread.c:376
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298

-> #2 ((wq_completion)events){+.+.}-{0:0}:
       flush_workqueue+0x164/0x1440 kernel/workqueue.c:2831
       flush_scheduled_work include/linux/workqueue.h:583 [inline]
       ext4_put_super+0x99/0x1150 fs/ext4/super.c:1202
       generic_shutdown_super+0x14c/0x400 fs/super.c:462
       kill_block_super+0x97/0xf0 fs/super.c:1394
       deactivate_locked_super+0x94/0x160 fs/super.c:332
       deactivate_super+0xad/0xd0 fs/super.c:363
       cleanup_mnt+0x3a2/0x540 fs/namespace.c:1186
       task_work_run+0xdd/0x1a0 kernel/task_work.c:164
       resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
       exit_to_user_mode_loop kernel/entry/common.c:183 [inline]
       exit_to_user_mode_prepare+0x23c/0x250 kernel/entry/common.c:215
       __syscall_exit_to_user_mode_work kernel/entry/common.c:297 [inline]
       syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:308
       do_syscall_64+0x42/0x80 arch/x86/entry/common.c:86
       entry_SYSCALL_64_after_hwframe+0x44/0xae

-> #1 (&type->s_umount_key#32){++++}-{3:3}:
       down_read+0x98/0x440 kernel/locking/rwsem.c:1461
       iterate_supers+0xdb/0x290 fs/super.c:692
       drop_caches_sysctl_handler+0xdb/0x110 fs/drop_caches.c:62
       proc_sys_call_handler+0x4a1/0x6e0 fs/proc/proc_sysctl.c:604
       call_write_iter include/linux/fs.h:2080 [inline]
       do_iter_readv_writev+0x3d1/0x640 fs/read_write.c:726
       do_iter_write+0x182/0x700 fs/read_write.c:852
       vfs_iter_write+0x70/0xa0 fs/read_write.c:893
       iter_file_splice_write+0x723/0xc70 fs/splice.c:689
       do_splice_from fs/splice.c:767 [inline]
       direct_splice_actor+0x110/0x180 fs/splice.c:936
       splice_direct_to_actor+0x34b/0x8c0 fs/splice.c:891
       do_splice_direct+0x1a7/0x270 fs/splice.c:979
       do_sendfile+0xae0/0x1240 fs/read_write.c:1246
       __do_sys_sendfile64 fs/read_write.c:1305 [inline]
       __se_sys_sendfile64 fs/read_write.c:1297 [inline]
       __x64_sys_sendfile64+0x149/0x210 fs/read_write.c:1297
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x35/0x80 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x44/0xae

-> #0 (sb_writers#3){.+.+}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3096 [inline]
       check_prevs_add kernel/locking/lockdep.c:3219 [inline]
       validate_chain kernel/locking/lockdep.c:3834 [inline]
       __lock_acquire+0x2ac6/0x56c0 kernel/locking/lockdep.c:5060
       lock_acquire kernel/locking/lockdep.c:5672 [inline]
       lock_acquire+0x1ab/0x510 kernel/locking/lockdep.c:5637
       percpu_down_read include/linux/percpu-rwsem.h:51 [inline]
       __sb_start_write include/linux/fs.h:1728 [inline]
       sb_start_write include/linux/fs.h:1798 [inline]
       file_start_write include/linux/fs.h:2815 [inline]
       kernel_write fs/read_write.c:564 [inline]
       kernel_write+0x2ac/0x540 fs/read_write.c:555
       p9_fd_write net/9p/trans_fd.c:428 [inline]
       p9_write_work+0x25e/0xca0 net/9p/trans_fd.c:479
       process_one_work+0x996/0x1610 kernel/workqueue.c:2289
       worker_thread+0x665/0x1080 kernel/workqueue.c:2436
       kthread+0x2e9/0x3a0 kernel/kthread.c:376
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298

other info that might help us debug this:

Chain exists of:
  sb_writers#3 --> (wq_completion)events --> (work_completion)(&m->wq)

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock((work_completion)(&m->wq));
                               lock((wq_completion)events);
                               lock((work_completion)(&m->wq));
  lock(sb_writers#3);

 *** DEADLOCK ***

2 locks held by kworker/1:1/26:
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1280 [inline]
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:636 [inline]
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:663 [inline]
 #0: ffff888010c64d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x87a/0x1610 kernel/workqueue.c:2260
 #1: ffffc90000a1fda8 ((work_completion)(&m->wq)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264

stack backtrace:
CPU: 1 PID: 26 Comm: kworker/1:1 Not tainted 5.17.0-next-20220328-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: events p9_write_work
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 check_noncircular+0x25f/0x2e0 kernel/locking/lockdep.c:2176
 check_prev_add kernel/locking/lockdep.c:3096 [inline]
 check_prevs_add kernel/locking/lockdep.c:3219 [inline]
 validate_chain kernel/locking/lockdep.c:3834 [inline]
 __lock_acquire+0x2ac6/0x56c0 kernel/locking/lockdep.c:5060
 lock_acquire kernel/locking/lockdep.c:5672 [inline]
 lock_acquire+0x1ab/0x510 kernel/locking/lockdep.c:5637
 percpu_down_read include/linux/percpu-rwsem.h:51 [inline]
 __sb_start_write include/linux/fs.h:1728 [inline]
 sb_start_write include/linux/fs.h:1798 [inline]
 file_start_write include/linux/fs.h:2815 [inline]
 kernel_write fs/read_write.c:564 [inline]
 kernel_write+0x2ac/0x540 fs/read_write.c:555
 p9_fd_write net/9p/trans_fd.c:428 [inline]
 p9_write_work+0x25e/0xca0 net/9p/trans_fd.c:479
 process_one_work+0x996/0x1610 kernel/workqueue.c:2289
 worker_thread+0x665/0x1080 kernel/workqueue.c:2436
 kthread+0x2e9/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298
 </TASK>
usb 4-1: new high-speed USB device number 72 using dummy_hcd
usb 4-1: New USB device found, idVendor=1b3d, idProduct=0193, bcdDevice= 8.4d
usb 4-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
usb 4-1: config 0 descriptor??
ftdi_sio 4-1:0.0: FTDI USB Serial Device converter detected
usb 4-1: Detected FT232RL
ftdi_sio ttyUSB0: Unable to read latency timer: -71
ftdi_sio ttyUSB0: Unable to write latency timer: -71
ftdi_sio 4-1:0.0: GPIO initialisation failed: -71
usb 4-1: FTDI USB Serial Device converter now attached to ttyUSB0
usb 4-1: USB disconnect, device number 72
ftdi_sio ttyUSB0: FTDI USB Serial Device converter now disconnected from ttyUSB0
ftdi_sio 4-1:0.0: device disconnected
usb 4-1: new high-speed USB device number 73 using dummy_hcd
usb 4-1: New USB device found, idVendor=1b3d, idProduct=0193, bcdDevice= 8.4d
usb 4-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
usb 4-1: config 0 descriptor??
ftdi_sio 4-1:0.0: FTDI USB Serial Device converter detected
usb 4-1: Detected FT232RL
ftdi_sio ttyUSB0: Unable to read latency timer: -71
ftdi_sio ttyUSB0: Unable to write latency timer: -71
ftdi_sio 4-1:0.0: GPIO initialisation failed: -71
usb 4-1: FTDI USB Serial Device converter now attached to ttyUSB0
usb 4-1: USB disconnect, device number 73
ftdi_sio ttyUSB0: FTDI USB Serial Device converter now disconnected from ttyUSB0
ftdi_sio 4-1:0.0: device disconnected


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

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBA252B7C
	for <lists+v9fs-developer@lfdr.de>; Wed, 26 Aug 2020 12:38:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kAsox-0002B4-LA; Wed, 26 Aug 2020 10:38:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3lztGXwkbACgWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kAsow-0002At-Po
 for v9fs-developer@lists.sourceforge.net; Wed, 26 Aug 2020 10:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zygVL94X6Q9/gOxylja2ASyPRPX3GqyZ0wHqqF523eI=; b=LSXUBOp4LQtJAgO0Kj+5kMGOET
 4SO/Fwi2JEPkwznEFSF93u7zeHHLesg3eBZsWo3MGFojuodjnwzjCElIovJyd47+jMLfEzg1obyo/
 q8DfDfqX38ErxSkDsf9cBIQRcarv5f+rV25GDqCKAiGu3uw/OWP4xalOlPHhFX7iJfFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zygVL94X6Q9/gOxylja2ASyPRPX3GqyZ0wHqqF523eI=; b=V
 BL4teGUhj5wW8qqD5t2R6ar2cwEKGopY9x9J2kSME+hC1xaMPxth0eysFwy0vi7X8zs2HiouUjPhI
 b7AIsMFfXlrYb6KvtCHGGwf2Ow4wA7IpatQXwUrZnYwbTamEzRs3tXHLDIwNfXHXUZSDuLkNTGWXP
 24uiDr5ArDP0I6l0=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAsou-006myL-Sh
 for v9fs-developer@lists.sourceforge.net; Wed, 26 Aug 2020 10:38:22 +0000
Received: by mail-io1-f72.google.com with SMTP id w9so885597ior.20
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Aug 2020 03:38:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=zygVL94X6Q9/gOxylja2ASyPRPX3GqyZ0wHqqF523eI=;
 b=Lhjij6topCSXxltu3YPnZ8DtrlJWDXBcU/U2zcH3yrQgIDEMrKP1IenDgmlUmmitIZ
 FaZO6q+6tfSmCObVusqMpx8OxFsdOGWzU21NFKFRjkS5fMDHjvUNQq1hZzgwug3lWxvD
 xBaO4zXN71xjKyBlCbi30kvPXJqxkbu3YFR2MfOhiukUzYbxGyj7dEQBE0F3N7jCJ60D
 +5tbcIAH1gBMz//q0ch3AbluTBTNVFuAbGFoOZdBJmRw3UZQqQHOx5rcu45Le7Zw+HIC
 zd5TCVEdrJtQ6eDB6qmPjHuS8Cm0oEaBsnpd00r0ctaJ9ARQtbEdO9oO6cUquFspGZft
 eWMg==
X-Gm-Message-State: AOAM532ioq934+WGnfqyqI/FprXC2zhv7W3hal/+MYM2aNdrbyca/Vkd
 apeu+4vGJP9ssW5Y3LbtB9DDYlczhJfwcCd+4uxt4PNTvL2Z
X-Google-Smtp-Source: ABdhPJw08lyBJzdODV2Nkxfhuk4RHh+Cw2MEsa6J9AamNBzV1YHNImbwq9QQ84qsc0HcufY/KZOLJ+Gx1fTymR3g1Kve5aQLypQ6
MIME-Version: 1.0
X-Received: by 2002:a02:6d0e:: with SMTP id m14mr14520416jac.23.1598438295340; 
 Wed, 26 Aug 2020 03:38:15 -0700 (PDT)
Date: Wed, 26 Aug 2020 03:38:15 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ca0c6805adc56a38@google.com>
From: syzbot <syzbot+fbe34b643e462f65e542@syzkaller.appspotmail.com>
To: alsa-devel@alsa-project.org, asmadeus@codewreck.org, broonie@kernel.org, 
 daniel.baluta@nxp.com, davem@davemloft.net, ericvh@gmail.com,
 kuba@kernel.org, 
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, perex@perex.cz, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, tiwai@suse.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1kAsou-006myL-Sh
Subject: [V9fs-developer] INFO: task can't die in p9_fd_close
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

HEAD commit:    494d311a Add linux-next specific files for 20200821
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10615b36900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a61d44f28687f508
dashboard link: https://syzkaller.appspot.com/bug?extid=fbe34b643e462f65e542
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15920a05900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13a78539900000

The issue was bisected to:

commit af3acca3e35c01920fe476f730dca7345d0a48df
Author: Daniel Baluta <daniel.baluta@nxp.com>
Date:   Tue Feb 20 12:53:10 2018 +0000

    ASoC: ak5558: Fix style for SPDX identifier

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12ea5d39900000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11ea5d39900000
console output: https://syzkaller.appspot.com/x/log.txt?x=16ea5d39900000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fbe34b643e462f65e542@syzkaller.appspotmail.com
Fixes: af3acca3e35c ("ASoC: ak5558: Fix style for SPDX identifier")

INFO: task syz-executor475:7005 can't die for more than 143 seconds.
task:syz-executor475 state:D stack:27208 pid: 7005 ppid:  6875 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:3778 [inline]
 __schedule+0x8e5/0x21e0 kernel/sched/core.c:4527
 schedule+0xd0/0x2a0 kernel/sched/core.c:4602
 schedule_timeout+0x1d8/0x250 kernel/time/timer.c:1855
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x163/0x260 kernel/sched/completion.c:138
 __flush_work+0x51f/0xab0 kernel/workqueue.c:3046
 __cancel_work_timer+0x5de/0x700 kernel/workqueue.c:3133
 p9_conn_destroy net/9p/trans_fd.c:889 [inline]
 p9_fd_close+0x305/0x520 net/9p/trans_fd.c:919
 p9_client_destroy+0xbe/0x360 net/9p/client.c:1086
 v9fs_session_close+0x45/0x2c0 fs/9p/v9fs.c:498
 v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:222
 deactivate_locked_super+0x94/0x160 fs/super.c:335
 v9fs_mount+0x77c/0x970 fs/9p/vfs_super.c:203
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1547
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x1287/0x1e20 fs/namespace.c:3214
 do_mount fs/namespace.c:3227 [inline]
 __do_sys_mount fs/namespace.c:3435 [inline]
 __se_sys_mount fs/namespace.c:3412 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3412
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x446eb9
Code: Bad RIP value.
RSP: 002b:00007f6a133add98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00000000006dcc48 RCX: 0000000000446eb9
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00000000006dcc40 R08: 00000000200028c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000006dcc4c
R13: 00000000200003c0 R14: 00000000004af538 R15: 0000000000000000
INFO: task syz-executor475:7005 blocked for more than 143 seconds.
      Not tainted 5.9.0-rc1-next-20200821-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor475 state:D stack:27208 pid: 7005 ppid:  6875 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:3778 [inline]
 __schedule+0x8e5/0x21e0 kernel/sched/core.c:4527
 schedule+0xd0/0x2a0 kernel/sched/core.c:4602
 schedule_timeout+0x1d8/0x250 kernel/time/timer.c:1855
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x163/0x260 kernel/sched/completion.c:138
 __flush_work+0x51f/0xab0 kernel/workqueue.c:3046
 __cancel_work_timer+0x5de/0x700 kernel/workqueue.c:3133
 p9_conn_destroy net/9p/trans_fd.c:889 [inline]
 p9_fd_close+0x305/0x520 net/9p/trans_fd.c:919
 p9_client_destroy+0xbe/0x360 net/9p/client.c:1086
 v9fs_session_close+0x45/0x2c0 fs/9p/v9fs.c:498
 v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:222
 deactivate_locked_super+0x94/0x160 fs/super.c:335
 v9fs_mount+0x77c/0x970 fs/9p/vfs_super.c:203
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1547
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x1287/0x1e20 fs/namespace.c:3214
 do_mount fs/namespace.c:3227 [inline]
 __do_sys_mount fs/namespace.c:3435 [inline]
 __se_sys_mount fs/namespace.c:3412 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3412
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x446eb9
Code: Bad RIP value.
RSP: 002b:00007f6a133add98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00000000006dcc48 RCX: 0000000000446eb9
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00000000006dcc40 R08: 00000000200028c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000006dcc4c
R13: 00000000200003c0 R14: 00000000004af538 R15: 0000000000000000

Showing all locks held in the system:
1 lock held by khungtaskd/1173:
 #0: ffffffff89c675c0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:5825
1 lock held by in:imklog/6540:
2 locks held by kworker/0:1/6858:
 #0: ffff8880ae635dd8 (&rq->lock){-.-.}-{2:2}, at: rq_lock kernel/sched/sched.h:1292 [inline]
 #0: ffff8880ae635dd8 (&rq->lock){-.-.}-{2:2}, at: __schedule+0x232/0x21e0 kernel/sched/core.c:4445
 #1: ffff8880ae620ec8 (&per_cpu_ptr(group->pcpu, cpu)->seq){-.-.}-{0:0}, at: psi_task_switch+0x2fb/0x400 kernel/sched/psi.c:833
2 locks held by kworker/0:2/6898:
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff8880aa063d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x82b/0x1670 kernel/workqueue.c:2240
 #1: ffffc90005577da8 ((work_completion)(&m->wq)){+.+.}-{0:0}, at: process_one_work+0x85f/0x1670 kernel/workqueue.c:2244
1 lock held by syz-executor475/6960:
 #0: ffff8880a7c7a0e0 (&type->s_umount_key#45/1){+.+.}-{3:3}, at: alloc_super+0x201/0xa90 fs/super.c:229
1 lock held by syz-executor475/7064:
 #0: ffff8880a6c9c0e0 (&type->s_umount_key#45/1){+.+.}-{3:3}, at: alloc_super+0x201/0xa90 fs/super.c:229
2 locks held by kworker/0:3/7070:
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff8880aa073538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: process_one_work+0x82b/0x1670 kernel/workqueue.c:2240
 #1: ffffc90006157da8 ((work_completion)(&rew.rew_work)){+.+.}-{0:0}, at: process_one_work+0x85f/0x1670 kernel/workqueue.c:2244
1 lock held by syz-executor475/7279:
 #0: ffff88809476e0e0 (&type->s_umount_key#45/1){+.+.}-{3:3}, at: alloc_super+0x201/0xa90 fs/super.c:229
1 lock held by syz-executor475/32328:
 #0: ffffffff89c6bc28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:322 [inline]
 #0: ffffffff89c6bc28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x274/0x5f0 kernel/rcu/tree_exp.h:836
1 lock held by syz-executor475/32335:
 #0: ffffffff89c6bc28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:322 [inline]
 #0: ffffffff89c6bc28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x274/0x5f0 kernel/rcu/tree_exp.h:836

=============================================

NMI backtrace for cpu 1
CPU: 1 PID: 1173 Comm: khungtaskd Not tainted 5.9.0-rc1-next-20200821-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 nmi_cpu_backtrace.cold+0x44/0xd7 lib/nmi_backtrace.c:105
 nmi_trigger_cpumask_backtrace+0x1b3/0x223 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:147 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:253 [inline]
 watchdog+0xd89/0xf30 kernel/hung_task.c:339
 kthread+0x3b5/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 PID: 32335 Comm: syz-executor475 Not tainted 5.9.0-rc1-next-20200821-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:write_comp_data+0x0/0x80 kernel/kcov.c:212
Code: e8 ff ff cc cc cc cc cc cc cc 65 48 8b 04 25 c0 fe 01 00 48 8b 80 20 14 00 00 c3 0f 1f 44 00 00 66 2e 0f 1f 84 00 00 00 00 00 <49> 89 f2 65 8b 05 76 90 8d 7e 65 48 8b 34 25 c0 fe 01 00 a9 00 01
RSP: 0018:ffffc90009c47ab8 EFLAGS: 00000086
RAX: 0000000000000000 RBX: ffff888096e0e000 RCX: ffffffff8134b5d6
RDX: ffff888116e0e000 RSI: ffff888096e0e000 RDI: 0000000000000006
RBP: ffff888116e0e000 R08: 0000000000000001 R09: ffff8880ae736dc7
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000000
R13: ffff888096e0e000 R14: ffff8880ae632c80 R15: ffff8880a43f9f00
FS:  00007f6a133ae700(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f19a2450710 CR3: 0000000097214000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 __phys_addr+0x26/0x110 arch/x86/mm/physaddr.c:20
 virt_to_head_page include/linux/mm.h:846 [inline]
 qlink_to_cache mm/kasan/quarantine.c:128 [inline]
 qlist_move_cache+0x72/0xd0 mm/kasan/quarantine.c:278
 per_cpu_remove_cache+0x47/0x60 mm/kasan/quarantine.c:296
 on_each_cpu+0xf0/0x240 kernel/smp.c:834
 quarantine_remove_cache+0x40/0xd0 mm/kasan/quarantine.c:313
 shutdown_cache mm/slab_common.c:449 [inline]
 kmem_cache_destroy+0x50/0x120 mm/slab_common.c:497
 p9_client_destroy+0x24b/0x360 net/9p/client.c:1097
 v9fs_session_close+0x45/0x2c0 fs/9p/v9fs.c:498
 v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:222
 deactivate_locked_super+0x94/0x160 fs/super.c:335
 v9fs_mount+0x77c/0x970 fs/9p/vfs_super.c:203
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1547
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x1287/0x1e20 fs/namespace.c:3214
 do_mount fs/namespace.c:3227 [inline]
 __do_sys_mount fs/namespace.c:3435 [inline]
 __se_sys_mount fs/namespace.c:3412 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3412
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x446eb9
Code: e8 dc e6 ff ff 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 ab 05 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007f6a133add98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00000000006dcc48 RCX: 0000000000446eb9
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00000000006dcc40 R08: 00000000200028c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000006dcc4c
R13: 00000000200003c0 R14: 00000000004af538 R15: 0000000000000000


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

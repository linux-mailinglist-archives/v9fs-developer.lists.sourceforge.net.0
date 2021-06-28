Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DA93B58D7
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Jun 2021 07:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lxkGu-0007VQ-0m; Mon, 28 Jun 2021 05:57:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3umTZYAkbAPUpvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1lxkGt-0007VA-4P
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Jun 2021 05:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZiHOP66CN3/d3r09QWR20u5KTe63dZhDT9GX98ADZE=; b=KtYuC5j9rH/NDVsrKVPhx5XAIZ
 rt71QLK7T2hzzvy+n2+tkWnnaKnszMMbCF9FwntIbextClKrxvJU3KJp4ArffWVeY1bJwlkoFskad
 qPmfKwxsIobe2TXsCOzOU6jwk7k26frHBsY5W3TM65R3Dy7xEZqRip42uyZhklXYrENI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NZiHOP66CN3/d3r09QWR20u5KTe63dZhDT9GX98ADZE=; b=O
 d+i1ltSisQduSjkQ1BpGrYhakFlhuLUD0d15Y9LfOzZH9RJAgdSaoCpYKpP3fRuGuUAcwH1nlMSGu
 DGKdqm0WLSXe7k+LKXmzEiVeKR70j5hCUdoQr4WhEAoyJ8OW1Za0mpc+4a5Dubb6qTIl8DhXGxu58
 VfKg6c/Wq5vT/Qxk=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lxkGm-001Rm8-Ku
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Jun 2021 05:57:29 +0000
Received: by mail-io1-f70.google.com with SMTP id
 w22-20020a5ed6160000b02904f28b1d759dso5608702iom.8
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 27 Jun 2021 22:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=NZiHOP66CN3/d3r09QWR20u5KTe63dZhDT9GX98ADZE=;
 b=mFGUFKAHV2xQEV9ZPKh1DLMCK7RqFQ5cvAdnVP2nEn2GGk5xf2NivcsBJxNl6r/g9D
 4K9nUK/rp5QoAb9NmobyrHgULM2YvvaRn5HRXtzTwqDJO+/F2UaRYA6wXtF0lnNZOB75
 cYf4ut7ND3FZ8VeL+SfOrrgXxeKJmK2/J+pOcXPstu1AYVtozSa8TqsTmJMWyx3sNFsK
 T2K//zvv8Gf9dtaH3i6nYfYqeXA0gLR4wPxk1a9nAzntODRH4uV0p+aWSNxPszLrH5L/
 kkBxqfuKqKhDkJvb578z862+5Ne3UtERercTWJ2BmZwBM3cTSOzBKk8C1VrDdSWYxngd
 sLFQ==
X-Gm-Message-State: AOAM530NOlRS6i+ujROQMAd6RrpMUtCUrrPZZOl5GEXLFRgouz4ZQcvu
 Lj1Ty06E+7ExnxnZJ63gwqlX7VZ4auiHb+izRbXWdQO60cIb
X-Google-Smtp-Source: ABdhPJyVpCwX1N8AuMDdD5DBKGlQWtCf2XKmIlAljvfGYQzEV66j1fnci6D6i9DyvzjYqPhyRYwdvaPHdX0++rYkrNEepIueusfi
MIME-Version: 1.0
X-Received: by 2002:a6b:5c0a:: with SMTP id z10mr19934094ioh.122.1624859834952; 
 Sun, 27 Jun 2021 22:57:14 -0700 (PDT)
Date: Sun, 27 Jun 2021 22:57:14 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000045ad9705c5cd29ab@google.com>
From: syzbot <syzbot+716aab0e63b2895e1811@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.70 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1lxkGm-001Rm8-Ku
Subject: [V9fs-developer] [syzbot] INFO: task can't die in p9_client_rpc (3)
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

HEAD commit:    a1f92694 Add linux-next specific files for 20210518
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10805a64300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d612e75ffd53a6d3
dashboard link: https://syzkaller.appspot.com/bug?extid=716aab0e63b2895e1811

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+716aab0e63b2895e1811@syzkaller.appspotmail.com

INFO: task syz-executor.2:17696 can't die for more than 143 seconds.
task:syz-executor.2  state:D stack:27376 pid:17696 ppid:  8468 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4688 [inline]
 __schedule+0xb38/0x58c0 kernel/sched/core.c:5945
 schedule+0xcf/0x270 kernel/sched/core.c:6024
 p9_client_rpc+0x405/0x1240 net/9p/client.c:759
 p9_client_flush+0x1f9/0x430 net/9p/client.c:667
 p9_client_rpc+0xfe3/0x1240 net/9p/client.c:784
 p9_client_version net/9p/client.c:955 [inline]
 p9_client_create+0xae1/0x1110 net/9p/client.c:1055
 v9fs_session_init+0x1dd/0x17b0 fs/9p/v9fs.c:406
 v9fs_mount+0x79/0x9c0 fs/9p/vfs_super.c:126
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1498
 do_new_mount fs/namespace.c:2905 [inline]
 path_mount+0x132a/0x1fa0 fs/namespace.c:3235
 do_mount fs/namespace.c:3248 [inline]
 __do_sys_mount fs/namespace.c:3456 [inline]
 __se_sys_mount fs/namespace.c:3433 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3433
 do_syscall_64+0x31/0xb0 arch/x86/entry/common.c:47
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x4665d9
RSP: 002b:00007f42a9fe9188 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 000000000056bf80 RCX: 00000000004665d9
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00000000004bfcb9 R08: 0000000020000440 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000056bf80
R13: 00007ffdec5a8f0f R14: 00007f42a9fe9300 R15: 0000000000022000

Showing all locks held in the system:
1 lock held by khungtaskd/1641:
 #0: ffffffff8c17afe0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6333
1 lock held by in:imklog/8364:
 #0: ffff888025c12370 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:990
4 locks held by rs:main Q:Reg/8365:
 #0: ffff8880b9c35718 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x2b/0x120 kernel/sched/core.c:460
 #1: ffff8880b9c1f988 (&per_cpu_ptr(group->pcpu, cpu)->seq){-.-.}-{0:0}, at: psi_task_switch+0x24c/0x670 kernel/sched/psi.c:872
 #2: ffff88802e7cf230 (&sb->s_type->i_mutex_key#10){++++}-{3:3}, at: inode_lock include/linux/fs.h:774 [inline]
 #2: ffff88802e7cf230 (&sb->s_type->i_mutex_key#10){++++}-{3:3}, at: ext4_buffered_write_iter+0xb6/0x4d0 fs/ext4/file.c:263
 #3: ffff88802e7cf4f8 (&ei->i_raw_lock){+.+.}-{2:2}, at: spin_lock include/linux/spinlock.h:359 [inline]
 #3: ffff88802e7cf4f8 (&ei->i_raw_lock){+.+.}-{2:2}, at: ext4_do_update_inode fs/ext4/inode.c:5033 [inline]
 #3: ffff88802e7cf4f8 (&ei->i_raw_lock){+.+.}-{2:2}, at: ext4_mark_iloc_dirty+0x213/0x38d0 fs/ext4/inode.c:5724
2 locks held by agetty/8383:
 #0: ffff888015b94098 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x22/0x80 drivers/tty/tty_ldisc.c:253
 #1: ffffc90000fdc2e8 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0xcf0/0x1230 drivers/tty/n_tty.c:2113

=============================================



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

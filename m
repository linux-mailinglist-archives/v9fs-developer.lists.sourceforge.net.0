Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF706262B0
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Nov 2022 21:18:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1otaTU-0001jN-7q;
	Fri, 11 Nov 2022 20:18:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <37q1uYwkbACcVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1otaTO-0001j3-A5 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 20:17:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gyaZcp8B8nRUIyPycYcHuv+4RGt52VgPhOpupxsL+qw=; b=KTcDkaSZz7YKoB0n1vYBUUFgs4
 aBjMDgwf4hy1CyHI4z0Bw743D2Gmvo0vr/1Zhd5YMooqQ1lOeDL6hCCzGLgW2oa8nmByWlg6emHAJ
 k0meIeJWJS1r8jIb2XVXbxTUJc6cDQ3npsEd8phfiIqDmUjHLAV28/8LI7/5Enrkp52Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gyaZcp8B8nRUIyPycYcHuv+4RGt52VgPhOpupxsL+qw=; b=D
 Oi1cLwqdceM0RZh1AvK2RMhw2ljG5Lh9Ai0+5aNCH74CaamvhVaeQGNHP9S0aAJ9bn0WnC1a+GkiO
 azSfW9Y4Non7bLMHjXTBeh2eSeOsGsuJfHmA6DqLqd9yj6szUyaVu2xeLRkDmgdyUaHN3HiKgEPzZ
 6o6D4j463i5MwoNQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1otaTM-004eT4-J5 for v9fs-developer@lists.sourceforge.net;
 Fri, 11 Nov 2022 20:17:58 +0000
Received: by mail-il1-f199.google.com with SMTP id
 c4-20020a056e020bc400b0030098df879dso4627526ilu.6
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 11 Nov 2022 12:17:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gyaZcp8B8nRUIyPycYcHuv+4RGt52VgPhOpupxsL+qw=;
 b=yn2zvDIe8AWRjDsfsKvu5r31HISNNG20GuNIYVpOh8iTm6QL0Kp6ePLdInk/IlPrfp
 qiSTYugcHds29O2XhjWLEGtODZykTNzV2nk3IQcfCbu9DcUnDZq48C2s1aE2ey8OSVpn
 Hb2AywmNGPnDyNCWVUSVxGkrVRkjbGosyTErFzOYyvWds4ShLwYUpVMVVc2SbBEO7v0b
 NbszUDm0e5HhsRGHddpXBSpc7+Ra18Lc/+BbRSOArq4jYSQHcRsStCQ/+8kYjzbgxkFV
 ZJ2acyvPIgTHN6FwQ/mrkZ9aScvJIGvqCehuPw1QCp3gKdGKxqRINUW0D87OvcUy7yDm
 T9LA==
X-Gm-Message-State: ANoB5pmcAc5KolgcYj37UhA1BlvJm5Zagw/pqgiKmFP3a7YujnqjMLrn
 QzeLUN+BmdoFXPR0nbDoW7YPNTa8WWsUr8a5Hk/+gT/yAUcp
X-Google-Smtp-Source: AA0mqf7aY02f/kA19ZQ1ZdkUtTdYfGVMXDVjfXYR51Rq8aSOU+asihFQhkFWO5oFHHuZ0HKrmu5hAbVvT2p4SGDGFglCBefL6CU7
MIME-Version: 1.0
X-Received: by 2002:a92:c144:0:b0:302:36a2:4d3b with SMTP id
 b4-20020a92c144000000b0030236a24d3bmr1783894ilh.258.1668197870991; Fri, 11
 Nov 2022 12:17:50 -0800 (PST)
Date: Fri, 11 Nov 2022 12:17:50 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008400d405ed3795a5@google.com>
From: syzbot <syzbot+84a3c66e4b9dbbb678a8@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: f0c4d9fc9cc9
 Linux 6.1-rc4 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=17204056880000
 ke [...] Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1otaTM-004eT4-J5
Subject: [V9fs-developer] [syzbot] WARNING in ida_free
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

HEAD commit:    f0c4d9fc9cc9 Linux 6.1-rc4
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=17204056880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ff27f0c8b406726e
dashboard link: https://syzkaller.appspot.com/bug?extid=84a3c66e4b9dbbb678a8
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/92c7e839ac32/disk-f0c4d9fc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b7bedbc08fb4/vmlinux-f0c4d9fc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/3fe25e2dfdb7/Image-f0c4d9fc.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+84a3c66e4b9dbbb678a8@syzkaller.appspotmail.com

------------[ cut here ]------------
ida_free called for id=0 which is not allocated.
WARNING: CPU: 0 PID: 3066 at lib/idr.c:525 ida_free+0x1b0/0x208 lib/idr.c:525
Modules linked in:
CPU: 0 PID: 3066 Comm: syz-executor.1 Not tainted 6.1.0-rc4-syzkaller-31833-gf0c4d9fc9cc9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : ida_free+0x1b0/0x208 lib/idr.c:525
lr : ida_free+0x1b0/0x208 lib/idr.c:525
sp : ffff800012bf3c40
x29: ffff800012bf3c80 x28: ffff0000c4048000 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff80000d2dd050
x23: 0007fffffffffffe x22: 0000000000000001 x21: 0000000000000000
x20: 0000000000000000 x19: 0000000000000000 x18: 000000000000033b
x17: 0000000000000000 x16: ffff80000db2a158 x15: ffff0000c4048000
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c4048000
x11: ff808000081c06c8 x10: 0000000000000000 x9 : 16d63cd4e166ba00
x8 : 16d63cd4e166ba00 x7 : ffff800008162114 x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefbecc8 x1 : 0000000100000000 x0 : 0000000000000030
Call trace:
 ida_free+0x1b0/0x208 lib/idr.c:525
 free_anon_bdev fs/super.c:1073 [inline]
 kill_anon_super+0x34/0x44 fs/super.c:1087
 v9fs_kill_super+0x24/0x50 fs/9p/vfs_super.c:223
 deactivate_locked_super+0x70/0xe8 fs/super.c:332
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:638
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
irq event stamp: 13153724
hardirqs last  enabled at (13153723): [<ffff8000081621a4>] raw_spin_rq_unlock_irq kernel/sched/sched.h:1366 [inline]
hardirqs last  enabled at (13153723): [<ffff8000081621a4>] finish_lock_switch+0x94/0xe8 kernel/sched/core.c:4950
hardirqs last disabled at (13153724): [<ffff80000c00eacc>] el1_dbg+0x24/0x80 arch/arm64/kernel/entry-common.c:405
softirqs last  enabled at (13153716): [<ffff8000080102e4>] _stext+0x2e4/0x37c
softirqs last disabled at (13153683): [<ffff800008017c68>] ____do_softirq+0x14/0x20 arch/arm64/kernel/irq.c:79
---[ end trace 0000000000000000 ]---
list_del corruption, ffff00012527d000->next is NULL
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:50!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 3066 Comm: syz-executor.1 Tainted: G        W          6.1.0-rc4-syzkaller-31833-gf0c4d9fc9cc9 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __list_del_entry_valid+0x70/0xd0 lib/list_debug.c:49
lr : __list_del_entry_valid+0x70/0xd0 lib/list_debug.c:49
sp : ffff800012bf3cc0
x29: ffff800012bf3cc0 x28: ffff0000c4048000 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff80000d2dd050
x23: ffff80000d2d9000 x22: 0000000000000000 x21: 0000000000000000
x20: 0000000000000000 x19: ffff00012527d000 x18: 00000000000000c0
x17: ffff80000dcec198 x16: ffff80000db2a158 x15: ffff0000c4048000
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c4048000
x11: ff808000081c06c8 x10: 0000000000000000 x9 : 16d63cd4e166ba00
x8 : 16d63cd4e166ba00 x7 : ffff80000c01c69c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefddcc8 x1 : 0000000100000001 x0 : 0000000000000033
Call trace:
 __list_del_entry_valid+0x70/0xd0 lib/list_debug.c:49
 __list_del_entry include/linux/list.h:134 [inline]
 list_del_init include/linux/list.h:206 [inline]
 __put_super+0x48/0x198 fs/super.c:289
 put_super fs/super.c:311 [inline]
 deactivate_locked_super+0xa0/0xe8 fs/super.c:343
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:638
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: d65f03c0 b001b160 91341000 94a843f8 (d4210000) 
---[ end trace 0000000000000000 ]---


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

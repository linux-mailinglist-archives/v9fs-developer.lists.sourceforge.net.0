Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C4C9EC9EE
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Dec 2024 11:05:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLJbI-00044t-9A;
	Wed, 11 Dec 2024 10:05:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <362NZZwkbAFoKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tLJbC-00044Q-Ia for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 10:05:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1v3I6zfzgXP0Ysga0Ll9bKQKdnSUtHzDJbNNRqSw5+4=; b=GocxFTh5D4hHJt66BCn2i4oGBI
 UKOHncHM8qzrm6FOXqCWRsG3Otmkr56rBpnlVIvq891X/TUrQWVJXK+QcgRCXz0y+WDSJis93QK5k
 VcSDOqSiG/tbhvi729cyuvSm0oZ5C34UXyompuOqgI6satekAohVImng3m6TIZudHgxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1v3I6zfzgXP0Ysga0Ll9bKQKdnSUtHzDJbNNRqSw5+4=; b=Z
 Ohe0jpXxFM/1uqVb4MvthqwjrFcVzJ7shqv+lwV0/3yFkR/nMzW09MmOK+Mx1b7rWMTXtmZN9vzBW
 HC/f9JM+BW8RG033rFOUIgu2MIz15R5UntcmP/rz8a3xqy/DFXQJvWwOSBkDJyG4XzzNmQspJdIIe
 N3UpyuBfeNAcwwSw=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tLJbC-0004uS-GS for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 10:05:43 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-844c16508bfso237664839f.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 02:05:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733911532; x=1734516332;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1v3I6zfzgXP0Ysga0Ll9bKQKdnSUtHzDJbNNRqSw5+4=;
 b=H5ZNH9MBC7dMBZQllX87PP+NwphOTVg8IspwhfLuuMBp9g10QubJpOxOLJRn5pQZTI
 d4sXc6M7dnHHzjNU6VPi2czOdvb3eruafLU5u4c0Wqs7y881BbC9Rk9Gie+RIJykf4Lu
 dfFgrm8m8yR9YTCiDtYuA2yDnr80Y2c2g3dwG3yYnlv8VfNfNZpJi3Y5HoT4vjsJYUfH
 WSxaai7DJ7xpvyyaCAnFEPCZ0cMXAsX6Vr2zlsbjL+q+yeBib3yLDaeBg1Z5ABWeT6Qp
 P03065RVfY0qEFjXyxBcpJyqngXYzwsaFFw8SnkcVgZ7dF+e1xJNTTSjaYeWjsxMMsYE
 td+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRCmCfbElnvQqdJ8U/lYNdv2VPeUi+T3yN3Tbp0CDUb7ZkIPj0dcipXpuLuEC5xWYhgpakUt0wKgUYsyw0EQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwP0c9YqYoN+3liNbOOCHXzv8ezAStgxMVth8FsKbZBXimK+718
 JUKvDcQRFYSOojRzTOmkSvvdTpN+jINbnaVc/9n1wZQwMSleE0fsQdcReUquu3MyxQdLMiNNo91
 3w5rrUY7tpWbin330jP0yo2ztoxO+KO9H4MGNd9HJEjYp8bivDAxrT8c=
X-Google-Smtp-Source: AGHT+IElOl1gHGvF3GIfVFdrI5o1zAlVuIxd/c9Lq8l+R5nhGOu9cpxuFrtqc2bTsRrWEWioxXBmzW4kks65UiiHKwKT7+dJTjIr
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1648:b0:3a6:b783:3c06 with SMTP id
 e9e14a558f8ab-3aa08f669c9mr30078905ab.19.1733911531791; Wed, 11 Dec 2024
 02:05:31 -0800 (PST)
Date: Wed, 11 Dec 2024 02:05:31 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <675963eb.050a0220.17f54a.0038.GAE@google.com>
From: syzbot <syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, ericvh@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 torvalds@linux-foundation.org, v9fs-developer@lists.sourceforge.net, 
 v9fs@lists.linux.dev, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: af2ea8ab7a54
 Add linux-next specific files for 20241205 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1369fde8580000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.79 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.79 listed in bl.score.senderscore.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
X-Headers-End: 1tLJbC-0004uS-GS
Subject: [V9fs-developer] [syzbot] [v9fs?] WARNING in
 __alloc_frozen_pages_noprof
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

HEAD commit:    af2ea8ab7a54 Add linux-next specific files for 20241205
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1369fde8580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=76f158395f6f15fd
dashboard link: https://syzkaller.appspot.com/bug?extid=03fb58296859d8dbab4d
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15070820580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e870f8580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8af0861258fa/disk-af2ea8ab.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ffb38cf7a344/vmlinux-af2ea8ab.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6fbd2e50358a/bzImage-af2ea8ab.xz

The issue was bisected to:

commit 3a34b13a88caeb2800ab44a4918f230041b37dd9
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri Jul 30 22:42:34 2021 +0000

    pipe: make pipe writes always wake up readers

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10759c0f980000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12759c0f980000
console output: https://syzkaller.appspot.com/x/log.txt?x=14759c0f980000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com
Fixes: 3a34b13a88ca ("pipe: make pipe writes always wake up readers")

------------[ cut here ]------------
WARNING: CPU: 0 PID: 5830 at mm/page_alloc.c:4728 __alloc_frozen_pages_noprof+0x3c5/0x710 mm/page_alloc.c:4728
Modules linked in:
CPU: 0 UID: 0 PID: 5830 Comm: syz-executor405 Not tainted 6.13.0-rc1-next-20241205-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
RIP: 0010:__alloc_frozen_pages_noprof+0x3c5/0x710 mm/page_alloc.c:4728
Code: ff df 0f 85 09 01 00 00 44 89 e9 81 e1 7f ff ff ff a9 00 00 04 00 41 0f 44 cd 41 89 cd e9 f9 00 00 00 c6 05 87 3a 0c 0e 01 90 <0f> 0b 90 41 83 fc 0a 0f 86 13 fd ff ff 45 31 e4 48 c7 44 24 20 0e
RSP: 0018:ffffc90003e8f940 EFLAGS: 00010246
RAX: 0000000000000000 RBX: dffffc0000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffc90003e8f9c8
RBP: ffffc90003e8fa50 R08: ffffc90003e8f9c7 R09: 0000000000000000
R10: ffffc90003e8f9a0 R11: fffff520007d1f39 R12: 0000000000000020
R13: 0000000000040d40 R14: 1ffff920007d1f30 R15: 1ffff920007d1f2c
FS:  0000555587715480(0000) GS:ffff8880b8600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020001000 CR3: 000000003352e000 CR4: 00000000003526f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __alloc_pages_noprof+0xa/0x30 mm/page_alloc.c:4786
 __alloc_pages_node_noprof include/linux/gfp.h:269 [inline]
 alloc_pages_node_noprof include/linux/gfp.h:296 [inline]
 ___kmalloc_large_node+0x8b/0x1d0 mm/slub.c:4228
 __kmalloc_large_node_noprof+0x1a/0x80 mm/slub.c:4255
 __do_kmalloc_node mm/slub.c:4271 [inline]
 __kmalloc_noprof+0x339/0x4c0 mm/slub.c:4295
 kmalloc_noprof include/linux/slab.h:905 [inline]
 kzalloc_noprof include/linux/slab.h:1037 [inline]
 v9fs_fid_get_acl+0x4f/0x100 fs/9p/acl.c:32
 __v9fs_get_acl fs/9p/acl.c:66 [inline]
 v9fs_get_acl+0x96/0x350 fs/9p/acl.c:92
 v9fs_qid_iget_dotl fs/9p/vfs_inode_dotl.c:131 [inline]
 v9fs_inode_from_fid_dotl+0x22d/0x2c0 fs/9p/vfs_inode_dotl.c:154
 v9fs_get_new_inode_from_fid fs/9p/v9fs.h:251 [inline]
 v9fs_mount+0x718/0xa90 fs/9p/vfs_super.c:142
 legacy_get_tree+0xee/0x190 fs/fs_context.c:662
 vfs_get_tree+0x90/0x2b0 fs/super.c:1814
 do_new_mount+0x2be/0xb40 fs/namespace.c:3507
 do_mount fs/namespace.c:3847 [inline]
 __do_sys_mount fs/namespace.c:4057 [inline]
 __se_sys_mount+0x2d6/0x3c0 fs/namespace.c:4034
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7f05fcd17de9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc85e9b418 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f05fcd17de9
RDX: 0000000020000b80 RSI: 00000000200003c0 RDI: 0000000000000000
RBP: 000000000000ec55 R08: 0000000020000580 R09: 00007ffc85e9b450
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffc85e9b450
R13: 00007ffc85e9b43c R14: 431bde82d7b634db R15: 00007f05fcd60087
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

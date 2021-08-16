Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 492113ED172
	for <lists+v9fs-developer@lfdr.de>; Mon, 16 Aug 2021 11:58:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mFZNy-0004o7-JZ; Mon, 16 Aug 2021 09:58:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3uDYaYQkbAJ0PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1mFZNx-0004nv-Pv
 for v9fs-developer@lists.sourceforge.net; Mon, 16 Aug 2021 09:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cvdPNR7jr5eQX1OC4+6gYdzVx/93pcSVWwtCA0gF2kA=; b=JzzIdqsn/gR8RbkF1I0Q76plxP
 ywPG2qRLdqyzVNXwLXB+shK5Vx5heRA5ZeutFv1q8+JrmGgFbK1o+3hfcsiQc7FobnC5gJLPmKJa4
 3h1Kj5FUxBtNVAsWWIU1XXcEGX8uNbt0+erx8NpCRR9/0y0nZhawoIRtSg/UsCh+DCIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cvdPNR7jr5eQX1OC4+6gYdzVx/93pcSVWwtCA0gF2kA=; b=K
 hhYMpvnMvRVPnNehiHtfsIaAyo5ZirqdTZHa9BtUvJqhQRbA0YyXESVzZ62bM8V6aaAVWOub/iAcq
 L+tm35twPNtq5/sVtJq67RbG9kQ1hh/ecyFvn5SAdOx+GrhNIMNUkKCIMMkconZlR5ZOefSywKIy/
 HDGLNWg47yBmShQo=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mFZNu-00034l-2b
 for v9fs-developer@lists.sourceforge.net; Mon, 16 Aug 2021 09:58:25 +0000
Received: by mail-io1-f70.google.com with SMTP id
 u22-20020a5d9f560000b02905058dc6c376so8913436iot.6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 16 Aug 2021 02:58:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=cvdPNR7jr5eQX1OC4+6gYdzVx/93pcSVWwtCA0gF2kA=;
 b=O6TDb1ktoF5b3T2G1Kbkj8BCx0Nc3Olb4+/4dskbn9RIebaEeHk6Q/OmRAj+M8ztqS
 m2rELL27y0cjqf+wNeWVmB/UuCwc1wShFErJe228pVXpKOqoiOn5AqD+UJDdWSLY0MpU
 y2sW1vgbk/SQ4eEIK20x5XXRSnAS6qpsrNE3jhc61w5KKeRCaeIWaPzC/zQXFFwfmOSB
 fcLM8RxrBPCQvVOtfUYMxXSGrHlYbKmS1bS1VU0DTUHAzjVTfNdLh57n3QkrPxIqKcPt
 HOgL8Ww4iJT18KD/Cv+jMrrkvKo+JhxgYtloqeIEyy7LH3X41scfdqZonxhmRJy7N849
 xBsQ==
X-Gm-Message-State: AOAM532l/H5HZqc/1eWHc9Wy+5c/Mxsym55vPFTkDIwEMk+vKSPmpIwg
 vY0NfIau3Xm3tPXi8Jns5iDS5biLOV40zON5o7sAUhZYBUWv
X-Google-Smtp-Source: ABdhPJxLZM0cN8828twYWtoFL5FZcx0w0oQf9DArw1kYJsHlxTGHkbpXlQh5vSim8ZOwSlO7qkc63xkPT0N7nr6TBrwHCCCw5165
MIME-Version: 1.0
X-Received: by 2002:a02:970d:: with SMTP id x13mr14664887jai.57.1629107896489; 
 Mon, 16 Aug 2021 02:58:16 -0700 (PDT)
Date: Mon, 16 Aug 2021 02:58:16 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000789bcd05c9aa3d5d@google.com>
From: syzbot <syzbot+56fdf7f6291d819b9b19@syzkaller.appspotmail.com>
To: a@unstable.cc, asmadeus@codewreck.org, b.a.t.m.a.n@lists.open-mesh.org, 
 davem@davemloft.net, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, lucien.xin@gmail.com, mareklindner@neomailbox.ch, 
 netdev@vger.kernel.org, nhorman@tuxdriver.com, sw@simonwunderlich.de, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1mFZNu-00034l-2b
Subject: [V9fs-developer] [syzbot] WARNING in __v9fs_get_acl
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

HEAD commit:    761c6d7ec820 Merge tag 'arc-5.14-rc6' of git://git.kernel...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11d87ca1300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=730106bfb5bf8ace
dashboard link: https://syzkaller.appspot.com/bug?extid=56fdf7f6291d819b9b19
compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12ca6029300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13bf42a1300000

The issue was bisected to:

commit 0ac1077e3a549bf8d35971613e2be05bdbb41a00
Author: Xin Long <lucien.xin@gmail.com>
Date:   Tue Oct 16 07:52:02 2018 +0000

    sctp: get pr_assoc and pr_stream all status with SCTP_PR_SCTP_ALL instead

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16f311fa300000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=15f311fa300000
console output: https://syzkaller.appspot.com/x/log.txt?x=11f311fa300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+56fdf7f6291d819b9b19@syzkaller.appspotmail.com
Fixes: 0ac1077e3a54 ("sctp: get pr_assoc and pr_stream all status with SCTP_PR_SCTP_ALL instead")

------------[ cut here ]------------
WARNING: CPU: 1 PID: 8426 at mm/page_alloc.c:5366 __alloc_pages+0x588/0x5f0 mm/page_alloc.c:5413
Modules linked in:
CPU: 1 PID: 8426 Comm: syz-executor477 Not tainted 5.14.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__alloc_pages+0x588/0x5f0 mm/page_alloc.c:5413
Code: 00 48 ba 00 00 00 00 00 fc ff df e9 5e fd ff ff 89 f9 80 e1 07 80 c1 03 38 c1 0f 8c 6d fd ff ff e8 bd 62 0a 00 e9 63 fd ff ff <0f> 0b 45 31 e4 e9 7a fd ff ff 48 8d 4c 24 50 80 e1 07 80 c1 03 38
RSP: 0018:ffffc90000fff9a0 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000014 RCX: 0000000000000000
RDX: 0000000000000028 RSI: 0000000000000000 RDI: ffffc90000fffa28
RBP: ffffc90000fffaa8 R08: dffffc0000000000 R09: ffffc90000fffa00
R10: fffff520001fff45 R11: 0000000000000000 R12: 0000000000040d40
R13: ffffc90000fffa00 R14: 1ffff920001fff3c R15: 1ffff920001fff38
FS:  000000000148e300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fa1e9a97740 CR3: 000000003406e000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 kmalloc_order+0x41/0x170 mm/slab_common.c:955
 kmalloc_order_trace+0x15/0x70 mm/slab_common.c:971
 kmalloc_large include/linux/slab.h:520 [inline]
 __kmalloc+0x292/0x390 mm/slub.c:4101
 kmalloc include/linux/slab.h:596 [inline]
 kzalloc include/linux/slab.h:721 [inline]
 __v9fs_get_acl+0x40/0x110 fs/9p/acl.c:36
 v9fs_get_acl+0xa5/0x290 fs/9p/acl.c:71
 v9fs_mount+0x6ea/0x870 fs/9p/vfs_super.c:182
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x86/0x270 fs/super.c:1498
 do_new_mount fs/namespace.c:2919 [inline]
 path_mount+0x196f/0x2be0 fs/namespace.c:3249
 do_mount fs/namespace.c:3262 [inline]
 __do_sys_mount fs/namespace.c:3470 [inline]
 __se_sys_mount+0x2f9/0x3b0 fs/namespace.c:3447
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x43f2e9
Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffcc30ccf58 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000400488 RCX: 000000000043f2e9
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 0000000000403040 R08: 0000000020004440 R09: 0000000000400488
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000004030d0
R13: 0000000000000000 R14: 00000000004ad018 R15: 0000000000400488


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

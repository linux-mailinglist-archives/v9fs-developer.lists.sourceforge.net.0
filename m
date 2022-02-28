Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C54B4C605E
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 01:53:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOUII-0005mg-9R; Mon, 28 Feb 2022 00:53:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3CR0cYgkbAMo8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nOUIG-0005mZ-OG
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 00:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AX3Pc5AO8XiRxdqF0xaFF6Qbje5dgUlOCE3Rs5VFqVI=; b=eG9ITmSt062MEjBRhnfIM2oRzK
 lOiP/fxnuf7G1YND6uCzybxB0l233LkLI8wdwtHQr5QfbUF39K6s+EQ29CT5ZL1BMbKe1QooJCt5p
 gMVwceyK/9E6aqVAg4UX/ra0fkl5SqvryIuSh2ycp4uwJcN/j7iJy6/2oYysn4PIyUkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AX3Pc5AO8XiRxdqF0xaFF6Qbje5dgUlOCE3Rs5VFqVI=; b=W
 52yemEVDJZyOROB9+yTy+kWxpd6hAnprD7MmEjwNWkaTj1IHXfbkZeP8qj87kofcYOgOIabJ36DS6
 7woaHJWoPcxGbwqCLczfw/+lCq3rNqsYDkjYAPnb8YkiKiDc75tzGQ2cd5I4EReBkbFK21syWx59L
 PlprIxlObyu029ro=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOUIB-0002W1-1E
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 00:53:39 +0000
Received: by mail-io1-f70.google.com with SMTP id
 r191-20020a6b8fc8000000b0063de0033ee7so7591405iod.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 27 Feb 2022 16:53:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=AX3Pc5AO8XiRxdqF0xaFF6Qbje5dgUlOCE3Rs5VFqVI=;
 b=zzv3+J9Y5QjqJM9SGJz+eQdGJfJ0sFoh3N418hmcSFou+pDhEW/Ss7LwJ4/G+0RMbD
 sGpvooFN+tMAlLIW7jxaCx7rL5VaYgTUZ5lSnOlgcrLQJAp3oJ3+AiVO1/SxaJPGlSZ2
 Z8Hv+2iqHUv1YGPMvcxsdHmP6lS+PH/B/kPpfHCDzfRE9hSNDZw6r4Y/KMoqwF3+03Zt
 1bMdPDLfLtj0a7cvgFY3DgyL0lhTyJldQwBnD40saMG3T+XbUGUv12hUOwRrfTzkTNiO
 YT/x+SJDmUf1vZ5b5GQeLQpmcg+oI8NDFaZD1uCEQQaCleeXCV2kHR1ZF6M049ozR+nB
 Kwnw==
X-Gm-Message-State: AOAM531FrDClKOUPoaktcaLt7Wsg8PUBQuuTGzfRG4WQhh4OItxthXn4
 0wX8X2xHnSXkYin8AQJAtwEM+SLCH17mmhqu83IIHMd/7hW9
X-Google-Smtp-Source: ABdhPJzowtiUs7pxMmgZkREdzThcRlYPZXMRC4wyI+xkJyhxP5lHi4wPMJbHPzurk9inE/5cVLYhGqwKcPFDdVYR8Lgh/0KJkAQ3
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2b8b:b0:608:c584:a1b0 with SMTP id
 r11-20020a0566022b8b00b00608c584a1b0mr13607483iov.159.1646009609480; Sun, 27
 Feb 2022 16:53:29 -0800 (PST)
Date: Sun, 27 Feb 2022 16:53:29 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000011f0c905d9097a62@google.com>
From: syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, 
 lucho@ionkov.net, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 23d04328444a
 Merge tag 'for-5.17/parisc-4' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1614a812700000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOUIB-0002W1-1E
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

Hello,

syzbot found the following issue on:

HEAD commit:    23d04328444a Merge tag 'for-5.17/parisc-4' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1614a812700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f2a8c25b60d49d24
dashboard link: https://syzkaller.appspot.com/bug?extid=5e28cdb7ebd0f2389ca4
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com

kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502 kmem_cache_destroy mm/slab_common.c:502 [inline]
WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502 kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
Modules linked in:
CPU: 1 PID: 3701 Comm: syz-executor.3 Not tainted 5.17.0-rc5-syzkaller-00021-g23d04328444a #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
RIP: 0010:kmem_cache_destroy mm/slab_common.c:502 [inline]
RIP: 0010:kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
Code: da a8 0e 48 89 ee e8 44 6e 15 00 eb c1 c3 48 8b 55 58 48 c7 c6 60 cd b6 89 48 c7 c7 30 83 3a 8b 48 8b 4c 24 18 e8 9b 30 60 07 <0f> 0b eb a0 90 41 55 49 89 d5 41 54 49 89 f4 55 48 89 fd 53 48 83
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
Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff01862e98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f5ff63ed4c7
RDX: 00007fff01862f6c RSI: 000000000000000a RDI: 00007fff01862f60
RBP: 00007fff01862f60 R08: 00000000ffffffff R09: 00007fff01862d30
R10: 00005555561b18b3 R11: 0000000000000246 R12: 00007f5ff64451ea
R13: 00007fff01864020 R14: 00005555561b1810 R15: 00007fff01864060
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

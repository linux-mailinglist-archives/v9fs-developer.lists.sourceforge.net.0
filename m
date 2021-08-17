Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A57243EE45B
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 Aug 2021 04:24:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mFomc-0005nQ-DF; Tue, 17 Aug 2021 02:24:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1mFomb-0005nK-Gi
 for v9fs-developer@lists.sourceforge.net; Tue, 17 Aug 2021 02:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jAv1x91vaSPKkYNPHeFnu2BudVhGDtwqErw+4Y1kgqM=; b=SbYJDzDA6Ej5hi6eADE2rghs0t
 dIKQLZf7nLw55Z2fPRHx8tRuQMiOVmISE6tZEwixMGkf3btH+p28V2T/8zoGHcxSD0gZXEGat9RCY
 +4lvtaP+U1T+V50ozOCdZHdojBsz8uiE4KoViYWT9eQEKHkcGgTIkwRzSx07yi70zXGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jAv1x91vaSPKkYNPHeFnu2BudVhGDtwqErw+4Y1kgqM=; b=l+OD7c2Xgcv7lXZ4ZT4msTiBlF
 a1T/5qjzeiNplStvjG2QmtGS3B4bfC2n5++CS+pqFQJJaAShgNsS7/xdxb066NuBYCpJMb5ziXThi
 8QpEbZq6aNEQJwvg6543kzoql1WR3CiGH5K+6AWNT68k7nCCe1wR3HC3kIonsZLRTrfI=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mFomX-008qla-De
 for v9fs-developer@lists.sourceforge.net; Tue, 17 Aug 2021 02:24:53 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 l7-20020a1c2507000000b002e6be5d86b3so1142348wml.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 16 Aug 2021 19:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jAv1x91vaSPKkYNPHeFnu2BudVhGDtwqErw+4Y1kgqM=;
 b=eC6I0pFCXYqournwVvSssCdTP2epVgCEEU6ONcTfQX+Z5ALYwpW7rKEbZCZhqidY+j
 ck3jsfb0Z+q92Frb8YlgwyD6IhbLNmkLIhGTFejmaQXkEgjNBbCmhze/proaRou6nZ2N
 yFXbgVgT6kN+fDzsmIpQ62/RqOUEAR83Fog02xeXLsjRC8yngf18nyjCgXlqzJ7GLVV5
 R2RNHGjXcal37i+khEXnrSOg1sd07J3cEiCpCKt1HaWRObPuAO0O6jIv/TR+qCcSUCeK
 4m1fe1Iq7FfT9IDPyGhy4pxqXVx1fYyQ4++l/OS7sqcLrabbWCHQQG16vM8crVn4b79a
 //jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jAv1x91vaSPKkYNPHeFnu2BudVhGDtwqErw+4Y1kgqM=;
 b=on3HRG1Y7WxV9Px2Ws+sESFGHNWrXh/Ye0Nr2kq0PFF3+6rmeUYVznkmFpwvVuqBlq
 zX90Wsssu6WgV+AKUP1Sqo1tCyEGLZIkih43Kyb9/ypdv/7JKowaiL7BdRHMEyM5RbZj
 qKaOXQnYFmo4a3S0cUMHWmSwZlDwDLLcdq6+Ex6dg9nSWztsvECVob5x/5c1Xqi4bxDW
 7LlE3HnTiwQmim1beIpVcQlKGSysyyKm5srosfAWQ4BeXFlbjAWLsAmlMqF9Wswp2U8Q
 oVf4ojHMR7hStpiwtkzFv7gxEj2s235oqGGlASmocO0zinX1QRFnbLFhVoldQtbplgE/
 S7BA==
X-Gm-Message-State: AOAM5300qLUZp3ulFesL0T4p1e4Mq/R3W1ESUOet+huw77Zx++ME/GiI
 7Y/r67XqjQwT4CD/reaBgDTtAFxK1dn2JL6LxNc=
X-Google-Smtp-Source: ABdhPJyoNicIIj3VfjrMvBFpXqEth4q9yh5aGoXJ5c//oxeEc6OWmj9pbI0KQhqarLc4iVvFyebVB1sZvxQxs5sYxy0=
X-Received: by 2002:a1c:cc12:: with SMTP id h18mr974031wmb.12.1629167082962;
 Mon, 16 Aug 2021 19:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000789bcd05c9aa3d5d@google.com>
In-Reply-To: <000000000000789bcd05c9aa3d5d@google.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 17 Aug 2021 10:24:31 +0800
Message-ID: <CADvbK_fo_FQdxj0R67zU_RF9rHz9q52WT204oYgF7tUWOAvagw@mail.gmail.com>
To: syzbot <syzbot+56fdf7f6291d819b9b19@syzkaller.appspotmail.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 16, 2021 at 5:58 PM syzbot wrote: > > Hello, >
 > syzbot found the following issue on: > > HEAD commit: 761c6d7ec820 Merge
 tag 'arc-5.14-rc6' of git://git.kernel... > git tree: upstream > [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mFomX-008qla-De
Subject: Re: [V9fs-developer] [syzbot] WARNING in __v9fs_get_acl
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
Cc: lucho@ionkov.net, mareklindner@neomailbox.ch,
 Neil Horman <nhorman@tuxdriver.com>, sw@simonwunderlich.de, ericvh@gmail.com,
 network dev <netdev@vger.kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
 a@unstable.cc, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 v9fs-developer@lists.sourceforge.net, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Aug 16, 2021 at 5:58 PM syzbot
<syzbot+56fdf7f6291d819b9b19@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    761c6d7ec820 Merge tag 'arc-5.14-rc6' of git://git.kernel...
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=11d87ca1300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=730106bfb5bf8ace
> dashboard link: https://syzkaller.appspot.com/bug?extid=56fdf7f6291d819b9b19
> compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12ca6029300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13bf42a1300000
>
> The issue was bisected to:
>
> commit 0ac1077e3a549bf8d35971613e2be05bdbb41a00
> Author: Xin Long <lucien.xin@gmail.com>
> Date:   Tue Oct 16 07:52:02 2018 +0000
>
>     sctp: get pr_assoc and pr_stream all status with SCTP_PR_SCTP_ALL instead
can't see how this is related.

>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16f311fa300000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=15f311fa300000
> console output: https://syzkaller.appspot.com/x/log.txt?x=11f311fa300000
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+56fdf7f6291d819b9b19@syzkaller.appspotmail.com
> Fixes: 0ac1077e3a54 ("sctp: get pr_assoc and pr_stream all status with SCTP_PR_SCTP_ALL instead")
>
> ------------[ cut here ]------------
> WARNING: CPU: 1 PID: 8426 at mm/page_alloc.c:5366 __alloc_pages+0x588/0x5f0 mm/page_alloc.c:5413
> Modules linked in:
> CPU: 1 PID: 8426 Comm: syz-executor477 Not tainted 5.14.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:__alloc_pages+0x588/0x5f0 mm/page_alloc.c:5413
> Code: 00 48 ba 00 00 00 00 00 fc ff df e9 5e fd ff ff 89 f9 80 e1 07 80 c1 03 38 c1 0f 8c 6d fd ff ff e8 bd 62 0a 00 e9 63 fd ff ff <0f> 0b 45 31 e4 e9 7a fd ff ff 48 8d 4c 24 50 80 e1 07 80 c1 03 38
> RSP: 0018:ffffc90000fff9a0 EFLAGS: 00010246
> RAX: dffffc0000000000 RBX: 0000000000000014 RCX: 0000000000000000
> RDX: 0000000000000028 RSI: 0000000000000000 RDI: ffffc90000fffa28
> RBP: ffffc90000fffaa8 R08: dffffc0000000000 R09: ffffc90000fffa00
> R10: fffff520001fff45 R11: 0000000000000000 R12: 0000000000040d40
> R13: ffffc90000fffa00 R14: 1ffff920001fff3c R15: 1ffff920001fff38
> FS:  000000000148e300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007fa1e9a97740 CR3: 000000003406e000 CR4: 00000000001506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  kmalloc_order+0x41/0x170 mm/slab_common.c:955
>  kmalloc_order_trace+0x15/0x70 mm/slab_common.c:971
>  kmalloc_large include/linux/slab.h:520 [inline]
>  __kmalloc+0x292/0x390 mm/slub.c:4101
>  kmalloc include/linux/slab.h:596 [inline]
>  kzalloc include/linux/slab.h:721 [inline]
>  __v9fs_get_acl+0x40/0x110 fs/9p/acl.c:36
>  v9fs_get_acl+0xa5/0x290 fs/9p/acl.c:71
>  v9fs_mount+0x6ea/0x870 fs/9p/vfs_super.c:182
>  legacy_get_tree+0xea/0x180 fs/fs_context.c:610
>  vfs_get_tree+0x86/0x270 fs/super.c:1498
>  do_new_mount fs/namespace.c:2919 [inline]
>  path_mount+0x196f/0x2be0 fs/namespace.c:3249
>  do_mount fs/namespace.c:3262 [inline]
>  __do_sys_mount fs/namespace.c:3470 [inline]
>  __se_sys_mount+0x2f9/0x3b0 fs/namespace.c:3447
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x43f2e9
> Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffcc30ccf58 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 0000000000400488 RCX: 000000000043f2e9
> RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
> RBP: 0000000000403040 R08: 0000000020004440 R09: 0000000000400488
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000004030d0
> R13: 0000000000000000 R14: 00000000004ad018 R15: 0000000000400488
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

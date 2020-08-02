Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D8B235A4C
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Aug 2020 21:59:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k2K91-0006CF-Va; Sun, 02 Aug 2020 19:59:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3HRsnXwkbAO4iopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1k2K90-0006C7-W5
 for v9fs-developer@lists.sourceforge.net; Sun, 02 Aug 2020 19:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F10XM7hC+E3LYcPRivzOjDTSVfMfyhzmJcx4FWkMrXc=; b=PGPRGeK8JItTYRkKYX8figw2rS
 /N6LmOMG720AHR+WwR+q+o6/+/U+ghNLaZ/Lt0Ml4gmyAnj/9L7fyfyI8oDV/e3q6dh7gHPXC7QPL
 Y7Kp4eeeuvNiUZJ6MClbVnZ4bnBeR1d9eiHl58m+hz1KDEJZhfBhzO0GdDEaDLM+TtW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F10XM7hC+E3LYcPRivzOjDTSVfMfyhzmJcx4FWkMrXc=; b=a
 dhx9PaBqV2M7VKfSjF8wd9ZS7eUpUpQwnneCu9JLz2nP5sbSaJLavcflnhvBwgEN45eNsRVfblJvd
 Ivfw3vOsLKTvaeMrnF/vA+YPscOdGgfJu5iwiY52VEtWZG/3yPAhnyYQ0Hlt9uRyfjnwfgbZ/x4OH
 9gkUy99hrbglGyyQ=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2K8y-000dzV-Qh
 for v9fs-developer@lists.sourceforge.net; Sun, 02 Aug 2020 19:59:42 +0000
Received: by mail-il1-f200.google.com with SMTP id i78so20886992ill.22
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 02 Aug 2020 12:59:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=F10XM7hC+E3LYcPRivzOjDTSVfMfyhzmJcx4FWkMrXc=;
 b=gHsmIMTMtO1+r9+RzH+YynYVLLAiMcU2JxHgD0WkYbgGbFNNezrQUfllfO0cUY7gTi
 gDthJ45/g9zGypIhnroO057qUKij5SDURpCnVrUfZMeVPMl5rMkr+0VJl9aFKDm4j2vM
 Capgz6BvS6h8rChuSgCBQCCr+6VhpX0Q/WUEV8perUtiOsNwBiNlTT1Ca/C8E1MHYs1Y
 edzT3odq97EF1T+5BqJ+JQQQPUbgF28G8ADgKAVJfAcmFnuQIBn8ir9xijRxHg26Rx0l
 SLh59WygcuRfNGfdrJvKAVm39Ylmx97x9EB0ofrOsxQQQ4B2sFc+3FvTUfFQO3y8sQjz
 BynA==
X-Gm-Message-State: AOAM533fqwb66YTZSM7S80BlckcWLVtndNGJvmyYIkMlRDmKfhzanzAS
 Olsip/6bGByrv0c65wG9JFVg+b3/rNFM9wGA86SDU7Brz6xS
X-Google-Smtp-Source: ABdhPJzfyholBojvTdXf18niTb+bG+GT/Pvyc0HPQj3ZJQzGGF27xphs6kDRmpgZm2imxrZ3RckHwdO2JIWfbXiCvUf2Hmw/beIP
MIME-Version: 1.0
X-Received: by 2002:a02:84ac:: with SMTP id f41mr12062153jai.56.1596398365555; 
 Sun, 02 Aug 2020 12:59:25 -0700 (PDT)
Date: Sun, 02 Aug 2020 12:59:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007fbe6605abea7514@google.com>
From: syzbot <syzbot+a42aa715d3d32226792a@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2K8y-000dzV-Qh
Subject: [V9fs-developer] INFO: task can't die in p9_client_rpc
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

HEAD commit:    01830e6c Add linux-next specific files for 20200731
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=176146cc900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2e226b2d1364112c
dashboard link: https://syzkaller.appspot.com/bug?extid=a42aa715d3d32226792a
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a42aa715d3d32226792a@syzkaller.appspotmail.com

INFO: task syz-executor.5:24879 can't die for more than 143 seconds.
syz-executor.5  D25688 24879   7480 0x00004004
Call Trace:
 context_switch kernel/sched/core.c:3669 [inline]
 __schedule+0x8e5/0x21e0 kernel/sched/core.c:4418
 schedule+0xd0/0x2a0 kernel/sched/core.c:4493
 p9_client_rpc+0x3b5/0x11f0 net/9p/client.c:757
 p9_client_flush+0x1f9/0x430 net/9p/client.c:665
 p9_client_rpc+0xf93/0x11f0 net/9p/client.c:782
 p9_client_version net/9p/client.c:953 [inline]
 p9_client_create+0xa8f/0x10c0 net/9p/client.c:1053
 v9fs_session_init+0x1dd/0x1770 fs/9p/v9fs.c:406
 v9fs_mount+0x79/0x970 fs/9p/vfs_super.c:124
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1549
 do_new_mount fs/namespace.c:2912 [inline]
 do_mount+0x14f6/0x1e20 fs/namespace.c:3238
 __do_sys_mount fs/namespace.c:3448 [inline]
 __se_sys_mount fs/namespace.c:3425 [inline]
 __x64_sys_mount+0x18f/0x230 fs/namespace.c:3425
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x45cc79
Code: Bad RIP value.
RSP: 002b:00007f92f26b9c78 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000020480 RCX: 000000000045cc79
RDX: 0000000020000100 RSI: 0000000020000040 RDI: 0000000000000000
RBP: 000000000078bf50 R08: 0000000020000200 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000078bf0c
R13: 00007fff9a822f9f R14: 00007f92f26ba9c0 R15: 000000000078bf0c

Showing all locks held in the system:
1 lock held by khungtaskd/1164:
 #0: ffffffff89c52a80 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:5823
1 lock held by in:imklog/6729:
 #0: ffff8880a97c7db0 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:930

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

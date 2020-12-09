Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5491B2D4776
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Dec 2020 18:07:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kn2vy-0000uF-As; Wed, 09 Dec 2020 17:07:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3QATRXwkbAJEDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kn2vx-0000td-05
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Dec 2020 17:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qIQXaAtoA55Hqp6Kor3EGs7q2VqDGIx+EnbuDJObsv8=; b=B2HrGoz/1voah37nu31bUqnnYN
 uICNnJ6u/u+ZaYL1+2G3ht8kZ9/To80OixBBQITqt3VYeHDPYjKseAfl+jScoptUyzl8Ce2kLGnEI
 IHtrPdBy2L1uY2LWoC6OZtlGVqN+14bCwu8eiocKCPwdQPmGvwWCRPLnp0Nv1fs3hreM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qIQXaAtoA55Hqp6Kor3EGs7q2VqDGIx+EnbuDJObsv8=; b=f
 tArx8b88CcO/30Yv+4AZss8EuF9tD1wv3+VO9g43aunzFg50xoeKYd8qQNnNO4L0LIA4ci0jDbGGO
 qTaLj+23Hbj+mHmlVeB100kNKe/4XriB5LMMQW5O9KkOA0DUBxAaAwQofc9mW2QAXtlXDE0ARIYMU
 GHhflIgQDGWzcYiY=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kn2vt-007yZl-VE
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Dec 2020 17:07:20 +0000
Received: by mail-io1-f72.google.com with SMTP id a1so1711687ioa.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 09 Dec 2020 09:07:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=qIQXaAtoA55Hqp6Kor3EGs7q2VqDGIx+EnbuDJObsv8=;
 b=lBvjYcJH+FWAwSI5OQwyxQalUlZtmSZ3OLH3qIW51OyNENccGNYgYnzSixKNrqtCVm
 y6MclGMhd72CUr7KmGD4pQ6pnNpMydI6m26P9qbK/CxrlW5mog6dHikME5zT69xD/nIo
 jqjBRIuY2SxoUIlwTS8L0u16teB1wY7tq7srda7z8ceLa3UfFllCb9A1qoyNjlZUH4L7
 Slg06dItMbTiJKLttOwuLhYurd5i1R5++sqksc079rWGljTfVwvB0jpQ5KPAPNMgmxrY
 O+Qbo4wgY38OOdfIHuCWANl2HFuKu5gD1BOzDvDareIzLxsKnGTE+wblg8DZA6SrnYqd
 EHsA==
X-Gm-Message-State: AOAM530LTd3hYRO/YNU6iMyfKnDPWiNbyTzroj6Va0DNHS2lZlKrxel9
 uRGc9cpR0z8i8xpKpT+Qg9ZbY/lEJUkhq4xbyyVJ9B47kx0d
X-Google-Smtp-Source: ABdhPJwZHYGmrSkJnViQUI8+0O4v34jj5sW5H/8BnMCITxzEl4tPD5tUBuvAExx5+9blqJ4XkSFsTkDJ7TT6yuQoO9aQKxqV2UCU
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2e81:: with SMTP id
 m1mr3965175iow.131.1607533632436; 
 Wed, 09 Dec 2020 09:07:12 -0800 (PST)
Date: Wed, 09 Dec 2020 09:07:12 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000020460105b60b17b5@google.com>
From: syzbot <syzbot+4ff9239a00671c7c656f@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1kn2vt-007yZl-VE
Subject: [V9fs-developer] INFO: task can't die in p9_client_rpc (2)
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

HEAD commit:    0eedceaf Add linux-next specific files for 20201201
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=11111df7500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=55aec7153b7827ea
dashboard link: https://syzkaller.appspot.com/bug?extid=4ff9239a00671c7c656f
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4ff9239a00671c7c656f@syzkaller.appspotmail.com

INFO: task syz-executor.2:10555 can't die for more than 143 seconds.
task:syz-executor.2  state:D stack:27024 pid:10555 ppid:  8514 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4325 [inline]
 __schedule+0x8cd/0x2150 kernel/sched/core.c:5076
 schedule+0xcf/0x270 kernel/sched/core.c:5155
 p9_client_rpc+0x400/0x1240 net/9p/client.c:759
 p9_client_flush+0x1f9/0x430 net/9p/client.c:667
 p9_client_rpc+0xfde/0x1240 net/9p/client.c:784
 p9_client_version net/9p/client.c:955 [inline]
 p9_client_create+0xae1/0x1110 net/9p/client.c:1055
 v9fs_session_init+0x1dd/0x1770 fs/9p/v9fs.c:406
 v9fs_mount+0x79/0x9b0 fs/9p/vfs_super.c:126
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1549
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x12ae/0x1e70 fs/namespace.c:3227
 do_mount fs/namespace.c:3240 [inline]
 __do_sys_mount fs/namespace.c:3448 [inline]
 __se_sys_mount fs/namespace.c:3425 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x45de79
RSP: 002b:00007f4ba88a6c68 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000005 RCX: 000000000045de79
RDX: 0000000020000200 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 000000000118bf70 R08: 0000000020000140 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 000000000118bf2c
R13: 00007fff44b1496f R14: 00007f4ba88a79c0 R15: 000000000118bf2c

Showing all locks held in the system:
2 locks held by kworker/u4:3/81:
1 lock held by khungtaskd/1618:
 #0: ffffffff8b33a7a0 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6254
1 lock held by systemd-journal/4903:
1 lock held by in:imklog/8195:
 #0: ffff88801dba7270 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:923

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

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD15A101B
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Aug 2019 05:58:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i3BZf-0007kq-0W; Thu, 29 Aug 2019 03:58:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3Tk1nXQkbAHcntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1i3BZe-0007kf-25
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Aug 2019 03:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tadFVeIOZOH0yr8dBxtTfxDdH48rZZJcwvhVqN0Ob+0=; b=L8A+PO9j9TFQbE2RYLV0E8zLtw
 orrXprpVNv/YOoT8e6NRQrOn4yySHTiIlIPVVOTHk+NkGb96pzDyeaER0xQ5mZOg4xUdQ2PzEM6tT
 Q8m2XdkWVUPtitralFH2YSOAxtKsQFjZb1lm8NPwyaDikgYTSPE3JhKY33yzTUQkXuew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tadFVeIOZOH0yr8dBxtTfxDdH48rZZJcwvhVqN0Ob+0=; b=a
 Pge+w/xz1mt04G6jhzLrMBLpuewQbGcA87mxahUzC42OMIta1DXZQ5XwHQ1TZlfHKxARMzK0G/Nfe
 7yjJEsaYm6QJjCwdyy2TB5B5dafLICd2EUhn1qOyri3KJLjeuEs5uEYGFhXuUx7hS8GzEwenwe8E0
 uisMiviaaikc/4vQ=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3BZc-002Iwa-GF
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Aug 2019 03:58:14 +0000
Received: by mail-io1-f72.google.com with SMTP id g12so2383181iok.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 28 Aug 2019 20:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=tadFVeIOZOH0yr8dBxtTfxDdH48rZZJcwvhVqN0Ob+0=;
 b=M5/ZTjCufppnqRSgLT0tO9o5nkY6lE5nIK7CcpkVvfbpbM/D1cJXf/JPK5Hp0WtJ/y
 iSMfotSaDTwcp8tViClhMyJlh0mQh6R6eyrIsVmPjlNAEH8+EDMqDv1cL8OKv+5vR3M0
 xnzolRxo8BIDTLjZ1Kgyw7aQocMWhYvNkjcNEnF8huz1R2NcO8dQAAvwLNM2TwPKVv4T
 tKlSUIX4j1xb0cEUa2L3Z0emgEbrwGd0c0I2o1WyvvuV4cqSh1SH8WipxIHzV4iGHoEP
 rAVrzT7SEL6woapzGKGv822KnFksJ9/tR7ioWqe1rDBDS6rqT+aOJ9l4uBNFSVS1PTL0
 6buA==
X-Gm-Message-State: APjAAAXFb1B6/SfJLJbyGLjKenBzFEABUZ3WWZ7t7mIbGnTS7lM2p0+B
 B6fyILskOP1BbhUeiCvfirE/isJOsgeDwmxs9G+Kcz/wxjSw
X-Google-Smtp-Source: APXvYqwMqjrkCA5Nz6C2Kl02P75sJtglRiLadVdDvvfuuKk8pEhv2NYmmL67pWiPfKlP4Or+i1JX1rFE7KWTCJNFZgk3BFutjz7a
MIME-Version: 1.0
X-Received: by 2002:a5e:c301:: with SMTP id a1mr2303953iok.1.1567051086634;
 Wed, 28 Aug 2019 20:58:06 -0700 (PDT)
Date: Wed, 28 Aug 2019 20:58:06 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005d2a1e0591398391@google.com>
From: syzbot <syzbot+1d26c4ed77bc6c5ed5e6@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, netdev@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1i3BZc-002Iwa-GF
Subject: [V9fs-developer] BUG: corrupted list in p9_fd_cancelled (2)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

syzbot found the following crash on:

HEAD commit:    36146921 Merge tag 'hyperv-fixes-signed' of git://git.kern..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=169f691e600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6919752cc1b760b4
dashboard link: https://syzkaller.appspot.com/bug?extid=1d26c4ed77bc6c5ed5e6
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14d03ba6600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+1d26c4ed77bc6c5ed5e6@syzkaller.appspotmail.com

list_del corruption, ffff88808ecdbfb0->next is LIST_POISON1  
(dead000000000100)
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:45!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 20174 Comm: syz-executor.1 Not tainted 5.3.0-rc5+ #125
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
RIP: 0010:__list_del_entry_valid.cold+0x23/0x4f lib/list_debug.c:45
Code: e8 d5 06 1e fe 0f 0b 4c 89 f6 48 c7 c7 e0 26 c6 87 e8 c4 06 1e fe 0f  
0b 4c 89 ea 4c 89 f6 48 c7 c7 20 26 c6 87 e8 b0 06 1e fe <0f> 0b 4c 89 e2  
4c 89 f6 48 c7 c7 80 26 c6 87 e8 9c 06 1e fe 0f 0b
RSP: 0018:ffff8880994076d8 EFLAGS: 00010286
RAX: 000000000000004e RBX: 1ffff11013280ee9 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815c2526 RDI: ffffed1013280ecd
RBP: ffff8880994076f0 R08: 000000000000004e R09: ffffed1015d060d1
R10: ffffed1015d060d0 R11: ffff8880ae830687 R12: dead000000000122
R13: dead000000000100 R14: ffff88808ecdbfb0 R15: ffff88808ecdbfb8
FS:  00007fb2aca54700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffee6574f58 CR3: 00000000a8e6d000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  __list_del_entry include/linux/list.h:131 [inline]
  list_del include/linux/list.h:139 [inline]
  p9_fd_cancelled+0x3c/0x1c0 net/9p/trans_fd.c:710
  p9_client_flush+0x1b7/0x1f0 net/9p/client.c:674
  p9_client_rpc+0x112f/0x12a0 net/9p/client.c:781
  p9_client_version net/9p/client.c:952 [inline]
  p9_client_create+0xb7f/0x1430 net/9p/client.c:1052
  v9fs_session_init+0x1e7/0x18c0 fs/9p/v9fs.c:406
  v9fs_mount+0x7d/0x920 fs/9p/vfs_super.c:120
  legacy_get_tree+0x108/0x220 fs/fs_context.c:661
  vfs_get_tree+0x8e/0x390 fs/super.c:1413
  do_new_mount fs/namespace.c:2791 [inline]
  do_mount+0x13b3/0x1c30 fs/namespace.c:3111
  ksys_mount+0xdb/0x150 fs/namespace.c:3320
  __do_sys_mount fs/namespace.c:3334 [inline]
  __se_sys_mount fs/namespace.c:3331 [inline]
  __x64_sys_mount+0xbe/0x150 fs/namespace.c:3331
  do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x459879
Code: fd b7 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 cb b7 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007fb2aca53c78 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000005 RCX: 0000000000459879
RDX: 00000000200002c0 RSI: 0000000020000040 RDI: 0000000000000000
RBP: 000000000075bfc8 R08: 0000000020000400 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fb2aca546d4
R13: 00000000004c5e2f R14: 00000000004da930 R15: 00000000ffffffff
Modules linked in:
---[ end trace c76f5f29f0af3347 ]---
RIP: 0010:__list_del_entry_valid.cold+0x23/0x4f lib/list_debug.c:45
Code: e8 d5 06 1e fe 0f 0b 4c 89 f6 48 c7 c7 e0 26 c6 87 e8 c4 06 1e fe 0f  
0b 4c 89 ea 4c 89 f6 48 c7 c7 20 26 c6 87 e8 b0 06 1e fe <0f> 0b 4c 89 e2  
4c 89 f6 48 c7 c7 80 26 c6 87 e8 9c 06 1e fe 0f 0b
RSP: 0018:ffff8880994076d8 EFLAGS: 00010286
RAX: 000000000000004e RBX: 1ffff11013280ee9 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815c2526 RDI: ffffed1013280ecd
RBP: ffff8880994076f0 R08: 000000000000004e R09: ffffed1015d060d1
R10: ffffed1015d060d0 R11: ffff8880ae830687 R12: dead000000000122
R13: dead000000000100 R14: ffff88808ecdbfb0 R15: ffff88808ecdbfb8
FS:  00007fb2aca54700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffee6574f58 CR3: 00000000a8e6d000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DD960924F
	for <lists+v9fs-developer@lfdr.de>; Sun, 23 Oct 2022 12:42:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1omYQg-0004nu-Fr;
	Sun, 23 Oct 2022 10:42:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XhpVYwkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1omYQU-0004nY-R8 for v9fs-developer@lists.sourceforge.net;
 Sun, 23 Oct 2022 10:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qpNFTxcSpPo8ecI5kvYJisJb2tg21P+66J49GuZR0Pg=; b=HvTx4pyPVRmF2V0yHj89K/PD0h
 bMUeRjQt+wZV+cLNRbh5gyVYxqoxS/jgANt9jR1fV3JEWnfdHI+Fhc5P0AC1UmfKPqpHjP18757m4
 7LWeateMgrUN0ms6qhM4Iq4UbM/VfOo5y2KBdrsC1tSMcyCJ0volTx30dP5lZIsfEkcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qpNFTxcSpPo8ecI5kvYJisJb2tg21P+66J49GuZR0Pg=; b=l
 DlVhQUk7Wll1MnDCAXVrAazLk9Dm3ouaUhpaAWBofIEUjGSDTb23cKZ1S/TthtVWV+AmFfIZRhmcV
 Bgpl6IAWb3km/80lT2xWx1mnP36PiGBeeJZD4bsGjVEZqprkdCUR/IjDvwOpcBRPSrdRd31xI9kZ5
 ngmJf31lT6fyYIPQ=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1omYQF-0004MX-N3 for v9fs-developer@lists.sourceforge.net;
 Sun, 23 Oct 2022 10:41:52 +0000
Received: by mail-il1-f197.google.com with SMTP id
 n7-20020a056e02148700b002ffbfe5a9aeso2060613ilk.19
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 23 Oct 2022 03:41:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qpNFTxcSpPo8ecI5kvYJisJb2tg21P+66J49GuZR0Pg=;
 b=ObUQ+OzicZ4P/Aa1DLjtSAJ2UkDceT6C2i8fV6LTgnAcBB8u49BEgJnbvhyZhDLLDf
 gJgcgdFf+AfGTwkEqzeupKr/dZzdIxD/JogfFa4bjv0/bJF+7OVa+k4KLP73PV8XNUp5
 XoAUG/YN2Q8EnJiqEwX4cLCc/YfoiMH008Na+RShj8UWGQarVEEuowdzv5IICoz8JXBW
 l9Z5OaIQ5K0JfbMlaBsVaeCUHRscTzS08RysBhCsL9y8qgyz6uE8Ddo6dSv+kH861oni
 ZX+gNrFO4eeyxpMjyYDd6QnIy2oTUi9lDmIP/ucov1ECipHR/lMoFn1hI4nAMXLQEu2W
 Zj+A==
X-Gm-Message-State: ACrzQf2awgyJAdPc1Xuq3IByPgJ9NeklJurBZsx3FujtY6L8kNTMscTW
 pFC+XkM0M7IuAnXeiAxHAJnDoU0zRPmpFWcGFxRfwPL3Scyj
X-Google-Smtp-Source: AMsMyM6yCJ1fjd1c0P8z6vMm5DiAxhaPcPmqoWkxDUreIJTyCye7aLLU3PnnmoVUDjARpY3g/aKTxeaqlYS8/tfeflLZXkThj0bM
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:118b:b0:2ff:c7c6:885 with SMTP id
 y11-20020a056e02118b00b002ffc7c60885mr2344809ili.25.1666521694165; Sun, 23
 Oct 2022 03:41:34 -0700 (PDT)
Date: Sun, 23 Oct 2022 03:41:34 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009763b605ebb1519a@google.com>
From: syzbot <syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: d47136c28015
 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=12f36de2880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1omYQF-0004MX-N3
Subject: [V9fs-developer] [syzbot] BUG: corrupted list in p9_fd_cancel (2)
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

HEAD commit:    d47136c28015 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12f36de2880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4789759e8a6d5f57
dashboard link: https://syzkaller.appspot.com/bug?extid=9b69b8d10ab4a7d88056
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1076cb7c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=102eabd2880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/5664e231e97f/disk-d47136c2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9bbe0daa4a04/vmlinux-d47136c2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9b69b8d10ab4a7d88056@syzkaller.appspotmail.com

list_del corruption, ffff88802295c4b0->next is LIST_POISON1 (dead000000000100)
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:55!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 4018 Comm: syz-executor365 Not tainted 6.1.0-rc1-syzkaller-00427-gd47136c28015 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
RIP: 0010:__list_del_entry_valid+0xef/0x130 lib/list_debug.c:53
Code: 29 40 03 06 0f 0b 48 c7 c7 e0 bf 0a 8b 4c 89 fe 31 c0 e8 16 40 03 06 0f 0b 48 c7 c7 40 c0 0a 8b 4c 89 fe 31 c0 e8 03 40 03 06 <0f> 0b 48 c7 c7 a0 c0 0a 8b 4c 89 fe 31 c0 e8 f0 3f 03 06 0f 0b 48
RSP: 0018:ffffc900044c7630 EFLAGS: 00010246
RAX: 000000000000004e RBX: dead000000000122 RCX: 5051969350135b00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000001 R08: ffffffff816cec5d R09: fffff52000898e7d
R10: fffff52000898e7d R11: 1ffff92000898e7c R12: dffffc0000000000
R13: 1ffff1100452b880 R14: dead000000000100 R15: ffff88802295c4b0
FS:  00007f0d52859700(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020001000 CR3: 000000007ed87000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __list_del_entry include/linux/list.h:134 [inline]
 list_del include/linux/list.h:148 [inline]
 p9_fd_cancel+0x9c/0x230 net/9p/trans_fd.c:703
 p9_client_rpc+0x92c/0xad0 net/9p/client.c:723
 p9_client_create+0x997/0x1030 net/9p/client.c:1015
 v9fs_session_init+0x1e3/0x1990 fs/9p/v9fs.c:408
 v9fs_mount+0xd2/0xcb0 fs/9p/vfs_super.c:126
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x88/0x270 fs/super.c:1530
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2e3/0x3d0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x2b/0x70 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0d528a89f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 a1 15 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f0d528592f8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f0d529344e0 RCX: 00007f0d528a89f9
RDX: 0000000020000040 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 00007f0d52901174 R08: 0000000020000080 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0030656c69662f2e
R13: 0000000000000004 R14: 64663d736e617274 R15: 00007f0d529344e8
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__list_del_entry_valid+0xef/0x130 lib/list_debug.c:53
Code: 29 40 03 06 0f 0b 48 c7 c7 e0 bf 0a 8b 4c 89 fe 31 c0 e8 16 40 03 06 0f 0b 48 c7 c7 40 c0 0a 8b 4c 89 fe 31 c0 e8 03 40 03 06 <0f> 0b 48 c7 c7 a0 c0 0a 8b 4c 89 fe 31 c0 e8 f0 3f 03 06 0f 0b 48
RSP: 0018:ffffc900044c7630 EFLAGS: 00010246
RAX: 000000000000004e RBX: dead000000000122 RCX: 5051969350135b00
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000001 R08: ffffffff816cec5d R09: fffff52000898e7d
R10: fffff52000898e7d R11: 1ffff92000898e7c R12: dffffc0000000000
R13: 1ffff1100452b880 R14: dead000000000100 R15: ffff88802295c4b0
FS:  00007f0d52859700(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020001000 CR3: 000000007ed87000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

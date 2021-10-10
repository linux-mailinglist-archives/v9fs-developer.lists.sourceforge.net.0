Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E49D427F4D
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Oct 2021 08:13:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZS5l-0001Gh-5u; Sun, 10 Oct 2021 06:13:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3oX5iYQkbADoouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1mZS5k-0001Gb-Cu
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 06:13:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vnylaAlek/RnETPU/gLVv7pkFuQefb+xmD8wuU/Fupw=; b=k5yJkY1OjZW1S5RUwcKK92ZxTa
 XNO9O55v19GfQMn0jFXYn8pOv5em2+TbLkw4mpyLCkwGcgVTBRc6Q8Opt0AkZLwnxkFi01zlumiSt
 JDFyylz6U0VgTYzg4vpHpf1JNY5MpAtSdO+IiCUqCUnt42ybvJpkdxcexEsSqjSRDf6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vnylaAlek/RnETPU/gLVv7pkFuQefb+xmD8wuU/Fupw=; b=I
 o4WbWKrV3kxzL43zQYduXvEgPULuOL8B1/o/ZJ2kT7fU9Ct/Z6wcSsWx+oar/DaGATtdUDXabJKTm
 FApqKFpEXkpqOBTxoSwHjR5RvqSdajamQM1CITKK3Ahxn5erRQZsBVZFRo/rLQbHchsJgzwAJJ5hr
 4VdBLZG0ziKcaUfo=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZS5i-0003ux-BI
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 06:13:48 +0000
Received: by mail-il1-f199.google.com with SMTP id
 c11-20020a928e0b000000b0024eb114af51so8098537ild.22
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 09 Oct 2021 23:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=vnylaAlek/RnETPU/gLVv7pkFuQefb+xmD8wuU/Fupw=;
 b=OYhy643/uS2sKSkfa5K+LtCF11y9dYbIFZgylPOTqI+ljyFEHMfn2UZfYk8rtvzEGf
 be07Fc+z4O0u0UoBeJbT7vbVwDIH8AAgspK9PF4evf5G3DZoln81V0PnDjmVjdoJHqwI
 OdQjN/9wTV5MWW3wFVmilBN4dGdxVQZhzKqgCNrtEbh7yQbzb4sdTS29kYAq/tar1dFh
 KHzlo1mIFuNTLsy70b646ACM3toyxmnSF+0InkXjkiVIhXu3muMT87anJbsgPAB3IyHX
 obSsuOxb6xaKMlP9FYTTHMnFtQrVSD0A5knXUek0hUdm1PLlZDsp0yRqgBIIbLymKfw4
 HMsw==
X-Gm-Message-State: AOAM531mbub4RcNq7XfEmtWoQlNwG8WwzFPc/O+RX7uaDIoiyWDeaPH6
 /IT+inrjCmCPK1OQ4cByMXlSgYnKll9WRa/4ZBTw/9Yn34Ua
X-Google-Smtp-Source: ABdhPJy4XStPum9lPNXCXOp5SF7t26m6SzT4V7I5Kn8xHmMymQHjMiHrtBW3zWexzRaXSupAeNZE50N3S03Spdz9S+3bIqGfSpLd
MIME-Version: 1.0
X-Received: by 2002:a92:1a10:: with SMTP id a16mr13485130ila.116.1633844897437; 
 Sat, 09 Oct 2021 22:48:17 -0700 (PDT)
Date: Sat, 09 Oct 2021 22:48:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000baddc805cdf928c3@google.com>
From: syzbot <syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 glider@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c7f84f4e1147
 kmsan: core: do not touch interrupts when ent.. git tree:
 https://github.com/google/kmsan.git master console output:
 https://syzkaller.appspot.com/x/log.txt?x=118e86a8b00000 [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1mZS5i-0003ux-BI
Subject: [V9fs-developer] [syzbot] KMSAN: uninit-value in p9pdu_readf
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

HEAD commit:    c7f84f4e1147 kmsan: core: do not touch interrupts when ent..
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=118e86a8b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=978f1b2d7a5aad3e
dashboard link: https://syzkaller.appspot.com/bug?extid=06472778c97ed94af66d
compiler:       clang version 14.0.0 (git@github.com:llvm/llvm-project.git 0996585c8e3b3d409494eb5f1cad714b9e1f7fb5), GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in p9pdu_vreadf net/9p/protocol.c:147 [inline]
BUG: KMSAN: uninit-value in p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
 p9pdu_vreadf net/9p/protocol.c:147 [inline]
 p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
 p9pdu_vreadf net/9p/protocol.c:198 [inline]
 p9pdu_readf+0x2080/0x4fc0 net/9p/protocol.c:526
 p9_client_stat+0x2b3/0x710 net/9p/client.c:1724
 v9fs_mount+0xc14/0x12c0 fs/9p/vfs_super.c:170
 legacy_get_tree+0x163/0x2e0 fs/fs_context.c:610
 vfs_get_tree+0xd8/0x5d0 fs/super.c:1498
 do_new_mount+0x7bc/0x1680 fs/namespace.c:2988
 path_mount+0x106f/0x2960 fs/namespace.c:3318
 do_mount fs/namespace.c:3331 [inline]
 __do_sys_mount fs/namespace.c:3539 [inline]
 __se_sys_mount+0x8eb/0xa10 fs/namespace.c:3516
 __ia32_sys_mount+0x157/0x1b0 fs/namespace.c:3516
 do_syscall_32_irqs_on arch/x86/entry/common.c:114 [inline]
 __do_fast_syscall_32+0x96/0xf0 arch/x86/entry/common.c:180
 do_fast_syscall_32+0x34/0x70 arch/x86/entry/common.c:205
 do_SYSENTER_32+0x1b/0x20 arch/x86/entry/common.c:248
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c

Local variable ----ecode@p9_check_errors created at:
 p9_check_errors+0x68/0xb90 net/9p/client.c:506
 p9_client_rpc+0xd90/0x1410 net/9p/client.c:801
=====================================================
Kernel panic - not syncing: panic_on_kmsan set ...
CPU: 0 PID: 31201 Comm: syz-executor.3 Tainted: G    B   W         5.15.0-rc2-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1ff/0x28e lib/dump_stack.c:106
 dump_stack+0x25/0x28 lib/dump_stack.c:113
 panic+0x44f/0xdeb kernel/panic.c:232
 kmsan_report+0x2ee/0x300 mm/kmsan/report.c:168
 __msan_warning+0xa9/0xf0 mm/kmsan/instrumentation.c:199
 p9pdu_vreadf net/9p/protocol.c:147 [inline]
 p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
 p9pdu_vreadf net/9p/protocol.c:198 [inline]
 p9pdu_readf+0x2080/0x4fc0 net/9p/protocol.c:526
 p9_client_stat+0x2b3/0x710 net/9p/client.c:1724
 v9fs_mount+0xc14/0x12c0 fs/9p/vfs_super.c:170
 legacy_get_tree+0x163/0x2e0 fs/fs_context.c:610
 vfs_get_tree+0xd8/0x5d0 fs/super.c:1498
 do_new_mount+0x7bc/0x1680 fs/namespace.c:2988
 path_mount+0x106f/0x2960 fs/namespace.c:3318
 do_mount fs/namespace.c:3331 [inline]
 __do_sys_mount fs/namespace.c:3539 [inline]
 __se_sys_mount+0x8eb/0xa10 fs/namespace.c:3516
 __ia32_sys_mount+0x157/0x1b0 fs/namespace.c:3516
 do_syscall_32_irqs_on arch/x86/entry/common.c:114 [inline]
 __do_fast_syscall_32+0x96/0xf0 arch/x86/entry/common.c:180
 do_fast_syscall_32+0x34/0x70 arch/x86/entry/common.c:205
 do_SYSENTER_32+0x1b/0x20 arch/x86/entry/common.c:248
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c
RIP: 0023:0xf6ef3549
Code: 03 74 c0 01 10 05 03 74 b8 01 10 06 03 74 b4 01 10 07 03 74 b0 01 10 08 03 74 d8 01 00 00 00 00 00 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90 90 90 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00
RSP: 002b:00000000f44ed5fc EFLAGS: 00000296 ORIG_RAX: 0000000000000015
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 0000000020000000
RDX: 0000000020000140 RSI: 0000000000000000 RDI: 0000000020000580
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..
----------------
Code disassembly (best guess):
   0:	03 74 c0 01          	add    0x1(%rax,%rax,8),%esi
   4:	10 05 03 74 b8 01    	adc    %al,0x1b87403(%rip)        # 0x1b8740d
   a:	10 06                	adc    %al,(%rsi)
   c:	03 74 b4 01          	add    0x1(%rsp,%rsi,4),%esi
  10:	10 07                	adc    %al,(%rdi)
  12:	03 74 b0 01          	add    0x1(%rax,%rsi,4),%esi
  16:	10 08                	adc    %cl,(%rax)
  18:	03 74 d8 01          	add    0x1(%rax,%rbx,8),%esi
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 51 52             	add    %dl,0x52(%rcx)
  23:	55                   	push   %rbp
  24:	89 e5                	mov    %esp,%ebp
  26:	0f 34                	sysenter
  28:	cd 80                	int    $0x80
* 2a:	5d                   	pop    %rbp <-- trapping instruction
  2b:	5a                   	pop    %rdx
  2c:	59                   	pop    %rcx
  2d:	c3                   	retq
  2e:	90                   	nop
  2f:	90                   	nop
  30:	90                   	nop
  31:	90                   	nop
  32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  39:	00 00 00
  3c:	0f                   	.byte 0xf
  3d:	1f                   	(bad)
  3e:	44                   	rex.R


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

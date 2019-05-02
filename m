Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 348D711197
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 May 2019 04:38:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hM1by-0005cZ-A4; Thu, 02 May 2019 02:38:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3DVjKXAkbANIGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1hM1bx-0005cM-5d
 for v9fs-developer@lists.sourceforge.net; Thu, 02 May 2019 02:38:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xtXw2lupwkVjqX6efEcOaASU6ebh70LIWoergDKWJSw=; b=Xvuvt59JhfPSvVdNIZ5IpVeJQs
 ZqNcRZV4JwWgmCIv+BbKpzUKA95+YViQ4D9GmKSlJkb6cqxxcyhPArSlner9UH6Eh0iuJzuIdK1Sv
 MgrP3mHONRhrHJMz24LoIfpMwiTS78AY9atcfs2p+S1C3rgiLwQ9abnMHKN+NK4zwnCU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xtXw2lupwkVjqX6efEcOaASU6ebh70LIWoergDKWJSw=; b=P
 x1QsjS6I0B0WCYtgdwwnblyQZFopTxefFh7Tyjk+p0G/tCr29jOgRcDfQ7yomOI2aDLXbyhaiIuxo
 sTF7slATEELaRcl/6T+fa7y/B8AEP4IQztl6583I2hFHIvpsDuhCG3ISQZolJvkStqcPwunrFbo2v
 2g7L0MCAJNwopOsg=;
Received: from mail-it1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hM1bv-004eTA-GI
 for v9fs-developer@lists.sourceforge.net; Thu, 02 May 2019 02:38:13 +0000
Received: by mail-it1-f197.google.com with SMTP id h69so522218itb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 01 May 2019 19:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=xtXw2lupwkVjqX6efEcOaASU6ebh70LIWoergDKWJSw=;
 b=pCGnxPaDS4+UEb2zb8G8Dv7NV3N6JthARrsICmQqJl6WcePyiwudFuoBqBD97oxYC1
 zs9dsQ7i6pmBVmk3TQwHGymy+BPIvmL+8KU6dzXK1AOXNFzEEEFrrcsh3UunITUakXp+
 o2+PgKHCFT8+GF0yFlm/jsqlya+XGgtrzOqhRTPwUwVQyMIYIEZfCcJVZtxK1Vq1o8A5
 8fVpILWvb1/bDQL12MHJ4BgslAY8KdZGp3rFqj3ObY/zaJiGFKkJjY3K/oclOlEr9wwb
 djENrRkDVyNI2upIk7qlr2PfUi8kY1HrojxcGf+7VkOsubOqkQRI/co44IXv/We3FAWE
 yFpQ==
X-Gm-Message-State: APjAAAWP2Yk2B74fZOb2xOFeJehfkJLlPlRNNBZEFax4+vfiPZ3kVjNb
 347mFtsitbuAUy2cYkqIYJ0oKyV1fPu79/f9SqIXaxl6bsT0
X-Google-Smtp-Source: APXvYqwQqZI+dOYyfu+U0r6fq/+CcfSqb4y1MWdnmVWFreVqywSXoJDTxuiE6SA1+xZcYWY9y+SAgmmGSNCZZOO6qEp0cHUzU/nJ
MIME-Version: 1.0
X-Received: by 2002:a5d:83d7:: with SMTP id u23mr897843ior.56.1556764685538;
 Wed, 01 May 2019 19:38:05 -0700 (PDT)
Date: Wed, 01 May 2019 19:38:05 -0700
In-Reply-To: <000000000000eb6a8e057ab79f82@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000149c440587de8693@google.com>
From: syzbot <syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, netdev@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.197 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1hM1bv-004eTA-GI
Subject: Re: [V9fs-developer] WARNING: refcount bug in p9_req_put
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

syzbot has found a reproducer for the following crash on:

HEAD commit:    459e3a21 gcc-9: properly declare the {pv,hv}clock_page sto..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=136c9284a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ef1b87b455c397cf
dashboard link: https://syzkaller.appspot.com/bug?extid=edec7868af5997928fe9
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1642ee48a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com

WARNING: CPU: 1 PID: 7959 at lib/refcount.c:190  
refcount_sub_and_test_checked lib/refcount.c:190 [inline]
WARNING: CPU: 1 PID: 7959 at lib/refcount.c:190  
refcount_sub_and_test_checked+0x1d0/0x200 lib/refcount.c:180
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 7959 Comm: syz-executor.1 Not tainted 5.1.0-rc7+ #96
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2cb/0x65c kernel/panic.c:214
  __warn.cold+0x20/0x45 kernel/panic.c:571
  report_bug+0x263/0x2b0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:973
RIP: 0010:refcount_sub_and_test_checked lib/refcount.c:190 [inline]
RIP: 0010:refcount_sub_and_test_checked+0x1d0/0x200 lib/refcount.c:180
Code: 1d c8 30 2a 06 31 ff 89 de e8 0c 32 40 fe 84 db 75 94 e8 c3 30 40 fe  
48 c7 c7 60 79 a1 87 c6 05 a8 30 2a 06 01 e8 ae de 12 fe <0f> 0b e9 75 ff  
ff ff e8 a4 30 40 fe e9 6e ff ff ff 48 89 df e8 37
RSP: 0018:ffff888089ce7860 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815afcb6 RDI: ffffed101139cefe
RBP: ffff888089ce78f8 R08: ffff8880a4c584c0 R09: ffffed1015d25011
R10: ffffed1015d25010 R11: ffff8880ae928087 R12: 00000000ffffffff
R13: 0000000000000001 R14: ffff888089ce78d0 R15: 0000000000000000
  refcount_dec_and_test_checked+0x1b/0x20 lib/refcount.c:220
  kref_put include/linux/kref.h:66 [inline]
  p9_req_put+0x20/0x60 net/9p/client.c:401
  p9_conn_destroy net/9p/trans_fd.c:880 [inline]
  p9_fd_close+0x2ee/0x570 net/9p/trans_fd.c:913
  p9_client_create+0x998/0x1400 net/9p/client.c:1083
  v9fs_session_init+0x1e7/0x1960 fs/9p/v9fs.c:421
  v9fs_mount+0x7d/0x920 fs/9p/vfs_super.c:135
  legacy_get_tree+0xf2/0x200 fs/fs_context.c:584
  vfs_get_tree+0x123/0x450 fs/super.c:1481
  do_new_mount fs/namespace.c:2622 [inline]
  do_mount+0x1436/0x2c40 fs/namespace.c:2942
  ksys_mount+0xdb/0x150 fs/namespace.c:3151
  __do_sys_mount fs/namespace.c:3165 [inline]
  __se_sys_mount fs/namespace.c:3162 [inline]
  __x64_sys_mount+0xbe/0x150 fs/namespace.c:3162
  do_syscall_64+0x103/0x610 arch/x86/entry/common.c:290
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x458da9
Code: ad b8 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 7b b8 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007f2e68c68c78 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f2e68c68c90 RCX: 0000000000458da9
RDX: 0000000020000100 RSI: 00000000200000c0 RDI: 0000000000000000
RBP: 000000000073bf00 R08: 00000000200013c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f2e68c696d4
R13: 00000000004c4da7 R14: 00000000004d8a20 R15: 0000000000000005
Kernel Offset: disabled
Rebooting in 86400 seconds..



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

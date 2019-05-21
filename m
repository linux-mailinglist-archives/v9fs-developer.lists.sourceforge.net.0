Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D68E7250A1
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 May 2019 15:39:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hT4z7-0003Cd-BF; Tue, 21 May 2019 13:39:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3e__jXAkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1hT4z6-0003CE-1M
 for v9fs-developer@lists.sourceforge.net; Tue, 21 May 2019 13:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HIpEwMoRUIhtPEOiJfYRhBBuiY1rMmkmSvNweC5cqNc=; b=cMJEQh3azOlqInqd2W4/Pbcukk
 AUD4u5nKiavY7ZRCht87MSSpbeX5aXsaCIVom7rKB25QRlWu7jYV2WU6FW0KER2GZSuEu5vQCuBto
 GJQf0oAiwi3v8YCb0RgT9IsT0b8RwmgElRUestjM1fubXuFDQ7aaJqmL4tLSyPy9zjHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HIpEwMoRUIhtPEOiJfYRhBBuiY1rMmkmSvNweC5cqNc=; b=Y
 3jj1aBNqmSEpfbYPNt6RFmHV/k9BowiHyzIAtlObqO4Ym9MZOQHJFfejDUYJldgHo8FkZO3/Pz7zn
 /6V9VO7msx7ZF5T8bj4I1HcM5Mvnh1N5pLDq0iOMNP78jPR5U5lz7Dw96Gty2I7V2AEujSeLwNYiO
 pW3xDjHtWheF+OMw=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hT4z3-002zrV-Bt
 for v9fs-developer@lists.sourceforge.net; Tue, 21 May 2019 13:39:15 +0000
Received: by mail-io1-f72.google.com with SMTP id w3so5350259iot.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 21 May 2019 06:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=HIpEwMoRUIhtPEOiJfYRhBBuiY1rMmkmSvNweC5cqNc=;
 b=Jwrg4nMLFpTxVASOwFseCTxRQ5jXXp6MzDNbL4FWpCWx9BebVCSY0cBYXBzo6EuGzs
 kEsQ+wApxKVvxGAE8WjJbUEKcT7lDQ6NHNXgHsHo09fzGYn9OGMQ6zr3uijaPdgi0vkZ
 +D5xdX88N0mm4CJ1JhXOGVBa8gtp5n/QBpNpDlADAM2greYQD7eQZGgN6YP6ujABz/oV
 Wcdso1FyWubAkTlFgnnNrbYXvc/hY9ijP83uGK2uVR4fKHLQgexVKO0mVyBvlYUHkGxz
 nn1urrXdiD2j90k0PMpDAbSAnVJrNcLAzPbK9iIn2IiXWzwZ5SxWFELIOnxNj6KqArzE
 0Tng==
X-Gm-Message-State: APjAAAXSo9Q7nSQF46ytpck7hZF1RFURCHUADqOU9LLqVaI3E8lYFPDW
 7NsASaVE29mYLfHsEfFWIcfjzGet5mR5XO24t2RyucUuR8ps
X-Google-Smtp-Source: APXvYqwugDzlSoELxSyOrmccgvIrUMkmFvZPH/4JEypFx8l0ZwEAwrhnWDJeusMA1pSAoJwZ7mlrOYKK9M2tLlL+FcNiN/rbOBVd
MIME-Version: 1.0
X-Received: by 2002:a24:9412:: with SMTP id j18mr3731596ite.124.1558445947553; 
 Tue, 21 May 2019 06:39:07 -0700 (PDT)
Date: Tue, 21 May 2019 06:39:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001b266f058965f9a7@google.com>
From: syzbot <syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 LONGWORDS              Long string of long words
X-Headers-End: 1hT4z3-002zrV-Bt
Subject: [V9fs-developer] memory leak in v9fs_cache_session_get_cookie
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

HEAD commit:    f49aa1de Merge tag 'for-5.2-rc1-tag' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1224e228a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=61dd9e15a761691d
dashboard link: https://syzkaller.appspot.com/bug?extid=3a030a73b6c1e9833815
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ffe1f8a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=151e66bca00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com

  fl=222 nc=0 na=1]
BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 16.870s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 16.870s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 16.820s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 17.810s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 17.810s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 17.760s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 18.730s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 18.730s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 18.680s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 20.550s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 20.550s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 20.510s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 21.520s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 21.520s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 21.470s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7ce0 (size 32):
   comm "syz-executor234", pid 7220, jiffies 4294945629 (age 23.430s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888114735700 (size 32):
   comm "syz-executor234", pid 7227, jiffies 4294945629 (age 23.430s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 32 39 00 00 00 00 00 00  4294945629......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811d5b7860 (size 32):
   comm "syz-executor234", pid 7225, jiffies 4294945634 (age 23.380s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 36 33 34 00 00 00 00 00 00  4294945634......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000002cabdadb>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:55 [inline]
     [<000000002cabdadb>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<000000002cabdadb>] slab_alloc mm/slab.c:3326 [inline]
     [<000000002cabdadb>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<00000000c9696bd2>] kmalloc include/linux/slab.h:547 [inline]
     [<00000000c9696bd2>] v9fs_random_cachetag fs/9p/cache.c:51 [inline]
     [<00000000c9696bd2>] v9fs_cache_session_get_cookie+0xa6/0x100  
fs/9p/cache.c:67
     [<000000009f2e3d4c>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:485
     [<000000003e76ac4c>] v9fs_mount+0x5e/0x3a0 fs/9p/vfs_super.c:135
     [<00000000de1b2937>] legacy_get_tree+0x27/0x80 fs/fs_context.c:665
     [<000000009d8e25aa>] vfs_get_tree+0x2e/0x120 fs/super.c:1476
     [<0000000012e90ac4>] do_new_mount fs/namespace.c:2790 [inline]
     [<0000000012e90ac4>] do_mount+0x932/0xc50 fs/namespace.c:3110
     [<0000000055e18c39>] ksys_mount+0xab/0x120 fs/namespace.c:3319
     [<000000003fbb869f>] __do_sys_mount fs/namespace.c:3333 [inline]
     [<000000003fbb869f>] __se_sys_mount fs/namespace.c:3330 [inline]
     [<000000003fbb869f>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3330
     [<000000005a440e8e>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<0000000091465610>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

executing program
executing program
executing program
executing program
executing program
executing program
executing program


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

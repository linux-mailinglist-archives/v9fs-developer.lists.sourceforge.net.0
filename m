Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87590D9A75
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Oct 2019 21:52:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iKpLF-0000Ez-Cb; Wed, 16 Oct 2019 19:52:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <353SnXQkbAGISYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iKpLD-0000Ej-Ga
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Oct 2019 19:52:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f4oQKRVyB5V9r7vvnjpTlqVdZAeIBiIp24JG7gzMIZ8=; b=D5a9HDte/fTOZ5SpFTO2vh2a0S
 JP/ZNL2A7OoBt8eQATlVLLJpnJWOMa5cFEQnsmr3a/segYNrpssLoN95LtURAk/dHoDLGcowrvB5g
 bXfN5+mcP4WwJvw+2Emtu5am2/2RXL/YMmKH/OYWYAzxEiAhgmAf7hRVkMHf2iL/A2pU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f4oQKRVyB5V9r7vvnjpTlqVdZAeIBiIp24JG7gzMIZ8=; b=B
 tUVoZoP3orIxSVl4P77MY6Qm3pgjBz+ArnScHZ6MG6EU3l+1zZCjun8MZHrYF+zU037ch2ySseSUN
 0wXlZ6X7by+Us7nUPznqdm5nMp2tyEUvz54uKzCZhGi4Sx8sXZZhkw7JN45DqAzA3v1C2tTXdRf1p
 SqbarSZ25UauZtE0=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKpLB-00Bhyg-24
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Oct 2019 19:52:15 +0000
Received: by mail-io1-f69.google.com with SMTP id w8so39505272iol.20
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2019 12:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=f4oQKRVyB5V9r7vvnjpTlqVdZAeIBiIp24JG7gzMIZ8=;
 b=Z4SIRpZ9N74nSzgztpbSTg2kBFruFRDFRhKYqahJ8gVUVucEinyjtrbMv6urJeKEyD
 SWMQVG/f7Cq7n9R6vUI1vfrLp3uiLuCjcyJKY6lRIym1yOkBrUUFQEg0xJaV/ZeVu5ZA
 lolXpZAT2Xgc9deTW4FUiEGUwKlsdvaIQO+cAO3vyYTZ6oXR4qA9HYWndmJpp/Pcy7t+
 ZKxNtfZ/o/Wm70UoDQkzslOSd5sls/3t5NqcA7b75eJbih9D/I1GAXidSioF6FnQDlis
 qMDLyNUm4CgjZNJpbCZ3gIbVB9mllLhtWc0Ik5fxQkHioac9UTY7x08YGJtklScL9jUz
 E3DQ==
X-Gm-Message-State: APjAAAXE/TD6XPutDtag+URVce3j6ZAtqSiT75WBHprzXL67mZW/gaiJ
 936BiEcfqrssvD58eyUqT8RxywKc+MPb9Tlri/6CABFPDx9T
X-Google-Smtp-Source: APXvYqw5ECSMsW/AC1VYOzYcfrUWhTBf1KYLus65zc2Ju9Tnazcc0hL19yoT4BJhXXN4DDwaZioUopsbD6a3eB8vUYEa6wSqRNQS
MIME-Version: 1.0
X-Received: by 2002:a02:a199:: with SMTP id n25mr43419354jah.92.1571255527153; 
 Wed, 16 Oct 2019 12:52:07 -0700 (PDT)
Date: Wed, 16 Oct 2019 12:52:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008c395405950c6f7c@google.com>
From: syzbot <syzbot+f577fd1dae1f5b0fd8c7@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKpLB-00Bhyg-24
Subject: [V9fs-developer] memory leak in v9fs_cache_session_get_cookie (2)
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

HEAD commit:    3b1f00ac Merge tag 'for_linus' of git://git.kernel.org/pub..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13a95fe7600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cd7f8e43c7bdf83a
dashboard link: https://syzkaller.appspot.com/bug?extid=f577fd1dae1f5b0fd8c7
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13602173600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1700584b600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+f577fd1dae1f5b0fd8c7@syzkaller.appspotmail.com

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 18.760s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 18.760s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 18.760s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 18.550s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 19.840s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 19.840s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 19.840s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 19.630s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 20.910s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 20.910s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 20.910s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 20.700s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 22.950s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 22.950s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 22.950s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 22.740s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 25.030s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 25.030s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 25.030s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 24.820s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888122c0b620 (size 32):
   comm "syz-executor002", pid 7059, jiffies 4294945363 (age 26.110s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819ce80 (size 32):
   comm "syz-executor002", pid 7062, jiffies 4294945363 (age 26.110s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 00 00 00 00 00  4294945363......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff88811819c2c0 (size 32):
   comm "syz-executor002", pid 7067, jiffies 4294945363 (age 26.110s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 36 33 00 73 74 65 6d 5f  4294945363.stem_
     72 3a 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r:kernel_t:s0...
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

BUG: memory leak
unreferenced object 0xffff888117fc1c80 (size 32):
   comm "syz-executor002", pid 7080, jiffies 4294945384 (age 25.900s)
   hex dump (first 32 bytes):
     34 32 39 34 39 34 35 33 38 34 00 00 00 00 00 00  4294945384......
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<00000000914ad539>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<00000000914ad539>] slab_post_alloc_hook mm/slab.h:586 [inline]
     [<00000000914ad539>] slab_alloc mm/slab.c:3319 [inline]
     [<00000000914ad539>] kmem_cache_alloc_trace+0x145/0x2c0 mm/slab.c:3548
     [<00000000d7aea07a>] kmalloc include/linux/slab.h:556 [inline]
     [<00000000d7aea07a>] v9fs_random_cachetag fs/9p/cache.c:36 [inline]
     [<00000000d7aea07a>] v9fs_cache_session_get_cookie+0xa6/0x110  
fs/9p/cache.c:52
     [<00000000fdcf7df2>] v9fs_session_init+0x5c3/0x880 fs/9p/v9fs.c:470
     [<000000001a42c839>] v9fs_mount+0x5e/0x3c0 fs/9p/vfs_super.c:124
     [<00000000a90ee9c2>] legacy_get_tree+0x27/0x80 fs/fs_context.c:647
     [<000000009bc32b08>] vfs_get_tree+0x2d/0xe0 fs/super.c:1545
     [<000000005bc96ae8>] do_new_mount fs/namespace.c:2823 [inline]
     [<000000005bc96ae8>] do_mount+0x95f/0xc60 fs/namespace.c:3143
     [<000000002301e20b>] ksys_mount+0xab/0x120 fs/namespace.c:3352
     [<000000001a409208>] __do_sys_mount fs/namespace.c:3366 [inline]
     [<000000001a409208>] __se_sys_mount fs/namespace.c:3363 [inline]
     [<000000001a409208>] __x64_sys_mount+0x26/0x30 fs/namespace.c:3363
     [<0000000033193570>] do_syscall_64+0x73/0x1f0  
arch/x86/entry/common.c:290
     [<00000000b1f42f27>] entry_SYSCALL_64_after_hwframe+0x44/0xa9

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

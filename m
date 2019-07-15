Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DCB68718
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jul 2019 12:34:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hmyJH-0006zM-8Y; Mon, 15 Jul 2019 10:34:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hmyJF-0006zE-MS
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 10:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Cc:Subject:From:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fd4aRHwKNlZ/NCP5S+IIMQHhYYsOV3lmboswDkZAkUc=; b=m2h8EnGH5Et2MizNEKsyNyBoeC
 5bCuj+BJfVTDlfAFd29axDH8xUc5fl0O/Fp2yamAkkYFNgUwx2slptryvJt1tCHz1bBO37siiX6Wi
 ZmFwI0Qpr2AxR4Do6+d0/J6A8F3GXp+dSyHbgZq1PMkzzimc/O4lTCjc7u3/DzdmSf6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Cc:
 Subject:From:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fd4aRHwKNlZ/NCP5S+IIMQHhYYsOV3lmboswDkZAkUc=; b=V
 XI/42bgtJYjph0P40/2+3YXmk2rCXz+/M2WPJHvQGHLS8wGnGoQX4cm/GEk11R5D+qj9w+5uSD3oR
 9MEgnqHQ6H8dEq8M3BMnTB2ltCW0C6nqJh0PZ3figu8eJ8rCme0LPIA0esk7ksQyRBnLt0b+ceAI7
 E3zq0RU+3S5cTE5k=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hmyJD-002DNb-Fx
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 10:34:17 +0000
Received: by mail-ed1-f67.google.com with SMTP id m10so14941963edv.6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Jul 2019 03:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:openpgp:autocrypt:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=fd4aRHwKNlZ/NCP5S+IIMQHhYYsOV3lmboswDkZAkUc=;
 b=B+tbaWJsfQOCpRcWlrB50yuZJxK+nvBrFo2Fm0NpOGq2qA8r3cXz09qYreRUE8NHeM
 MGWLNm4Tsb8FVJhavorXlD8QfXH18ri50eZA5Yes1pixCCafNYgkkGPrSfBwRbyTgIVw
 XOg/WoEvkyLaLbtQU2L6pVK+BZ2B6lsFKP4prZqNgNJpoaGgkWNQV4kIPolTQWWKl7ut
 9wUAElpXSP/j9aFo89O961fSobxPAJFOBRP/Xo95r+MVVxGMmz5dRdRuhsdzRWzpUKj4
 Xvyn5iF0wd0xF/xUFQRMqVBDm61W4v7PqEwu08Ryv3R40HdcJ0FdQ1ea8/F1Ky95+Bll
 g0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:openpgp:autocrypt:cc:message-id
 :date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=fd4aRHwKNlZ/NCP5S+IIMQHhYYsOV3lmboswDkZAkUc=;
 b=lNNqI4vu8HER0oh/Y9lOKbrMoGplC0CmOTLPp1wkEG2l5SZKxAgC+CQb1J78h+yWUh
 PYKhcuYg5/AtzG+xNMhP/X0vFgKq1r1B/2YzlJ1oinB8tL/H7EpjUEYCiAXvxFdAngXO
 oxsVjCYj11JBmg6fsAxtARIwKl9+vjaDAaMmmuLAWl7IDvlkRJVtp9lVx6Qcti4PAlop
 0aZObOtGKLp7ZUBlo8BsFRjowqFJaxa9Ps9BIUTQhrLp+DI3mU4/YmBtedvHN/xEMx4y
 IH1O3pcp1VQZ6SKg6cXlrCXT84hXWhYlMVB2YdIWoCgmyz+BR/YahIWRSUy5Z5jpuLNy
 9mfA==
X-Gm-Message-State: APjAAAXkAatzqu+BCuPrcqv/bcLD+pw1NVJQJ9gd0DmQsaQFXkdQw+KO
 ZQ6uIw5pW/WuK0Pl3+BS5xRbog==
X-Google-Smtp-Source: APXvYqxOL4I9/FCUAE9cneKMVlfjhkTwUsdhE92Aj6ss5mAz/mSDmX3ySMRlTlEyUvtOGL84Khn/wA==
X-Received: by 2002:aa7:d909:: with SMTP id a9mr22467711edr.261.1563185224547; 
 Mon, 15 Jul 2019 03:07:04 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net (hag0-main.tessares.net.
 [87.98.252.165])
 by smtp.gmail.com with ESMTPSA id d4sm5037319edb.4.2019.07.15.03.07.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 03:07:03 -0700 (PDT)
To: v9fs-developer@lists.sourceforge.net
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
Date: Mon, 15 Jul 2019 12:07:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hmyJD-002DNb-Fx
Subject: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

First, thank you for developing and maintaining 9P FS in Linux!

When testing our MPTCP out-of-tree kernel[1] with KASAN this week-end,
we saw some new warnings, always the same trace and looking like that:



[   16.464577]
==================================================================
[   16.465448] BUG: KASAN: slab-out-of-bounds in strscpy+0x49d/0x590
[   16.466171] Read of size 8 at addr ffff88803525f788 by task confd/330
[   16.467114]
[   16.467313] CPU: 0 PID: 330 Comm: confd Not tainted 4.14.133-mptcp+ #2
[   16.468071] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 0.5.1 01/01/2011
[   16.469016] Call Trace:
[   16.469318]  dump_stack+0xa6/0x12e
[   16.469721]  ? _atomic_dec_and_lock+0x1b2/0x1b2
[   16.470255]  ? radix_tree_lookup+0x10/0x10
[   16.470764]  ? strscpy+0x49d/0x590
[   16.471299]  print_address_description+0xa1/0x330
[   16.471918]  ? strscpy+0x49d/0x590
[   16.472321]  kasan_report+0x23f/0x350
[   16.472751]  strscpy+0x49d/0x590
[   16.473135]  ? strncpy+0xd0/0xd0
[   16.473518]  p9dirent_read+0x26b/0x510
[   16.473977]  ? unwind_next_frame+0xc97/0x1eb0
[   16.474481]  ? p9stat_read+0x440/0x440
[   16.474945]  ? entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   16.475543]  ? rcutorture_record_progress+0x10/0x10
[   16.476123]  ? kernel_text_address+0x111/0x120
[   16.476656]  ? __kernel_text_address+0xe/0x30
[   16.477273]  v9fs_dir_readdir_dotl+0x340/0x5b0
[   16.477900]  ? kasan_slab_free+0x12d/0x1a0
[   16.478377]  ? v9fs_dir_readdir+0x810/0x810
[   16.478887]  ? new_slab+0x29f/0x3b0
[   16.479298]  ? iterate_fd+0x300/0x300
[   16.479728]  ? do_filp_open+0x24a/0x3b0
[   16.480177]  ? SyS_getcwd+0x3b7/0x9f0
[   16.480626]  ? may_open_dev+0xc0/0xc0
[   16.481056]  ? get_unused_fd_flags+0x180/0x180
[   16.481643]  ? __up.isra.0+0x230/0x230
[   16.482195]  ? __fdget_pos+0x105/0x170
[   16.482658]  ? iterate_dir+0x171/0x5b0
[   16.483097]  iterate_dir+0x171/0x5b0
[   16.483518]  SyS_getdents+0x1dc/0x3a0
[   16.483968]  ? SyS_old_readdir+0x200/0x200
[   16.484444]  ? SyS_write+0x1c0/0x270
[   16.484875]  ? fillonedir+0x1a0/0x1a0
[   16.485315]  ? SyS_old_readdir+0x200/0x200
[   16.485791]  ? do_syscall_64+0x259/0xa90
[   16.486258]  do_syscall_64+0x259/0xa90
[   16.486715]  ? syscall_return_slowpath+0x340/0x340
[   16.487320]  ? do_page_fault+0x11f/0x400
[   16.487849]  ? __do_page_fault+0xe00/0xe00
[   16.488305]  ? __hrtick_start+0x2f0/0x2f0
[   16.488752]  ? __switch_to_asm+0x31/0x60
[   16.489189]  ? __switch_to_asm+0x31/0x60
[   16.489626]  ? __switch_to_asm+0x25/0x60
[   16.490063]  ? __switch_to_asm+0x31/0x60
[   16.490500]  ? __switch_to_asm+0x31/0x60
[   16.490940]  ? __switch_to_asm+0x31/0x60
[   16.491377]  ? __switch_to_asm+0x25/0x60
[   16.491820]  ? __switch_to_asm+0x31/0x60
[   16.492305]  ? __switch_to_asm+0x31/0x60
[   16.492769]  ? __switch_to_asm+0x31/0x60
[   16.493306]  ? __switch_to_asm+0x31/0x60
[   16.493917]  ? __switch_to_asm+0x31/0x60
[   16.494402]  ? __switch_to_asm+0x25/0x60
[   16.494859]  ? __switch_to_asm+0x31/0x60
[   16.495344]  ? __switch_to_asm+0x31/0x60
[   16.495798]  ? __switch_to_asm+0x31/0x60
[   16.496283]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   16.496885] RIP: 0033:0x7f0bd5b26855
[   16.497313] RSP: 002b:00007f0bd69d4d60 EFLAGS: 00000246 ORIG_RAX:
000000000000004e
[   16.498387] RAX: ffffffffffffffda RBX: 00007f0bb800a910 RCX:
00007f0bd5b26855
[   16.499221] RDX: 0000000000008000 RSI: 00007f0bb800a910 RDI:
000000000000002c
[   16.500102] RBP: 00007f0bb800a910 R08: 00007f0bd69d4e10 R09:
0000000000008030
[   16.500942] R10: 0000000000000076 R11: 0000000000000246 R12:
ffffffffffffff70
[   16.501780] R13: 0000000000000002 R14: 00007f0bb80008d0 R15:
000000000129cb44
[   16.502641]
[   16.502819] Allocated by task 330:
[   16.503230]  kasan_kmalloc+0xe4/0x170
[   16.503799]  __kmalloc+0xdd/0x1c0
[   16.504259]  p9pdu_readf+0xbb8/0x2940
[   16.504707]  p9dirent_read+0x174/0x510
[   16.505154]  v9fs_dir_readdir_dotl+0x340/0x5b0
[   16.505694]  iterate_dir+0x171/0x5b0
[   16.506122]  SyS_getdents+0x1dc/0x3a0
[   16.506573]  do_syscall_64+0x259/0xa90
[   16.507031]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   16.507633]
[   16.507804] Freed by task 322:
[   16.508178]  kasan_slab_free+0xac/0x1a0
[   16.508741]  kfree+0xcd/0x1e0
[   16.509194]  p9stat_free+0x32/0x200
[   16.509633]  v9fs_vfs_get_link+0x173/0x230
[   16.510118]  ovl_get_link+0x52/0x80
[   16.510538]  trailing_symlink+0x42c/0x5f0
[   16.511034]  path_lookupat+0x1b4/0xc30
[   16.511481]  filename_lookup+0x237/0x470
[   16.511955]  vfs_statx+0xb0/0x120
[   16.512358]  SyS_newstat+0x70/0xc0
[   16.512759]  do_syscall_64+0x259/0xa90
[   16.513205]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   16.513807]
[   16.514041] The buggy address belongs to the object at ffff88803525f780
[   16.514041]  which belongs to the cache kmalloc-16 of size 16
[   16.515645] The buggy address is located 8 bytes inside of
[   16.515645]  16-byte region [ffff88803525f780, ffff88803525f790)
[   16.516997] The buggy address belongs to the page:
[   16.517563] page:ffff88803f5407c0 count:1 mapcount:0 mapping:
  (null) index:0x0
[   16.518504] flags: 0xc80000000100(slab)
[   16.519103] raw: 0000c80000000100 0000000000000000 0000000000000000
0000000180800080
[   16.520066] raw: ffff88803f4fa900 0000000800000008 ffff888035c01b40
0000000000000000
[   16.520981] page dumped because: kasan: bad access detected
[   16.521647]
[   16.521818] Memory state around the buggy address:
[   16.522413]  ffff88803525f680: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   16.523258]  ffff88803525f700: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   16.524118] >ffff88803525f780: 00 02 fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   16.525093]                       ^
[   16.525591]  ffff88803525f800: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   16.526471]  ffff88803525f880: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   16.527323]
==================================================================
[   16.528175] Disabling lock debugging due to kernel taint



We are running tests in different KVMs and using 9P to have a shared
file system between VMs and the host:

    mount -t 9p outshare  "${MOUNT_DIR}/overlay/out" -o
trans=virtio,version=9p2000.L,access=0,rw


Our out-of-tree kernel doesn't modify the FS part.

The last time we run some tests with KASAN was with our kernel sync with
the upstream v4.14.127 version.

$ git log --oneline v4.14.127..v4.14.133 -- fs/9p net/9p include/net/9p/
include/uapi/linux/virtio_9p.h include/trace/events/9p.h
d4fe45ddfe61 net/9p: include trans_common.h to fix missing prototype
warning.
84693d060965 9p: p9dirent_read: check network-provided name length
9e69c673fe07 9p/rdma: remove useless check in cm_event_handler
c9928b45845b 9p: acl: fix uninitialized iattr access
ce3220827dcc 9p/rdma: do not disconnect on down_interruptible EAGAIN
26b3b1dbb395 9p/xen: fix check for xenbus_read error in front_probe

These new commits have been added by Sasha (in cc) in v4.14.132, see:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/commit/queue-4.14?id=7e653e91a19a5667b8904097e8fc16462fb3a0f3

I saw some similar bug reports from syzbot and others from last year. Is
it possible that this issue has already been fixed in master but not
backported to v4.14 tree yet?

Have a good day,
Matt

[1] https://github.com/multipath-tcp/mptcp/
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

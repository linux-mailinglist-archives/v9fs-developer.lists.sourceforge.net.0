Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D1E2B4244
	for <lists+v9fs-developer@lfdr.de>; Mon, 16 Nov 2020 12:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+yBZzbOlqBCcCHMu+UlxIoEB705Eo+ZjpOTDOENrn+U=; b=TJBmz7Y1mqLP3IROqgGPSsAH12
	2nmRs7EbG+fepxm/kKuCMg2ci/y2FY6XRgwjUZRHyK5SFCeCHXDyWsPm824n6apQewMr7TKwimfzh
	EpWcenjbKfe5u1ik8SK/FccuP8L2JijH2T80G9QOLmCILXVxhOZp8fVYWcGXFEYLesJw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kecQJ-0006QG-3z; Mon, 16 Nov 2020 11:11:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dvyukov@google.com>) id 1kecQH-0006Q7-8p
 for v9fs-developer@lists.sourceforge.net; Mon, 16 Nov 2020 11:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fSyWfHMbqsw8Zkd0DQKyrHH6W5HuZEjs3rsVI0VZGww=; b=QoYDYDi6GsdW+BvSvCDZCmqRo/
 Dk7vq+mURENVPGsUD0NRBteYGy7aLMKbmw5j4pUfYEslzoi0y8P0bHxKlAatVybCuqAFbKxLuPXqt
 28yK7U/roxU284svUlv/aRR0iwCDckNJuxnJsYxSPUS6I2wWW6Qv/pllPQ411LiUfqyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fSyWfHMbqsw8Zkd0DQKyrHH6W5HuZEjs3rsVI0VZGww=; b=llgJekiCS4/5SvWZzRLWHyQF5s
 hv00QcjFvjC5RHcsWbx8g7stgEZ4hKxoK7W3ixcoH0J/tCErFGi9GEtMz5gUErzPnt5AgLN7jb4Oi
 1Y7fHPm2cXqJOd61RwB+6sYT524rDxga6noqiE+ZfuaHENNkBMgAfsec+SRH35JgkTwI=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kecQ0-00Ecbd-Oo
 for v9fs-developer@lists.sourceforge.net; Mon, 16 Nov 2020 11:11:47 +0000
Received: by mail-qk1-f194.google.com with SMTP id u4so16346605qkk.10
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 16 Nov 2020 03:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fSyWfHMbqsw8Zkd0DQKyrHH6W5HuZEjs3rsVI0VZGww=;
 b=dfYugB5qvGr57g4YL3GEW6fNCws4rmjQ/IxqVRxNXnBnDliyX67BXekn4wlUMegniY
 9vsCMSN/+SfrW4E7lqSROs2t5gViZuPeoylpJDTs8JLOymbx8XeHGAhZsU2jAmQ3PG6I
 jMesNJXk188H4jHwHcw6OG2Lb4NqYnHsaanCHGWxaIRgeI97Uq2sMSDuO1vh7phb9R3r
 Y/RsbPG/372nxGqnOqhxJwQk7anl+C6EMWVdVyo/2ChyxaPWl190Hi6aL2EqMbQ/pZkw
 jZxYvCFDHpNkCrBnN3Wf11OYq2OVSkZRmJAbnD2GXdqgB6im60vxXasR7FfOPmh3ijEA
 F/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fSyWfHMbqsw8Zkd0DQKyrHH6W5HuZEjs3rsVI0VZGww=;
 b=GqM9VczfM37Dl8oVIrHdNVsnUXmHkegtalh0MWEHeC625D5eIz+1LJDmAr4N1Mxw1z
 ih1ub1YyYoHzvhINA4l7i08Ws/KADp+bagdhbFsLJEbBvX2BcvzAr2MzbQz6jHWAuI5F
 kHIESONfs5x6x9wiFnheZTG3+b0PTG9PaaLnq4atLXihKW6oDUl5o/+tyCpYLL+zI/m4
 99WSvIG1igc2rRgny4jEJ555r2t6ckOnL61tk+6XhrEne8V1bzkXoLieypOu7nedPSRa
 nJT5groHTgmyfexndlcGi0Qoa00jbJGMiH/pGfQ9Z5ReRRJcjQOjgtFEJeVJ/E2bKJ+x
 IW5w==
X-Gm-Message-State: AOAM533j9vDad6vz/CUrZKlXPvN6+pIl2SZmJPEtoTs/Y0maMRN2xSkE
 d4Oh7WrrVLRAUQB3gMHYEMxk6Oh4Q9pxAyrbSQumhQ==
X-Google-Smtp-Source: ABdhPJw2aA4znWI4ahsXM30ZWQu9uSOxkyqTDr2sMEfhc6CDl5Gnn/Ggq0vogUKle5msVJrKgBx78hNIISVbQFEVpJg=
X-Received: by 2002:a37:49d6:: with SMTP id
 w205mr13948885qka.501.1605525086672; 
 Mon, 16 Nov 2020 03:11:26 -0800 (PST)
MIME-Version: 1.0
References: <0000000000006ef45b05b436ddb4@google.com>
In-Reply-To: <0000000000006ef45b05b436ddb4@google.com>
Date: Mon, 16 Nov 2020 12:11:15 +0100
Message-ID: <CACT4Y+aMw276FEUfS5+ZjJxxZqmFqM7=MnC7gWE9zn7vgha-AA@mail.gmail.com>
To: syzbot <syzbot+3a0f6c96e37e347c6ba9@syzkaller.appspotmail.com>, 
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, 
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linux-MM <linux-mm@kvack.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kecQ0-00Ecbd-Oo
Subject: Re: [V9fs-developer] KASAN: invalid-free in p9_client_create
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
From: Dmitry Vyukov via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 16, 2020 at 11:30 AM syzbot
<syzbot+3a0f6c96e37e347c6ba9@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    92edc4ae Add linux-next specific files for 20201113
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=142f8816500000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=79ad4f8ad2d96176
> dashboard link: https://syzkaller.appspot.com/bug?extid=3a0f6c96e37e347c6ba9
> compiler:       gcc (GCC) 10.1.0-syz 20200507
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+3a0f6c96e37e347c6ba9@syzkaller.appspotmail.com

Looks like a real double free in slab code. +MM maintainers
Note there was a preceding kmalloc failure in sysfs_slab_add.


> RBP: 00007fa358076ca0 R08: 0000000020000080 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 000000000000001f
> R13: 00007fff7dcf224f R14: 00007fa3580779c0 R15: 000000000118bf2c
> kobject_add_internal failed for 9p-fcall-cache (error: -12 parent: slab)
> ==================================================================
> BUG: KASAN: double-free or invalid-free in slab_free mm/slub.c:3157 [inline]
> BUG: KASAN: double-free or invalid-free in kmem_cache_free+0x82/0x350 mm/slub.c:3173
>
> CPU: 0 PID: 15981 Comm: syz-executor.5 Not tainted 5.10.0-rc3-next-20201113-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:79 [inline]
>  dump_stack+0x107/0x163 lib/dump_stack.c:120
>  print_address_description.constprop.0.cold+0x5b/0x2f8 mm/kasan/report.c:230
>  kasan_report_invalid_free+0x51/0x80 mm/kasan/report.c:355
>  ____kasan_slab_free+0x100/0x110 mm/kasan/common.c:352
>  kasan_slab_free include/linux/kasan.h:194 [inline]
>  slab_free_hook mm/slub.c:1548 [inline]
>  slab_free_freelist_hook+0x5d/0x150 mm/slub.c:1586
>  slab_free mm/slub.c:3157 [inline]
>  kmem_cache_free+0x82/0x350 mm/slub.c:3173
>  create_cache mm/slab_common.c:274 [inline]
>  kmem_cache_create_usercopy+0x2ab/0x300 mm/slab_common.c:357
>  p9_client_create+0xc4d/0x10c0 net/9p/client.c:1063
>  v9fs_session_init+0x1dd/0x1770 fs/9p/v9fs.c:406
>  v9fs_mount+0x79/0x9b0 fs/9p/vfs_super.c:126
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1549
>  do_new_mount fs/namespace.c:2896 [inline]
>  path_mount+0x12ae/0x1e70 fs/namespace.c:3227
>  do_mount fs/namespace.c:3240 [inline]
>  __do_sys_mount fs/namespace.c:3448 [inline]
>  __se_sys_mount fs/namespace.c:3425 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x45deb9
> Code: 0d b4 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 db b3 fb ff c3 66 2e 0f 1f 84 00 00 00 00
> RSP: 002b:00007fa358076c78 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 0000000000021800 RCX: 000000000045deb9
> RDX: 0000000020000100 RSI: 0000000020000040 RDI: 0000000000000000
> RBP: 00007fa358076ca0 R08: 0000000020000080 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 000000000000001f
> R13: 00007fff7dcf224f R14: 00007fa3580779c0 R15: 000000000118bf2c
>
> Allocated by task 15981:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:39
>  kasan_set_track mm/kasan/common.c:47 [inline]
>  set_alloc_info mm/kasan/common.c:403 [inline]
>  ____kasan_kmalloc.constprop.0+0x82/0xa0 mm/kasan/common.c:434
>  kasan_slab_alloc include/linux/kasan.h:211 [inline]
>  slab_post_alloc_hook mm/slab.h:512 [inline]
>  slab_alloc_node mm/slub.c:2903 [inline]
>  slab_alloc mm/slub.c:2911 [inline]
>  kmem_cache_alloc+0x12a/0x470 mm/slub.c:2916
>  kmem_cache_zalloc include/linux/slab.h:672 [inline]
>  create_cache mm/slab_common.c:251 [inline]
>  kmem_cache_create_usercopy+0x1a6/0x300 mm/slab_common.c:357
>  p9_client_create+0xc4d/0x10c0 net/9p/client.c:1063
>  v9fs_session_init+0x1dd/0x1770 fs/9p/v9fs.c:406
>  v9fs_mount+0x79/0x9b0 fs/9p/vfs_super.c:126
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1549
>  do_new_mount fs/namespace.c:2896 [inline]
>  path_mount+0x12ae/0x1e70 fs/namespace.c:3227
>  do_mount fs/namespace.c:3240 [inline]
>  __do_sys_mount fs/namespace.c:3448 [inline]
>  __se_sys_mount fs/namespace.c:3425 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Freed by task 15981:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:39
>  kasan_set_track+0x1c/0x30 mm/kasan/common.c:47
>  kasan_set_free_info+0x20/0x30 mm/kasan/generic.c:359
>  ____kasan_slab_free+0xe1/0x110 mm/kasan/common.c:373
>  kasan_slab_free include/linux/kasan.h:194 [inline]
>  slab_free_hook mm/slub.c:1548 [inline]
>  slab_free_freelist_hook+0x5d/0x150 mm/slub.c:1586
>  slab_free mm/slub.c:3157 [inline]
>  kmem_cache_free+0x82/0x350 mm/slub.c:3173
>  kobject_cleanup lib/kobject.c:705 [inline]
>  kobject_release lib/kobject.c:736 [inline]
>  kref_put include/linux/kref.h:65 [inline]
>  kobject_put+0x1c8/0x540 lib/kobject.c:753
>  sysfs_slab_add+0x164/0x1d0 mm/slub.c:5656
>  __kmem_cache_create+0x471/0x5a0 mm/slub.c:4476
>  create_cache mm/slab_common.c:262 [inline]
>  kmem_cache_create_usercopy+0x1ed/0x300 mm/slab_common.c:357
>  p9_client_create+0xc4d/0x10c0 net/9p/client.c:1063
>  v9fs_session_init+0x1dd/0x1770 fs/9p/v9fs.c:406
>  v9fs_mount+0x79/0x9b0 fs/9p/vfs_super.c:126
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1549
>  do_new_mount fs/namespace.c:2896 [inline]
>  path_mount+0x12ae/0x1e70 fs/namespace.c:3227
>  do_mount fs/namespace.c:3240 [inline]
>  __do_sys_mount fs/namespace.c:3448 [inline]
>  __se_sys_mount fs/namespace.c:3425 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> The buggy address belongs to the object at ffff888013a45b40
>  which belongs to the cache kmem_cache of size 224
> The buggy address is located 0 bytes inside of
>  224-byte region [ffff888013a45b40, ffff888013a45c20)
> The buggy address belongs to the page:
> page:00000000cfbbc7ff refcount:1 mapcount:0 mapping:0000000000000000 index:0xffff888013a45c80 pfn:0x13a45
> flags: 0xfff00000000200(slab)
> raw: 00fff00000000200 dead000000000100 dead000000000122 ffff888010041000
> raw: ffff888013a45c80 00000000800c0004 00000001ffffffff 0000000000000000
> page dumped because: kasan: bad access detected
>
> Memory state around the buggy address:
>  ffff888013a45a00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff888013a45a80: fb fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> >ffff888013a45b00: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb
>                                            ^
>  ffff888013a45b80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>  ffff888013a45c00: fb fb fb fb fc fc fc fc fc fc fc fc fc fc fc fc
> ==================================================================
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/0000000000006ef45b05b436ddb4%40google.com.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

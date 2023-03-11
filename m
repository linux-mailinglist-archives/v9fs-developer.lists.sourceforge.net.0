Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7936C6B597A
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 09:25:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pauXq-0006yv-Rd;
	Sat, 11 Mar 2023 08:25:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39DoMZAkbAMEz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pauXl-0006yo-Dc for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 08:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GX2/0Y3w3KqSGtxgrXjH+vta8IBL8YOoiEI8MS7GY2s=; b=YyOUxZFDmSOOeNYtbrYMzTerqu
 ZsOKVxRGpncCTOf9FXHk+Ka5vc3YX3sqtD5R5ZyNpZDqWjp0qp3qyDTAsgIIujhJOXmcw2ikqJ9Ex
 Wepcr/NqByhcI6/yUcO6hlXX6z3A3RqeIBjspnur51GGwv6MvaD6U36J79EY9xwz2vAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GX2/0Y3w3KqSGtxgrXjH+vta8IBL8YOoiEI8MS7GY2s=; b=b
 ZV93d45RQmmTGNYv8PC1XD3oXgNEpb+O0ORabGlpwes1V1PrcsBDRb0aaeW7bnoQ7pw00NQ0QZZPW
 hlX4gJslhLbzxk6xZIKYlqkFlk3Azv5tJh/J6M4dhaKQhzxqAbVaHg+rNdDaYko0phSjhf4rcQHF7
 YHwOrhbb/Ih02B5w=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pauXi-004UMz-Di for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 08:25:33 +0000
Received: by mail-io1-f69.google.com with SMTP id
 z6-20020a056602080600b007407df88db0so3751142iow.23
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 00:25:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678523124;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GX2/0Y3w3KqSGtxgrXjH+vta8IBL8YOoiEI8MS7GY2s=;
 b=OWuKpoWd9bfmB+ddL4BZhiSgKgUgnzAb6kknRlIGzPbvoqItu6ceIuhS331sUoX+Zb
 XIZepay+P0FWNfPeCu6ZlLxEtiabIIdMIvZ75xquvyLWV1cdxRPuN4gjhuruzhMYH2y6
 DthiPwKxPxNtU0ZAPTE5Vvj8a54eAjuldPfgcoRrha20w4VVOXGbOq/mL922TZjRXMjW
 hnnHsPrVPbCUf7zhmU33ybQOjFpRaG7YnBMcQjsuTYnjlzp38qnhqZuj7utNy/yOLzRy
 1tGJvub5Mu1jBuzGmV0Sj/nuDKdBgfgReBHAuYVeaCrCPxEdMCpHGvu4hy68RVOAL2lA
 4qXg==
X-Gm-Message-State: AO0yUKXRWJvOo2k7Xies4x2qOP0xq6t9Ni8aakQYmjD1rM9xIkwe73ug
 NHdrgqQ6xR8CCzOGVpkwRiWiNrjlmsgwT/doK4Qh7494yc3E
X-Google-Smtp-Source: AK7set/gvA7+wLWwPerArWfX7BHZYxEP7fUn+eY7DKrQuwSlOQ9cIBDqObjcpYEsDxAPmJoyaVfGSc1LdKNy6+6iyg9R6nE4/KaR
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1043:b0:316:ff39:6bbf with SMTP id
 p3-20020a056e02104300b00316ff396bbfmr13145480ilj.6.1678523124585; Sat, 11 Mar
 2023 00:25:24 -0800 (PST)
Date: Sat, 11 Mar 2023 00:25:24 -0800
In-Reply-To: <0059d07f-97ce-724a-39ec-2a640ba82ef5@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000096a06405f69b9ec6@google.com>
From: syzbot <syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, himadrispandya@gmail.com, 
 ivan.orlov0322@gmail.com, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, skhan@linuxfoundation.org, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch but the reproducer
 is still triggering an issue: KASAN: wild-memory-access Write in v9fs_get_acl
 loop0: detected capacity change from 0 to 256 MINIX-fs: mounting unchecked
 file system, running fsck is recommended
 ==================================================================
 BUG: KASAN: wild- [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1pauXi-004UMz-Di
Subject: Re: [V9fs-developer] [syzbot] [9p?] KASAN: wild-memory-access Write
 in v9fs_get_acl
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

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
KASAN: wild-memory-access Write in v9fs_get_acl

loop0: detected capacity change from 0 to 256
MINIX-fs: mounting unchecked file system, running fsck is recommended
==================================================================
BUG: KASAN: wild-memory-access in instrument_atomic_read_write include/linux/instrumented.h:102 [inline]
BUG: KASAN: wild-memory-access in atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:176 [inline]
BUG: KASAN: wild-memory-access in __refcount_sub_and_test include/linux/refcount.h:272 [inline]
BUG: KASAN: wild-memory-access in __refcount_dec_and_test include/linux/refcount.h:315 [inline]
BUG: KASAN: wild-memory-access in refcount_dec_and_test include/linux/refcount.h:333 [inline]
BUG: KASAN: wild-memory-access in posix_acl_release include/linux/posix_acl.h:57 [inline]
BUG: KASAN: wild-memory-access in v9fs_get_acl+0x1a4/0x390 fs/9p/acl.c:102
Write of size 4 at addr 9fffeb37f97f1c00 by task syz-executor.0/6490

CPU: 0 PID: 6490 Comm: syz-executor.0 Not tainted 6.3.0-rc1-syzkaller-00230-gef5f68cc1f82 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call trace:
 dump_backtrace+0x1c8/0x1f4 arch/arm64/kernel/stacktrace.c:158
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:165
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd0/0x124 lib/dump_stack.c:106
 print_report+0xe4/0x514 mm/kasan/report.c:433
 kasan_report+0xd4/0x130 mm/kasan/report.c:536
 kasan_check_range+0x264/0x2a4 mm/kasan/generic.c:187
 __kasan_check_write+0x2c/0x3c mm/kasan/shadow.c:37
 instrument_atomic_read_write include/linux/instrumented.h:102 [inline]
 atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:176 [inline]
 __refcount_sub_and_test include/linux/refcount.h:272 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 posix_acl_release include/linux/posix_acl.h:57 [inline]
 v9fs_get_acl+0x1a4/0x390 fs/9p/acl.c:102
 v9fs_mount+0x77c/0xa5c fs/9p/vfs_super.c:183
 legacy_get_tree+0xd4/0x16c fs/fs_context.c:610
 vfs_get_tree+0x90/0x274 fs/super.c:1501
 do_new_mount+0x25c/0x8c8 fs/namespace.c:3042
 path_mount+0x590/0xe20 fs/namespace.c:3372
 do_mount fs/namespace.c:3385 [inline]
 __do_sys_mount fs/namespace.c:3594 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __arm64_sys_mount+0x45c/0x594 fs/namespace.c:3571
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x258 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:193
 el0_svc+0x58/0x168 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
==================================================================
Unable to handle kernel paging request at virtual address 9fffeb37f97f1c00
Mem abort info:
  ESR = 0x0000000096000004
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x04: level 0 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000004
  CM = 0, WnR = 0
[9fffeb37f97f1c00] address between user and kernel address ranges
Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 6490 Comm: syz-executor.0 Tainted: G    B              6.3.0-rc1-syzkaller-00230-gef5f68cc1f82 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __lse_atomic_fetch_add_release arch/arm64/include/asm/atomic_lse.h:62 [inline]
pc : __lse_atomic_fetch_sub_release arch/arm64/include/asm/atomic_lse.h:76 [inline]
pc : arch_atomic_fetch_sub_release arch/arm64/include/asm/atomic.h:51 [inline]
pc : atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:177 [inline]
pc : __refcount_sub_and_test include/linux/refcount.h:272 [inline]
pc : __refcount_dec_and_test include/linux/refcount.h:315 [inline]
pc : refcount_dec_and_test include/linux/refcount.h:333 [inline]
pc : posix_acl_release include/linux/posix_acl.h:57 [inline]
pc : v9fs_get_acl+0x1b0/0x390 fs/9p/acl.c:102
lr : arch_atomic_fetch_sub_release arch/arm64/include/asm/atomic.h:51 [inline]
lr : atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:177 [inline]
lr : __refcount_sub_and_test include/linux/refcount.h:272 [inline]
lr : __refcount_dec_and_test include/linux/refcount.h:315 [inline]
lr : refcount_dec_and_test include/linux/refcount.h:333 [inline]
lr : posix_acl_release include/linux/posix_acl.h:57 [inline]
lr : v9fs_get_acl+0x1ac/0x390 fs/9p/acl.c:102
sp : ffff80001e837970
x29: ffff80001e837970 x28: dfff800000000000 x27: 1ffff00003d06f3c
x26: 1ffff00003d06f38 x25: ffff0000dd9041e0 x24: ffff0000dd904178
x23: ffff0000e5068000 x22: dfff800000000000 x21: 9fffeb37f97f1c00
x20: 00000000fffffffb x19: fffffffffffffffb x18: 1fffe000368951b6
x17: ffff800015cdd000 x16: ffff80001245e54c x15: 0000000000000000
x14: 0000000040000000 x13: 0000000000000002 x12: 0000000000000001
x11: ff80800009d819b8 x10: 0000000000000000 x9 : ffff800009d819b8
x8 : 00000000ffffffff x7 : 1fffe000368951b7 x6 : ffff80000828dc14
x5 : 0000000000000000 x4 : 0000000000000001 x3 : ffff8000081bc3c4
x2 : 0000000000000001 x1 : 0000000000000000 x0 : 0000000000000000
Call trace:
 arch_atomic_fetch_sub_release arch/arm64/include/asm/atomic.h:51 [inline]
 atomic_fetch_sub_release include/linux/atomic/atomic-instrumented.h:177 [inline]
 __refcount_sub_and_test include/linux/refcount.h:272 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 posix_acl_release include/linux/posix_acl.h:57 [inline]
 v9fs_get_acl+0x1b0/0x390 fs/9p/acl.c:102
 v9fs_mount+0x77c/0xa5c fs/9p/vfs_super.c:183
 legacy_get_tree+0xd4/0x16c fs/fs_context.c:610
 vfs_get_tree+0x90/0x274 fs/super.c:1501
 do_new_mount+0x25c/0x8c8 fs/namespace.c:3042
 path_mount+0x590/0xe20 fs/namespace.c:3372
 do_mount fs/namespace.c:3385 [inline]
 __do_sys_mount fs/namespace.c:3594 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __arm64_sys_mount+0x45c/0x594 fs/namespace.c:3571
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x258 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:193
 el0_svc+0x58/0x168 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
Code: 97b021c6 d503201f 979e3dbf 12800008 (b86802b6) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	97b021c6 	bl	0xfffffffffec08718
   4:	d503201f 	nop
   8:	979e3dbf 	bl	0xfffffffffe78f704
   c:	12800008 	mov	w8, #0xffffffff            	// #-1
* 10:	b86802b6 	ldaddl	w8, w22, [x21] <-- trapping instruction


Tested on:

commit:         ef5f68cc Merge tag 'scsi-fixes' of git://git.kernel.or..
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=115a390ac80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fd3c6e109ff25818
dashboard link: https://syzkaller.appspot.com/bug?extid=cb1d16facb3cc90de5fb
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Note: no patches were applied.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77991664820
	for <lists+v9fs-developer@lfdr.de>; Tue, 10 Jan 2023 19:06:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pFJ0b-0001w4-DF;
	Tue, 10 Jan 2023 18:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3AKm9YwkbAG0djkVLWWPcLaaTO.RZZRWPfdPcNZYePYe.NZX@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pFJ0a-0001vu-4e for v9fs-developer@lists.sourceforge.net;
 Tue, 10 Jan 2023 18:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DsPpQXl2ln9dsF59TAVn1ScDwWogVaNrdBMt6IAktRE=; b=KEOUoGHYVXME4H8mm9jXnVEJ4Q
 lWI7byeS3NoQZd19uPhqFGdssref5iGhSX51R/r88bYe1xciundOX4ql3tasToQd85U+mgQ9VRmzR
 mbrCkNdKDsQvVOR0LG9Wp+FOvdU8yWdnbXtPIvyZuoLkKBu6kX6D8ocPbHrFqaSU/8dA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DsPpQXl2ln9dsF59TAVn1ScDwWogVaNrdBMt6IAktRE=; b=C
 ksAbinLrzwKs1TGu5UqHXJG5OkwsVg/QUst7MNsGittphss4J78b2qAnX7vDRwwH7TF0sQuzt3UyN
 VrWurpiq0PY2N1Nryu9CZDR4Mc/vRnRrutKWp8Kql30h4bYUKsjlP5N57bSgRJqaQzJJCvTTP5Vve
 Kari1EsEWzBk7EoI=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pFJ0X-00D7dt-SM for v9fs-developer@lists.sourceforge.net;
 Tue, 10 Jan 2023 18:05:58 +0000
Received: by mail-io1-f72.google.com with SMTP id
 o16-20020a056602225000b006e032e361ccso7397123ioo.13
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 10 Jan 2023 10:05:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DsPpQXl2ln9dsF59TAVn1ScDwWogVaNrdBMt6IAktRE=;
 b=T1vfPhJnzMPUhM1DS8WGei0uigtTHzmgEikjavD/cuGraRBGxiq/+5j05Sy1b5xSdY
 jDuH2oQeEiKike1DmsjE7W4suF6AoAbGJTzx5Wa/kiYFerRTikfvUj4v4Hy43I68+lCg
 f8A/qO6pOFDSfaRi85J/aWQi5CniMKpJlm3KLdkjnIhb4gOV0ocyEoHAQg1ev74MP8H3
 rd3NQYWGWCCqS/Pq1mQ8gG0wzp+4yD1g/p4fEmCF2q3qFJcDXKVsSLkL0Ng/U6vMMYHm
 F/aacsuGNIzSDx/F1msCBv6eoBGqxr2skFTzSCXwoQjuFOYY8PTVLmDpW/mpC9sDQ+Mn
 WdPw==
X-Gm-Message-State: AFqh2kqVb10SEz+ZKP/fmw+RVHSbYAYMXRqszn7v4jyZtdjClwpNHDzs
 9QmhYxt2rsjWL8lu5Nx94j5K+C49S+shdBR/vaa8BDoJ0ROg
X-Google-Smtp-Source: AMrXdXtuO7PHXC/9t6BJRm3T+rtebSqZWTrTlWNeQktyg6HSJXI0bO4GfuDgaAB/0Zl8pI1IO7CMVbb2yx3YzjypDJIRv23jTEPm
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:8aa:b0:30c:5f8d:886f with SMTP id
 a10-20020a056e0208aa00b0030c5f8d886fmr3413282ilt.7.1673373952169; Tue, 10 Jan
 2023 10:05:52 -0800 (PST)
Date: Tue, 10 Jan 2023 10:05:52 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fee03205f1ecbb8a@google.com>
From: syzbot <syzbot+00234de93b9131d4d7d7@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 247f34f7b803
 Linux 6.1-rc2 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=1299c9cc480000
 ke [...] Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1pFJ0X-00D7dt-SM
Subject: [V9fs-developer] [syzbot] WARNING: refcount bug in v9fs_vfs_lookup
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

HEAD commit:    247f34f7b803 Linux 6.1-rc2
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=1299c9cc480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fa9bed8d6a8992a0
dashboard link: https://syzkaller.appspot.com/bug?extid=00234de93b9131d4d7d7
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115972c4480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b43f56480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/05f9a7fca332/disk-247f34f7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ec50c3ad7d48/vmlinux-247f34f7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/1446f94b11ed/Image-247f34f7.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+00234de93b9131d4d7d7@syzkaller.appspotmail.com

------------[ cut here ]------------
refcount_t: underflow; use-after-free.
WARNING: CPU: 0 PID: 3078 at lib/refcount.c:28 refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
Modules linked in:
CPU: 0 PID: 3078 Comm: syz-executor896 Not tainted 6.1.0-rc2-syzkaller-154433-g247f34f7b803 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
lr : refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
sp : ffff80000ff2bc10
x29: ffff80000ff2bc10 x28: ffff0000c626b480 x27: 0000000000000000
x26: 0000000000000000 x25: 0000000000000000 x24: ffff0000cb86ec8c
x23: ffff0000c690a040 x22: ffff0000ccd88c00 x21: 00000000ffffffff
x20: 0000000000000003 x19: ffff80000d95f000 x18: 000000000000005a
x17: ffff80000c0cd83c x16: 0000000000000001 x15: 0000000000000000
x14: 0000000000000000 x13: 205d383730335420 x12: 5b5d373634343736
x11: ff808000081c650c x10: 0000000000000000 x9 : e7557c2201ef4a00
x8 : e7557c2201ef4a00 x7 : 205b5d3736343437 x6 : ffff80000c0903b4
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefbecc8 x1 : 0000000100000000 x0 : 0000000000000026
Call trace:
 refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
 __refcount_sub_and_test include/linux/refcount.h:283 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 p9_fid_put include/net/9p/client.h:275 [inline]
 v9fs_vfs_lookup+0x2e8/0x37c fs/9p/vfs_inode.c:778
 __lookup_hash+0xa0/0x164 fs/namei.c:1601
 filename_create+0x108/0x218 fs/namei.c:3807
 do_mknodat+0x120/0x3e8 fs/namei.c:3951
 __do_sys_mknodat fs/namei.c:3992 [inline]
 __se_sys_mknodat fs/namei.c:3989 [inline]
 __arm64_sys_mknodat+0x4c/0x64 fs/namei.c:3989
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
irq event stamp: 0
hardirqs last  enabled at (0): [<0000000000000000>] 0x0
hardirqs last disabled at (0): [<ffff8000080f30f0>] copy_process+0x928/0x16ec kernel/fork.c:2197
softirqs last  enabled at (0): [<ffff8000080f3100>] copy_process+0x938/0x16ec kernel/fork.c:2198
softirqs last disabled at (0): [<0000000000000000>] 0x0
---[ end trace 0000000000000000 ]---
------------[ cut here ]------------
refcount_t: saturated; leaking memory.
WARNING: CPU: 0 PID: 3078 at lib/refcount.c:22 refcount_warn_saturate+0x160/0x1c8 lib/refcount.c:22
Modules linked in:
CPU: 0 PID: 3078 Comm: syz-executor896 Tainted: G        W          6.1.0-rc2-syzkaller-154433-g247f34f7b803 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : refcount_warn_saturate+0x160/0x1c8 lib/refcount.c:22
lr : refcount_warn_saturate+0x160/0x1c8 lib/refcount.c:22
sp : ffff80000ff2bb60
x29: ffff80000ff2bb60 x28: ffff0000ccd88c00 x27: ffff0000c68ffe58
x26: 00000000c0000001 x25: ffff0000cb86ec8c x24: 0000000000000000
x23: 0000000000000000 x22: ffff0000cb86ec80 x21: 0000000000000000
x20: 0000000000000001 x19: ffff80000d95f000 x18: 000000000000005a
x17: ffff80000c0cd83c x16: 0000000000000002 x15: 0000000000000000
x14: 0000000000000000 x13: 205d383730335420 x12: 5b5d383739373337
x11: ff808000081c650c x10: 0000000000000000 x9 : e7557c2201ef4a00
x8 : e7557c2201ef4a00 x7 : 205b5d3837393733 x6 : ffff80000c0903b4
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : 0000000100000001 x0 : 0000000000000026
Call trace:
 refcount_warn_saturate+0x160/0x1c8 lib/refcount.c:22
 __refcount_inc include/linux/refcount.h:250 [inline]
 refcount_inc include/linux/refcount.h:267 [inline]
 p9_fid_get include/net/9p/client.h:262 [inline]
 v9fs_fid_find fs/9p/fid.c:115 [inline]
 v9fs_fid_lookup_with_uid+0x8a0/0xa80 fs/9p/fid.c:167
 v9fs_fid_lookup+0xc8/0xdc fs/9p/fid.c:300
 v9fs_parent_fid fs/9p/fid.h:14 [inline]
 v9fs_vfs_mknod_dotl+0x64/0x414 fs/9p/vfs_inode_dotl.c:847
 v9fs_vfs_create_dotl+0x40/0x54 fs/9p/vfs_inode_dotl.c:226
 vfs_create+0x1c8/0x270 fs/namei.c:3115
 do_mknodat+0x274/0x3e8 fs/namei.c:3964
 __do_sys_mknodat fs/namei.c:3992 [inline]
 __se_sys_mknodat fs/namei.c:3989 [inline]
 __arm64_sys_mknodat+0x4c/0x64 fs/namei.c:3989
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
irq event stamp: 0
hardirqs last  enabled at (0): [<0000000000000000>] 0x0
hardirqs last disabled at (0): [<ffff8000080f30f0>] copy_process+0x928/0x16ec kernel/fork.c:2197
softirqs last  enabled at (0): [<ffff8000080f3100>] copy_process+0x938/0x16ec kernel/fork.c:2198
softirqs last disabled at (0): [<0000000000000000>] 0x0
---[ end trace 0000000000000000 ]---
Unable to handle kernel NULL pointer dereference at virtual address 0000000000000048
Mem abort info:
  ESR = 0x0000000096000006
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x06: level 2 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000006
  CM = 0, WnR = 0
user pgtable: 4k pages, 48-bit VAs, pgdp=000000010743b000
[0000000000000048] pgd=080000010b9e9003, p4d=080000010b9e9003, pud=080000010b856003, pmd=0000000000000000
Internal error: Oops: 0000000096000006 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3078 Comm: syz-executor896 Tainted: G        W          6.1.0-rc2-syzkaller-154433-g247f34f7b803 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : p9_client_rpc+0x4c/0x548 net/9p/client.c:675
lr : p9_client_rpc+0x4c/0x548 net/9p/client.c:662
sp : ffff80000ff2bb00
x29: ffff80000ff2bb80 x28: 0000000000000000 x27: ffff0000c68ffea0
x26: ffff0000c626b480 x25: ffff0000cb86ec80 x24: ffff0000c68fff10
x23: 0000000000008000 x22: 0000000000000000 x21: ffff80000cf52863
x20: 0000000000000012 x19: 0000000000000000 x18: 000000000000005a
x17: ffff80000c0cd83c x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: 0000000000008000 x12: ffff80000d4f0680
x11: ff8080000be7a890 x10: 0000000000000000 x9 : ffff80000be7a890
x8 : ffff0000c626b480 x7 : 0000000000000000 x6 : 0000000000000000
x5 : 0000000000008000 x4 : ffff0000c68fff10 x3 : 0000000000000000
x2 : ffff80000cf52863 x1 : 0000000000000012 x0 : 0000000000000000
Call trace:
 p9_client_rpc+0x4c/0x548 net/9p/client.c:662
 p9_client_mknod_dotl+0x70/0x100 net/9p/client.c:2115
 v9fs_vfs_mknod_dotl+0x1b0/0x414 fs/9p/vfs_inode_dotl.c:865
 v9fs_vfs_create_dotl+0x40/0x54 fs/9p/vfs_inode_dotl.c:226
 vfs_create+0x1c8/0x270 fs/namei.c:3115
 do_mknodat+0x274/0x3e8 fs/namei.c:3964
 __do_sys_mknodat fs/namei.c:3992 [inline]
 __se_sys_mknodat fs/namei.c:3989 [inline]
 __arm64_sys_mknodat+0x4c/0x64 fs/namei.c:3989
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: a9019be5 f90017e7 f81f83a8 9710b221 (f9402668) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	a9019be5 	stp	x5, x6, [sp, #24]
   4:	f90017e7 	str	x7, [sp, #40]
   8:	f81f83a8 	stur	x8, [x29, #-8]
   c:	9710b221 	bl	0xfffffffffc42c890
* 10:	f9402668 	ldr	x8, [x19, #72] <-- trapping instruction


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

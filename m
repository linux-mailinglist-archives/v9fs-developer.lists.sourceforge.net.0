Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E3B62C935
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Nov 2022 20:49:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovOPs-0006pX-Pr;
	Wed, 16 Nov 2022 19:49:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <30j51YwkbAEc178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ovOPr-0006pQ-Cv for v9fs-developer@lists.sourceforge.net;
 Wed, 16 Nov 2022 19:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ylx9QLebQ8HlwldCA/mF1PGxYhL2fUmTzgnhvgEJwW8=; b=MfU2x28iAb3UgsnjBwyhResCV1
 g521XSmvGTkKpqtb+nUCvzeebnnrjCKmkS91qdRHXIjUczk443qqvOpXUsdByb4SMfPSYF6Umg/Gt
 zfwDLH5sA9H9Hy2pkRtzcU9tUEN/lzW197Q+4bUwvtIr/vUayxWNR+htNT08D/li6/N8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ylx9QLebQ8HlwldCA/mF1PGxYhL2fUmTzgnhvgEJwW8=; b=S
 kw3GyxNttE0Q62GEl4yshi5sLtqRQaIwVCop0M3dYpOptfqF0OvNRrprot+mV8CmEK5L184n2WEUu
 5Uqaol9P/KdzbZOz9/0UA/eqqpqvzpZhWEr946eYLgcvPF0nClVLzNhJFzvHOhvUThSWDOlX2mw9a
 1mUffzI4Tkl00mBw=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ovOPn-00Aj02-SX for v9fs-developer@lists.sourceforge.net;
 Wed, 16 Nov 2022 19:49:47 +0000
Received: by mail-io1-f69.google.com with SMTP id
 f25-20020a5d8799000000b006a44e33ddb6so9262403ion.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 16 Nov 2022 11:49:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ylx9QLebQ8HlwldCA/mF1PGxYhL2fUmTzgnhvgEJwW8=;
 b=Ka1HISjD/9bntQ1ntBlL9Os8cpKmGCCUJJeSM+qPBcwQkDy3vzKsWTEBDJWnBjDKQs
 rbsDC8qje9kd5mdmf1d99sDxCdDNvOoNy1ybcv78aRatHkXycVM192iRobg+MrNeKxPm
 ggu5SsVTG3ieLbgrP17fLYg19A4yOw/KMBiuI33LxVaNhSp2BpMZnW6uUAQ1TskHoBld
 PfKCOeJC91FbeDuVmiNugG1VKMouFkvqP1lj6CKDUjiczWilnU8G+XenrweKpOvHKrUW
 8+yREZzECsGL02hT2/yGIK+CJ7KdlIie8/wrJA16el/2aHv2hrad5XmCssjgGI2XdwWL
 kItw==
X-Gm-Message-State: ANoB5pnEUjQRiFZ6If+1JRukzAJOK20YZsbgPl1oatpHkhqmqo5HLTBe
 MzWdluyLX/TuUcLPUpRuIKBCyoI9DSXUo/L7+awN0TW1p9t0
X-Google-Smtp-Source: AA0mqf69YPhcGGUxa9GkyzmgDq5B5IKNcF87mVDxLG211elxXgiSy1QpD2lEwGMPYSL4SZ8zHatI+575ZdDayi8LjVYE05btFqNP
MIME-Version: 1.0
X-Received: by 2002:a02:cba5:0:b0:375:175c:b00e with SMTP id
 v5-20020a02cba5000000b00375175cb00emr10778411jap.215.1668628178282; Wed, 16
 Nov 2022 11:49:38 -0800 (PST)
Date: Wed, 16 Nov 2022 11:49:38 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d433c705ed9bc569@google.com>
From: syzbot <syzbot+69c3bf057b7a81f47758@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 9500fc6e9e60
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1ovOPn-00Aj02-SX
Subject: [V9fs-developer] [syzbot] BUG: unable to handle kernel paging
 request in p9_client_prepare_req
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

HEAD commit:    9500fc6e9e60 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=13bdf3f1880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b25c9f218686dd5e
dashboard link: https://syzkaller.appspot.com/bug?extid=69c3bf057b7a81f47758
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17f6d5cd880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=154f2a45880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1363e60652f7/disk-9500fc6e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fcc4da811bb6/vmlinux-9500fc6e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0b554298f1fa/Image-9500fc6e.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+69c3bf057b7a81f47758@syzkaller.appspotmail.com

Unable to handle kernel paging request at virtual address bf908d5e7640333a
Mem abort info:
  ESR = 0x0000000096000004
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x04: level 0 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000004
  CM = 0, WnR = 0
[bf908d5e7640333a] address between user and kernel address ranges
Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3084 Comm: syz-executor291 Not tainted 6.1.0-rc5-syzkaller-32269-g9500fc6e9e60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 40400005 (nZcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __kmem_cache_alloc_node+0x17c/0x350 mm/slub.c:3437
lr : slab_pre_alloc_hook mm/slab.h:712 [inline]
lr : slab_alloc_node mm/slub.c:3318 [inline]
lr : __kmem_cache_alloc_node+0x80/0x350 mm/slub.c:3437
sp : ffff80000ff636c0
x29: ffff80000ff636d0 x28: ffff0000c9848000 x27: 0000000000000000
x26: 0000000000001000 x25: 00000000ffffffff x24: ffff80000bea07bc
x23: 0000000000001000 x22: bf908d5e76402b3a x21: 0000000000000000
x20: 0000000000000c40 x19: ffff0000c0001700 x18: 000000000000ba7e
x17: 000000000000b67e x16: ffff80000dc18158 x15: ffff0000c9848000
x14: 0000000000000010 x13: 0000000000000000 x12: ffff0000c9848000
x11: 0000000000000001 x10: 0000000000000000 x9 : 0000000000000800
x8 : 00000000000613f9 x7 : ffff8000084c0640 x6 : 0000000000000000
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000061401
x2 : 0000000000000000 x1 : 0000000000000c40 x0 : fffffc00032ed000
Call trace:
 next_tid mm/slub.c:2349 [inline]
 slab_alloc_node mm/slub.c:3382 [inline]
 __kmem_cache_alloc_node+0x17c/0x350 mm/slub.c:3437
 __do_kmalloc_node mm/slab_common.c:954 [inline]
 __kmalloc+0xb4/0x140 mm/slab_common.c:968
 kmalloc include/linux/slab.h:558 [inline]
 p9_fcall_init net/9p/client.c:228 [inline]
 p9_tag_alloc net/9p/client.c:293 [inline]
 p9_client_prepare_req+0x2b0/0x53c net/9p/client.c:631
 p9_client_rpc+0xbc/0x548 net/9p/client.c:678
 p9_client_flush+0x118/0x1b0 net/9p/client.c:596
 p9_client_rpc+0x4cc/0x548 net/9p/client.c:724
 p9_client_create+0x4d8/0x758 net/9p/client.c:1015
 v9fs_session_init+0xa4/0x9f0 fs/9p/v9fs.c:408
 v9fs_mount+0x6c/0x568 fs/9p/vfs_super.c:126
 legacy_get_tree+0x30/0x74 fs/fs_context.c:610
 vfs_get_tree+0x40/0x140 fs/super.c:1531
 do_new_mount+0x1dc/0x4e4 fs/namespace.c:3040
 path_mount+0x358/0x890 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __arm64_sys_mount+0x2c4/0x3c4 fs/namespace.c:3568
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:584
Code: 54000ee1 34000eeb b9402a69 91002103 (f8696ada) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	54000ee1 	b.ne	0x1dc  // b.any
   4:	34000eeb 	cbz	w11, 0x1e0
   8:	b9402a69 	ldr	w9, [x19, #40]
   c:	91002103 	add	x3, x8, #0x8
* 10:	f8696ada 	ldr	x26, [x22, x9] <-- trapping instruction


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

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2234877C5
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jan 2022 13:50:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n5ohR-0006RH-Uj; Fri, 07 Jan 2022 12:50:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3CzfYYQkbAO4iopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1n5ohQ-0006R7-Qj
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 12:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+OH30RJykWQK1mq+kRReOZroe/Z4LtMcBR3nlNtusOA=; b=UUWAqtq8yJd6LB9NfXiENzBNlI
 3duS1vUdktlVppczaUr8JCFDenWDHybANj2Cdy7Hme6LYDE9ISnVN3gSCWRGmDQzqvapIN31z0jCr
 +MiguAAPgO5lrJS8wMGlzGbBWPYbc7S7tBbnUgqNdCgz6WLI13ahL5uV9quxnjwO6vro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+OH30RJykWQK1mq+kRReOZroe/Z4LtMcBR3nlNtusOA=; b=G
 ru6XCb887er/LGBJZpWmrmntCmST/aMJbMWp97KzwWHwLqT6HodlB6P6X7Q3MsMQokrKuwvJ9ieKf
 2VAN9k9fkZlY3j8FzXUApMdypt8uJS1a+dOgWubBYvmksDeNcCnibRoSJivSeuuDzIg/US6dT9umS
 HmWZzT92FC39CpTA=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n5ohN-0056li-EH
 for v9fs-developer@lists.sourceforge.net; Fri, 07 Jan 2022 12:50:28 +0000
Received: by mail-io1-f72.google.com with SMTP id
 e2-20020a6bb502000000b00601c16cb405so3821941iof.13
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 Jan 2022 04:50:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=+OH30RJykWQK1mq+kRReOZroe/Z4LtMcBR3nlNtusOA=;
 b=QVrYTbVfgRkS3GcIpxmh62nfldozOQjF/azj8eWbsxjn8JaLJ/I758yqwHzHOOrArG
 x4f6aW6aN5jNUznk06NHhIWG07SPoahZdJjYeSTdGE7PHS9B+xLlUYyJgX3pR3114s7Q
 nXbc1kk7Cb70SFwiGUmE6xpQXprTWZBtm6Sr05U/0b4/88RpN5B+KeGi5875g+bf6Kg9
 +RaRt5hNOdPSv6i4vP4cGVoZ/HixV1oh4sCS5p5uhPO1uouBpAlC4uXpWf4ofNyx62jY
 sOPD2y044Kba0bwTAq0IJAS4IcQdGHv4Awq9PkfgXK2R/2TyMT7o5RSX4CNHpogf6VlV
 PieQ==
X-Gm-Message-State: AOAM530Sb1I37DB5khHEDq7hYrIFootok944+MSpLmloZM4416U4MO2X
 ZnJgR8rh6ixpdCFWNT1dMX8DA1XEnH+DySoh1/FQNOq8CPp8
X-Google-Smtp-Source: ABdhPJyepLMsI1PrEIR3ZlhJKqTTlvGfane7G6i3GD3tWhuWhaqTlYok5xlbyEFPR/38JTQ9DX16l+OGDlni2dMoBbw/BuMZx3Ec
MIME-Version: 1.0
X-Received: by 2002:a92:d34d:: with SMTP id a13mr3850552ilh.266.1641559819934; 
 Fri, 07 Jan 2022 04:50:19 -0800 (PST)
Date: Fri, 07 Jan 2022 04:50:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f1e24805d4fd6d50@google.com>
From: syzbot <syzbot+99f920ef970b8c366bfe@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 81c325bbf94e
 kmsan: hooks: do not check memory in kmsan_in.. git tree:
 https://github.com/google/kmsan.git master console output:
 https://syzkaller.appspot.com/x/log.txt?x=10501807b00000 [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1n5ohN-0056li-EH
Subject: [V9fs-developer] [syzbot] KMSAN: uninit-value in p9pdu_vwritef
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

HEAD commit:    81c325bbf94e kmsan: hooks: do not check memory in kmsan_in..
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=10501807b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2d8b9a11641dc9aa
dashboard link: https://syzkaller.appspot.com/bug?extid=99f920ef970b8c366bfe
compiler:       clang version 14.0.0 (/usr/local/google/src/llvm-git-monorepo 2b554920f11c8b763cd9ed9003f4e19b919b8e1f), GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: i386

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+99f920ef970b8c366bfe@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in check_copy_size include/linux/thread_info.h:216 [inline]
BUG: KMSAN: uninit-value in copy_from_iter include/linux/uio.h:161 [inline]
BUG: KMSAN: uninit-value in copy_from_iter_full include/linux/uio.h:170 [inline]
BUG: KMSAN: uninit-value in pdu_write_u net/9p/protocol.c:68 [inline]
BUG: KMSAN: uninit-value in p9pdu_vwritef+0x458f/0x5100 net/9p/protocol.c:439
 check_copy_size include/linux/thread_info.h:216 [inline]
 copy_from_iter include/linux/uio.h:161 [inline]
 copy_from_iter_full include/linux/uio.h:170 [inline]
 pdu_write_u net/9p/protocol.c:68 [inline]
 p9pdu_vwritef+0x458f/0x5100 net/9p/protocol.c:439
 p9_client_prepare_req+0xe64/0x16d0 net/9p/client.c:703
 p9_client_rpc+0x28b/0x1460 net/9p/client.c:734
 p9_client_write+0x722/0xfa0 net/9p/client.c:1662
 v9fs_fid_xattr_set+0x3a6/0x520 fs/9p/xattr.c:130
 v9fs_xattr_set fs/9p/xattr.c:100 [inline]
 v9fs_xattr_handler_set+0x1b4/0x220 fs/9p/xattr.c:159
 __vfs_setxattr+0x910/0x960 fs/xattr.c:180
 __vfs_setxattr_noperm+0x382/0xe80 fs/xattr.c:214
 __vfs_setxattr_locked+0x629/0x690 fs/xattr.c:275
 vfs_setxattr+0x440/0x7b0 fs/xattr.c:301
 setxattr+0x42e/0x7c0 fs/xattr.c:575
 path_setxattr+0x2f4/0x520 fs/xattr.c:595
 __do_sys_setxattr fs/xattr.c:611 [inline]
 __se_sys_setxattr fs/xattr.c:607 [inline]
 __ia32_sys_setxattr+0x15b/0x1c0 fs/xattr.c:607
 do_syscall_32_irqs_on arch/x86/entry/common.c:114 [inline]
 __do_fast_syscall_32+0x96/0xf0 arch/x86/entry/common.c:180
 do_fast_syscall_32+0x34/0x70 arch/x86/entry/common.c:205
 do_SYSENTER_32+0x1b/0x20 arch/x86/entry/common.c:248
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c

Uninit was created at:
 slab_post_alloc_hook mm/slab.h:524 [inline]
 slab_alloc_node mm/slub.c:3251 [inline]
 slab_alloc mm/slub.c:3259 [inline]
 kmem_cache_alloc_trace+0xaca/0x1140 mm/slub.c:3276
 kmalloc include/linux/slab.h:590 [inline]
 p9_fid_create+0x7d/0x470 net/9p/client.c:892
 p9_client_walk+0x15f/0xe50 net/9p/client.c:1175
 clone_fid fs/9p/fid.h:21 [inline]
 v9fs_fid_xattr_set+0x244/0x520 fs/9p/xattr.c:118
 v9fs_xattr_set fs/9p/xattr.c:100 [inline]
 v9fs_xattr_handler_set+0x1b4/0x220 fs/9p/xattr.c:159
 __vfs_setxattr+0x910/0x960 fs/xattr.c:180
 __vfs_setxattr_noperm+0x382/0xe80 fs/xattr.c:214
 __vfs_setxattr_locked+0x629/0x690 fs/xattr.c:275
 vfs_setxattr+0x440/0x7b0 fs/xattr.c:301
 setxattr+0x42e/0x7c0 fs/xattr.c:575
 path_setxattr+0x2f4/0x520 fs/xattr.c:595
 __do_sys_setxattr fs/xattr.c:611 [inline]
 __se_sys_setxattr fs/xattr.c:607 [inline]
 __ia32_sys_setxattr+0x15b/0x1c0 fs/xattr.c:607
 do_syscall_32_irqs_on arch/x86/entry/common.c:114 [inline]
 __do_fast_syscall_32+0x96/0xf0 arch/x86/entry/common.c:180
 do_fast_syscall_32+0x34/0x70 arch/x86/entry/common.c:205
 do_SYSENTER_32+0x1b/0x20 arch/x86/entry/common.c:248
 entry_SYSENTER_compat_after_hwframe+0x4d/0x5c

CPU: 0 PID: 22907 Comm: syz-executor.4 Tainted: G S                5.16.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
=====================================================


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

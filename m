Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D034632913
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 17:11:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ox9Og-0006e9-1T;
	Mon, 21 Nov 2022 16:11:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PKN7YwkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ox9Of-0006du-2U for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wQ1zfeFmNsAsIxaKH/SjGFqk5lQttN1A1CeY8+UIilU=; b=Z+zo+AMz2stlWrt88UFqJnUnyp
 gtB1ZDvIU9C5mezcvGt5EUGB7+s6+i66367vGNRxjN816dhKuqNFw7vvjp+ZQxTJ1FkEn3YELPf+y
 dtCWRwzX+HMZfGvM5htFtzTE3/RmT5Wx/b0cICt1nxwYNyBg2GrPDru0rnX6sJxkhvgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wQ1zfeFmNsAsIxaKH/SjGFqk5lQttN1A1CeY8+UIilU=; b=m
 V1cMTYXbjH8B5VRkC7JPphnVsiHRAD53Yjx7jJE9GpMZaoEB3NVkkg9GSfpEyk8lV60z+YRAJhSnT
 COZfRqj6tHyKkN4x0Q8XFz4KtcTLB2tOSU0C5DEOueEPNz9eqIBNAkvHmeASTRhE7VlEfOsv7QNUk
 ueIuazOjJk3SrZB4=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ox9Ob-007se3-M6 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:11:49 +0000
Received: by mail-io1-f71.google.com with SMTP id
 f2-20020a5ec602000000b006dc67829888so5662643iok.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 08:11:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wQ1zfeFmNsAsIxaKH/SjGFqk5lQttN1A1CeY8+UIilU=;
 b=MzExwVDKGV8bADxFkhBeE7TRxTOYbGuRqjpJIyczvIX3Tn4PcqrD44YORvcoJANg80
 Wu8fLMMGdLUXx8LTIDWRgLjs0+CYRPoHF5hNDt2WYcHB8lVjkYeIGmPFui6HMKgwhb8h
 XwjQEUgyBTv6igh3LCv+PB62xHZ2xq/f+/2DfTjFX+6piYb2zbmttpenwL2415smFeBw
 QoFyhBQouuogwjG4gE9cgODqy9q300/DataFsrz99RPJ8sgXrK+anRnYTgzVuC4kKAoj
 trqKPGs3ZbuPrDc3sqYuyosyZg++bFQQi9oBzqmQ4/bmxczlBWsy5SKpnwgX3aZ95XK0
 rUCA==
X-Gm-Message-State: ANoB5plY0u9OGnW75uPHFiXsRf3oIGu7JflRgPyyXm9gB83aDgsVzRmm
 St498bpLMh/FM2xXtWyuU2unkY7CcB2v5f+Id/OuIZhm71Ss
X-Google-Smtp-Source: AA0mqf5TKpsu7cjyArCHQI4Bv/jOsQ9WA1NfZ8/8TVAf98OxGihpm9pZJD/r4zuyXKu5LbcMUz7XKuSIdY/0TGtqYL+OgaNOkCfA
MIME-Version: 1.0
X-Received: by 2002:a92:280a:0:b0:302:47fc:5578 with SMTP id
 l10-20020a92280a000000b0030247fc5578mr37957ilf.45.1669047100041; Mon, 21 Nov
 2022 08:11:40 -0800 (PST)
Date: Mon, 21 Nov 2022 08:11:40 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000082f1d605edfd4f60@google.com>
From: syzbot <syzbot+fbd9516e00e67ffaf87d@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1ox9Ob-007se3-M6
Subject: [V9fs-developer] [syzbot] BUG: corrupted list in v9fs_session_close
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
console output: https://syzkaller.appspot.com/x/log.txt?x=10ca37d9880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b25c9f218686dd5e
dashboard link: https://syzkaller.appspot.com/bug?extid=fbd9516e00e67ffaf87d
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1363e60652f7/disk-9500fc6e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fcc4da811bb6/vmlinux-9500fc6e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0b554298f1fa/Image-9500fc6e.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fbd9516e00e67ffaf87d@syzkaller.appspotmail.com

list_del corruption. prev->next should be ffff00011fd79548, but was ffff00014c2e3030. (prev=ffff00010c388948)
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:61!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 3127 Comm: syz-executor.4 Not tainted 6.1.0-rc5-syzkaller-32269-g9500fc6e9e60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __list_del_entry_valid+0xbc/0xd0 lib/list_debug.c:59
lr : __list_del_entry_valid+0xbc/0xd0 lib/list_debug.c:59
sp : ffff800012ddbcb0
x29: ffff800012ddbcb0 x28: ffff0000c3e69a40 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff80000d3ad050
x23: ffff80000d3a9000 x22: 0000000000000000 x21: 0000000000000000
x20: 0000000000000000 x19: ffff00011fd79500 x18: 00000000000000c0
x17: 20747562202c3834 x16: ffff80000dc18158 x15: ffff0000c3e69a40
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c3e69a40
x11: ff808000081c6510 x10: 0000000000000000 x9 : d3c609970caf8000
x8 : d3c609970caf8000 x7 : ffff80000c0b2b74 x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0001fefddcc8 x1 : 0000000100000001 x0 : 000000000000006d
Call trace:
 __list_del_entry_valid+0xbc/0xd0 lib/list_debug.c:59
 __list_del_entry include/linux/list.h:134 [inline]
 list_del include/linux/list.h:148 [inline]
 v9fs_session_close+0x8c/0xd8 fs/9p/v9fs.c:516
 v9fs_kill_super+0x34/0x50 fs/9p/vfs_super.c:226
 deactivate_locked_super+0x70/0xe8 fs/super.c:332
 deactivate_super+0xd0/0xd4 fs/super.c:363
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:638
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:584
Code: f001b780 912ce000 aa0803e3 94aa876f (d4210000) 
---[ end trace 0000000000000000 ]---


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

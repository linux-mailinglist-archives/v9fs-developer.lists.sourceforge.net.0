Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5371063F0DE
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Dec 2022 13:50:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0j0z-000184-ND;
	Thu, 01 Dec 2022 12:50:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35KKIYwkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p0j0k-00016O-Fh for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 12:49:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3FvKosQzNZaEQJLXmVwUWStd7A4HsXbhrnscTYNKHRE=; b=Zfhn7g2EasdMBPIAVcQpStY9p8
 AQ2vz68Y0q86/xGUVGQYJnfKwH+u7thXLPOMc/QiTOfce6zWEpIs9of8IwieaO4ZG3lLOoazVkGEx
 vy6wq0beJO/QIQmVBsMT3HP/IjvyvIzkWZQbOLfJaeFUHUf/VMIVf0i/WpAhmJv5NA68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3FvKosQzNZaEQJLXmVwUWStd7A4HsXbhrnscTYNKHRE=; b=O
 lhu36eu4vk/nOhIQdYOsNwZGpPG2UrnRcVr/+eh6CV8uPnz9NTnBgO1hisRcvT2dqqHYRpFIjz5jh
 HplBOr+WflzZTjDfR5BHH+GuElrheClHKUSPGz064BL/0TX5GngG1hvJx/0Djh4zx8dnUUoiAPCs4
 K4hg3l2P4q940H+w=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0j0b-002qS1-PH for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 12:49:46 +0000
Received: by mail-io1-f72.google.com with SMTP id
 t2-20020a6b6402000000b006dea34ad528so1483078iog.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 01 Dec 2022 04:49:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3FvKosQzNZaEQJLXmVwUWStd7A4HsXbhrnscTYNKHRE=;
 b=tZShQQMlo6raTZlfuB9A4tuVxVyaehjyKG1p01H1vYJ/AyOZtt2nUUvUH5LEAtM3XZ
 kvda2G+M14jCIjzQxVOW8YSfbl17RV9y7Zp3adpJKbI2y+CmfahX2N1ucfSF2F4kNEDR
 sRkc1sOsBLV5/x+TJS/R/30E5GRIxeC5kOziYFHbNNihiMjxdotHgtGXYkfXNwZt2ZUH
 TPa8Jx6vIyLaZBBfkK55FJHQ9K2B16eGgeqJvnKws/Fahz8+O+T4p8hL477dxHJ9oQfJ
 8gn0CmfTjkilb8sipxVKkcgkR8SNHeAgLV9DK1MGHA2JyBjQtgti1w+LVkk5qAcSmkGI
 auog==
X-Gm-Message-State: ANoB5plkR5WKG3Hn5AAkFgtaJ/+AGSfjZV85YPfxuVJdNkme1XW6Gy0g
 gKeyONdUUJdP6B5R2PMZ7H3+FJJpdEMg4HxBVzz4Wh8bnoua
X-Google-Smtp-Source: AA0mqf5lbELZuLQupReNNv10OYISqg2Anx6Pgty4HR1NQ8XAJO36Yyk2xay3m2JJThopuscd/yY5dpBp97FMkSHEWTqJ4VY0LZSV
MIME-Version: 1.0
X-Received: by 2002:a92:c887:0:b0:302:fd5c:e0a3 with SMTP id
 w7-20020a92c887000000b00302fd5ce0a3mr15077227ilo.116.1669898980201; Thu, 01
 Dec 2022 04:49:40 -0800 (PST)
Date: Thu, 01 Dec 2022 04:49:40 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000086a03405eec3a706@google.com>
From: syzbot <syzbot+a83dc51a78f0f4cf20da@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 9e46a7996732
 Add linux-next specific files for 20221125 git tree: linux-next
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=16d02883880000 kernel config:
 https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1p0j0b-002qS1-PH
Subject: [V9fs-developer] [syzbot] WARNING in v9fs_fid_get_acl
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

HEAD commit:    9e46a7996732 Add linux-next specific files for 20221125
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=16d02883880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=11e19c740a0b2926
dashboard link: https://syzkaller.appspot.com/bug?extid=a83dc51a78f0f4cf20da
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=143ec2d3880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a73675880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/758d818cf966/disk-9e46a799.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f7c8696b40a5/vmlinux-9e46a799.xz
kernel image: https://storage.googleapis.com/syzbot-assets/810f9750b87f/bzImage-9e46a799.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+a83dc51a78f0f4cf20da@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 0 PID: 5295 at mm/page_alloc.c:5527 __alloc_pages+0x412/0x5b0 mm/page_alloc.c:5527
Modules linked in:
CPU: 0 PID: 5295 Comm: syz-executor337 Not tainted 6.1.0-rc6-next-20221125-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
RIP: 0010:__alloc_pages+0x412/0x5b0 mm/page_alloc.c:5527
Code: ff ff 00 0f 84 c3 fd ff ff 80 ce 01 e9 bb fd ff ff 83 fe 0a 0f 86 ce fc ff ff 80 3d 7d 63 98 0c 00 75 09 c6 05 74 63 98 0c 01 <0f> 0b 45 31 f6 e9 52 fe ff ff 65 ff 05 75 44 3f 7e 48 c7 c0 e0 59
RSP: 0018:ffffc90003b3fac0 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 1ffff92000767f59 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000014 RDI: 0000000000000000
RBP: 0000000000040d40 R08: 0000000000000007 R09: 0000000000000000
R10: 0000000100000000 R11: 0000000000000000 R12: 0000000000000014
R13: 0000000000000000 R14: 0000000000040d40 R15: ffff888076e48000
FS:  000055555561c3c0(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f57a7ce2a70 CR3: 000000007adce000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __alloc_pages_node include/linux/gfp.h:237 [inline]
 alloc_pages_node include/linux/gfp.h:260 [inline]
 __kmalloc_large_node+0x85/0x160 mm/slab_common.c:1100
 __do_kmalloc_node mm/slab_common.c:943 [inline]
 __kmalloc+0x91/0xd0 mm/slab_common.c:968
 kmalloc include/linux/slab.h:575 [inline]
 kzalloc include/linux/slab.h:711 [inline]
 v9fs_fid_get_acl+0x78/0x120 fs/9p/acl.c:32
 __v9fs_get_acl fs/9p/acl.c:66 [inline]
 v9fs_get_acl+0x120/0x5f0 fs/9p/acl.c:93
 v9fs_mount+0x662/0xca0 fs/9p/vfs_super.c:184
 legacy_get_tree+0x109/0x220 fs/fs_context.c:610
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1531
 do_new_mount fs/namespace.c:3145 [inline]
 path_mount+0x132a/0x1e20 fs/namespace.c:3475
 do_mount fs/namespace.c:3488 [inline]
 __do_sys_mount fs/namespace.c:3696 [inline]
 __se_sys_mount fs/namespace.c:3673 [inline]
 __x64_sys_mount+0x283/0x300 fs/namespace.c:3673
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f425fc05929
Code: 28 c3 e8 5a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe17c2a538 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffe17c2a548 RCX: 00007f425fc05929
RDX: 0000000020000140 RSI: 0000000020000340 RDI: 0000000000000000
RBP: 00007ffe17c2a540 R08: 00000000200006c0 R09: 00007f425fbc3bf0
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>


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

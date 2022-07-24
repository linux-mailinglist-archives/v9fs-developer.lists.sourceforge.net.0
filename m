Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E30F57F41E
	for <lists+v9fs-developer@lfdr.de>; Sun, 24 Jul 2022 10:28:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFWyT-0004aR-F0; Sun, 24 Jul 2022 08:28:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3pgLdYgkbAD0rxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oFWyR-0004aK-W6
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 08:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=siNdMcmVC1qeTk+B4F5oiCxVfKOp5O/Vi1z/Kzj7dHM=; b=KL/0Sv9PjjL/OmxAoH0ZrZt7Cc
 ygpXzwg6FSNGM7U+g3N/3NHDg2aKcGjZdaDALS6mos6jUDyUjd/mUgxKAfm/StLfc0pTCMFLdA3j8
 x9bsLaqxwNu63GkxNLAuBIE9PT1z1sjrdAm8Kj4dTJ+210nJNIOWGS+6bboHsrF5+JCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=siNdMcmVC1qeTk+B4F5oiCxVfKOp5O/Vi1z/Kzj7dHM=; b=Q
 f3kujH9oV500nWamwQfE7PV/pm599FagwFLFQHOuht1RRuBjUuJ8bvHC/IfV1wPCy+CV8EZE6u6tY
 Hf9hgbYTIc20lQgdymestoi3I7kVQP9dl5nbOwV2Mgzie73ljf+OupiRcjqrR2MBahQVwbb/iGzhk
 bN576DGiYUgDzK3k=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFWyR-008jBz-QJ
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 08:28:28 +0000
Received: by mail-il1-f199.google.com with SMTP id
 c14-20020a056e020bce00b002dd1cb7ce4dso3873001ilu.22
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 24 Jul 2022 01:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=siNdMcmVC1qeTk+B4F5oiCxVfKOp5O/Vi1z/Kzj7dHM=;
 b=Kw2Z/vkO1U6nCMDItgqMII08ID9fucUjORDsE+RCGSPz4Xa0/r/NOLTL6yRg00iE2z
 C0bHZbRIZpKDUPNPLlOLBlJr/N60dq14y67MLT+SC+dp6rgVUzyrGffDY8uQG7NA8wls
 1GLn7R5iE2atMYKsspsFVY+J5/flV4Wb3+sQeWLCFN0g0He2d09WiPGmNKZa/FcxmfKY
 cD1FUT1nAZT14lrbK5oqfXFxeN64d5+myovqjwZtb7wLemBOqwbEZ0B6+QoEGpK9YUyL
 rrIpMe461RWQkK2XH95bWWwRhM/i43kAGmNjAcrJaGK1YU6UYNuXjifkYZLqcm9H8igX
 xNhw==
X-Gm-Message-State: AJIora+NQp8F5D5mQWUKzJd5MySlfIWww3o21ZfZd4rzl5eCSl+IBdy0
 dH4lYP/RsqARNmKH1GKiB1Ln1WLmveCRz9CcG7fSFBQ3tIqF
X-Google-Smtp-Source: AGRyM1uGd9OBXtc0p0/1RqGf8T8rg3nLMfi8PXAhc6xK5yfQmQ85b1uF9FpNl81Z6HQczKkJ1DqoA4VoOjTpCjCT1HxtwbABIo6x
MIME-Version: 1.0
X-Received: by 2002:a6b:2a42:0:b0:67c:5ab8:a34e with SMTP id
 q63-20020a6b2a42000000b0067c5ab8a34emr2408381ioq.143.1658651302109; Sun, 24
 Jul 2022 01:28:22 -0700 (PDT)
Date: Sun, 24 Jul 2022 01:28:22 -0700
In-Reply-To: <00000000000011f0c905d9097a62@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ab295405e488d921@google.com>
From: syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, k.kahurani@gmail.com, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: cb71b93c2dc3 Add linux-next specific files for 20220628 git tree:
 linux-next console output:
 https://syzkaller.appspot.com/x/log.txt?x=106a4022080000
 kernel config: https://syzkaller.apps [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oFWyR-008jBz-QJ
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    cb71b93c2dc3 Add linux-next specific files for 20220628
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=106a4022080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=badbc1adb2d582eb
dashboard link: https://syzkaller.appspot.com/bug?extid=5e28cdb7ebd0f2389ca4
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=156f74ee080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com

------------[ cut here ]------------
kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
WARNING: CPU: 0 PID: 3687 at mm/slab_common.c:505 kmem_cache_destroy mm/slab_common.c:505 [inline]
WARNING: CPU: 0 PID: 3687 at mm/slab_common.c:505 kmem_cache_destroy+0x138/0x140 mm/slab_common.c:493
Modules linked in:
CPU: 1 PID: 3687 Comm: syz-executor.0 Not tainted 5.19.0-rc4-next-20220628-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/29/2022
RIP: 0010:kmem_cache_destroy mm/slab_common.c:505 [inline]
RIP: 0010:kmem_cache_destroy+0x138/0x140 mm/slab_common.c:493
Code: 95 18 00 48 89 ef e8 07 96 18 00 eb cc c3 48 8b 55 60 48 c7 c6 80 da d7 89 48 c7 c7 88 e8 61 8b 48 8b 4c 24 18 e8 f2 3a 86 07 <0f> 0b eb ab 0f 1f 40 00 41 56 41 89 d6 41 55 49 89 f5 41 54 49 89
RSP: 0018:ffffc900034efcf0 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 1ffff9200069dfa5 RCX: 0000000000000000
RDX: ffff88807513ba80 RSI: ffffffff81610608 RDI: fffff5200069df90
RBP: ffff88801f0cc8c0 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000080000000 R11: 0000000000000001 R12: 0000000000000001
R13: ffffc900034efd68 R14: dffffc0000000000 R15: 0000000000000000
FS:  0000555556019400(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fe57b1fe718 CR3: 00000000728bc000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 p9_client_destroy+0x213/0x370 net/9p/client.c:1100
 v9fs_session_close+0x45/0x2d0 fs/9p/v9fs.c:504
 v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:226
 deactivate_locked_super+0x94/0x160 fs/super.c:332
 deactivate_super+0xad/0xd0 fs/super.c:363
 cleanup_mnt+0x3a2/0x540 fs/namespace.c:1186
 task_work_run+0xdd/0x1a0 kernel/task_work.c:177
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:169 [inline]
 exit_to_user_mode_prepare+0x23c/0x250 kernel/entry/common.c:201
 __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
 syscall_exit_to_user_mode+0x19/0x50 kernel/entry/common.c:294
 do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
RIP: 0033:0x7fe57ba8a677
Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff19aa4578 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007fe57ba8a677
RDX: 00007fff19aa464c RSI: 000000000000000a RDI: 00007fff19aa4640
RBP: 00007fff19aa4640 R08: 00000000ffffffff R09: 00007fff19aa4410
R10: 000055555601a8b3 R11: 0000000000000246 R12: 00007fe57bae22a6
R13: 00007fff19aa5700 R14: 000055555601a810 R15: 00007fff19aa5740
 </TASK>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C7D63404D
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 16:35:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxVJQ-0007nl-22;
	Tue, 22 Nov 2022 15:35:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3T-x8YwkbAD4x34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oxVJO-0007nf-Jd for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 15:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FybAGmp4BbsPjSoEeGjsL2UWXFm29CqL7tXapCANqIc=; b=AjiqXx5CEXrUTbA/LXBMxVfXHd
 /uU+iv3XyMaSoM58cZ29dVzGnBHe9aWnYxONUneT+x20lUcSNQagaoE4bP69pBs0rmYdEIbDDTxj3
 ufHGACWRs5O3bAZfezqQwJAI/Kcnwcl2aUGuMYMiZ1kXd6P40TX6YgnSKxdA+542SJJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FybAGmp4BbsPjSoEeGjsL2UWXFm29CqL7tXapCANqIc=; b=i
 ayd97t4B4sK0xAvhyoLTRYAX2seaxVn3rAyZRJBT+9zgUyswMzQ0rxu/jqy0Hk8FgVpNSPrTfUHlT
 2obGWA4gD6VmjWxbkmuJGIUHm3YWF1aqVcRSWKXM8q4uPIAaTMDteF3LfHDTMz3BfdrlKPZ6oYJEo
 uipUMofDsL90DmO4=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxVJM-0004j3-NO for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 15:35:50 +0000
Received: by mail-il1-f197.google.com with SMTP id
 h10-20020a056e021b8a00b00302671bb5fdso10942601ili.21
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Nov 2022 07:35:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FybAGmp4BbsPjSoEeGjsL2UWXFm29CqL7tXapCANqIc=;
 b=WYe4PCALx7UT08F3idkUUXUW0Haf3Df4HguGmiTRRUitiTrMu5quJIjwM0iT9AIE2L
 PLoHAaUTxuY1N2ZI7rQ2lziZGhBiqqqbZLH8tWR7pfy8D6IorDp3lix4ZQ5JYrr2uNjv
 rT+DMndDkI/8Q5M6urUqXqSt2rOBzA3wnLpT9a0l3EJkii5Rs2ZgGlUvHW9UmHrPzqiQ
 dqenafUlurQLmDGubZY1hhX5p14iidWmQ2HGowovTYaMwhSKYBvgjKG4+VqttkqqVZAF
 uFDrnlNde+YCA0ESX3gxYXOX6L7hzdVjlWnauSuM/OUlRuvUjAbIw2605ON+sN63Qa76
 FdZw==
X-Gm-Message-State: ANoB5pkLQp/tboqILznbfeE5yIHwxwLz3N9nTEx69imAAKE3ExupTp9R
 4SjcpBIEGGdP8wnwyX0yMRB0BzRsSjR4D8JsXhzhdg7uwTqT
X-Google-Smtp-Source: AA0mqf5g7k/nFJPRGTnZdfeeydh62nJVXo1KeUOY4LE5TL48czuCU3II59FpuD8+o24q7J6r7iFr+EoA3rSuYkEnEjXJw9BuTqpf
MIME-Version: 1.0
X-Received: by 2002:a5e:a604:0:b0:6de:353:ab43 with SMTP id
 q4-20020a5ea604000000b006de0353ab43mr2182230ioi.40.1669131343153; Tue, 22 Nov
 2022 07:35:43 -0800 (PST)
Date: Tue, 22 Nov 2022 07:35:43 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cad14205ee10ec87@google.com>
From: syzbot <syzbot+ea8b28e8dca42fc3bcbe@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: a77d28d13789
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1oxVJM-0004j3-NO
Subject: [V9fs-developer] [syzbot] BUG: unable to handle kernel paging
 request in p9_client_disconnect
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

HEAD commit:    a77d28d13789 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=113a41f9880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c4c990190d758078
dashboard link: https://syzkaller.appspot.com/bug?extid=ea8b28e8dca42fc3bcbe
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/7c4b04ddbeb3/disk-a77d28d1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/3ecedb0cf6ca/vmlinux-a77d28d1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/44c59c4393c7/Image-a77d28d1.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ea8b28e8dca42fc3bcbe@syzkaller.appspotmail.com

Unable to handle kernel paging request at virtual address 0032503900080052
Mem abort info:
  ESR = 0x0000000096000044
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
  FSC = 0x04: level 0 translation fault
Data abort info:
  ISV = 0, ISS = 0x00000044
  CM = 0, WnR = 1
[0032503900080052] address between user and kernel address ranges
Internal error: Oops: 0000000096000044 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 3127 Comm: syz-executor.1 Not tainted 6.1.0-rc6-syzkaller-32651-ga77d28d13789 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : p9_client_disconnect+0x1c/0x30 net/9p/client.c:1067
lr : p9_client_disconnect+0x18/0x30 net/9p/client.c:1065
sp : ffff800013c43ca0
x29: ffff800013c43ca0 x28: ffff0000f2cc8000 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff80000d3ad050
x23: ffff80000d3a9000 x22: 0000000000000000 x21: 0000000000000000
x20: ffff000105870300 x19: 3032503900080002 x18: 0000000000000369
x17: 53006964623d4d45 x16: ffff80000dc18158 x15: ffff0000f2cc8000
x14: 0000000000000008 x13: 00000000ffffffff x12: ffff0000f2cc8000
x11: ff8080000be9c0e0 x10: 0000000000000000 x9 : ffff80000be9c0e0
x8 : 0000000000000002 x7 : ffff80000c058c98 x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0000f2cc8000 x1 : ffff80000cede3e6 x0 : 3032503900080002
Call trace:
 p9_client_disconnect+0x1c/0x30
 v9fs_session_cancel+0x20/0x30 fs/9p/v9fs.c:530
 v9fs_kill_super+0x2c/0x50 fs/9p/vfs_super.c:225
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
Code: 910003fd aa0003f3 9710261f 52800048 (b9005268) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	910003fd 	mov	x29, sp
   4:	aa0003f3 	mov	x19, x0
   8:	9710261f 	bl	0xfffffffffc409884
   c:	52800048 	mov	w8, #0x2                   	// #2
* 10:	b9005268 	str	w8, [x19, #80] <-- trapping instruction


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

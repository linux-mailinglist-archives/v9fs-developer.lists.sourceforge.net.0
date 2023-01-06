Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4892965FAF2
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Jan 2023 06:38:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pDfRQ-000639-1Y;
	Fri, 06 Jan 2023 05:38:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36LO3YwkbAFMDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pDfRP-000632-1W for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jan 2023 05:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9haJaoxzzlxIw80KSghijxYYontjX86CShnPu8UjfW4=; b=VlUDaAMyBUVbSpqlaY5qeKOOrm
 AATG+0ym4nQ68SJvr5TdnOAXss/HySMk1AJozSKDHkA8ubUi7PqBSoycsGr/guDT7/lxyXdWp+BIy
 NgVbRbYQdJILUOrwBuCLmjhy6sqJOvhZqIkCA/ooO79TlfM8V+LFAaeUTIQcKB0WReig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9haJaoxzzlxIw80KSghijxYYontjX86CShnPu8UjfW4=; b=A
 recmo42kLV05pAMFOYEFMjOPGp/1ujX7dOlEUjFnDL0Rro+wTwW4TVwI3+oRgAIQlJ9dUFjSIH1S3
 JWTQDIKi0KCXacTVdDlZ8y4hxj9zm31Gs1S65erOuWQVKJ7ZHtBIILck9LvfAbV7gyG97ozBnpR9K
 q4l5JMbbBhrkz63Y=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pDfRO-0002zt-CR for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Jan 2023 05:38:54 +0000
Received: by mail-il1-f199.google.com with SMTP id
 n15-20020a056e021baf00b0030387c2e1d3so551227ili.5
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 05 Jan 2023 21:38:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9haJaoxzzlxIw80KSghijxYYontjX86CShnPu8UjfW4=;
 b=4jEggRQYwxK9mF8M875p4+0TwX8DtZS8zLg94AdMsOioK0cpp9V3CtqxjSjM5cIwvU
 Yd6nFNY+I8RnlVtAbQ5ojuqg/odm6nEIJHWwt4b2M/XaBxoeF7WVUVdA3q1YHejrSrWE
 uwKSuc4xIXk6t9zU9l1AXXQpBodrnbh15sojl0VZZapTTvs7dHM6ZrTTvSUlI9PUdUoc
 WxxvGbfqG3tSovA02ofNPrYmxz6F2/LdpGOoyNS6TtSR9e7lxqBpjpkynYnQ1P8v5nI0
 rIC2hG5uMy4jhARYQ4vaIgQl4y2mgAl+gT9na3lmZHD4a/3pzcbpxBQFavhkcflziqB1
 LCpA==
X-Gm-Message-State: AFqh2kovwglcOqyq7pziHXJaIL9BK0BBENIMXhTMHhkrSoJMqcS2VtEk
 dF/RH9CdLOstmTwxKXL0YhfA3vUlH3VGiK8RSksmxXTxSDEI
X-Google-Smtp-Source: AMrXdXsruXyrNEkCIYr6WYHzHNmYGVS2jLn5bC+W07DFgx/KzGjFaAh/wTFmxNS2SlEDLWf7FbBp2WpymlZEbGzufhoGGftuJW4I
MIME-Version: 1.0
X-Received: by 2002:a02:a510:0:b0:38a:1efa:7053 with SMTP id
 e16-20020a02a510000000b0038a1efa7053mr5097206jam.173.1672983528747; Thu, 05
 Jan 2023 21:38:48 -0800 (PST)
Date: Thu, 05 Jan 2023 21:38:48 -0800
In-Reply-To: <000000000000cad14205ee10ec87@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f238aa05f191d4d6@google.com>
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
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 247f34f7b803 Linux 6.1-rc2 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=145dcb52480000
 ke [...] Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
X-Headers-End: 1pDfRO-0002zt-CR
Subject: Re: [V9fs-developer] [syzbot] BUG: unable to handle kernel paging
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    247f34f7b803 Linux 6.1-rc2
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=145dcb52480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=fa9bed8d6a8992a0
dashboard link: https://syzkaller.appspot.com/bug?extid=ea8b28e8dca42fc3bcbe
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1360a90c480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1580e9e6480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/05f9a7fca332/disk-247f34f7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ec50c3ad7d48/vmlinux-247f34f7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/1446f94b11ed/Image-247f34f7.gz.xz

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
CPU: 1 PID: 3076 Comm: syz-executor424 Not tainted 6.1.0-rc2-syzkaller-154433-g247f34f7b803 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : p9_client_disconnect+0x1c/0x30 net/9p/client.c:1067
lr : p9_client_disconnect+0x18/0x30 net/9p/client.c:1065
sp : ffff800012e43ca0
x29: ffff800012e43ca0 x28: ffff0000cb48cec0 x27: 0000000000000000
x26: 00000000000000c0 x25: 0000000000000002 x24: ffff80000d37d050
x23: ffff80000d379000 x22: 0000000000000000 x21: 0000000000000000
x20: ffff0000cc82cf00 x19: 3032503900080002 x18: 0000000000000035
x17: 4553006964623d4d x16: 0000000000000000 x15: 0000000000000000
x14: 0000000000000000 x13: ffff0000c5860c18 x12: ffff0000ccb854d8
x11: ff8080000be7a520 x10: 0000000000000000 x9 : ffff80000be7a520
x8 : 0000000000000002 x7 : 0000000000000000 x6 : ffff80000c0374d8
x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff0000cb48cec0 x1 : 0000000000000000 x0 : 3032503900080002
Call trace:
 p9_client_disconnect+0x1c/0x30
 v9fs_session_cancel+0x20/0x30 fs/9p/v9fs.c:530
 v9fs_kill_super+0x2c/0x50 fs/9p/vfs_super.c:225
 deactivate_locked_super+0x70/0xe8 fs/super.c:331
 deactivate_super+0xd0/0xd4 fs/super.c:362
 cleanup_mnt+0x184/0x1c0 fs/namespace.c:1186
 __cleanup_mnt+0x20/0x30 fs/namespace.c:1193
 task_work_run+0x100/0x148 kernel/task_work.c:179
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 do_notify_resume+0x174/0x1f0 arch/arm64/kernel/signal.c:1127
 prepare_exit_to_user_mode arch/arm64/kernel/entry-common.c:137 [inline]
 exit_to_user_mode arch/arm64/kernel/entry-common.c:142 [inline]
 el0_svc+0x9c/0x150 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
Code: 910003fd aa0003f3 9710b2fd 52800048 (b9005268) 
---[ end trace 0000000000000000 ]---
----------------
Code disassembly (best guess):
   0:	910003fd 	mov	x29, sp
   4:	aa0003f3 	mov	x19, x0
   8:	9710b2fd 	bl	0xfffffffffc42cbfc
   c:	52800048 	mov	w8, #0x2                   	// #2
* 10:	b9005268 	str	w8, [x19, #80] <-- trapping instruction



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

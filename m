Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D44B4EB591
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 00:06:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZJyn-0006iY-0v; Tue, 29 Mar 2022 22:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nZJyY-0006iH-Gq
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 22:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JcJk3NcTD//GtEmRNH6tsnNKdy80/1cNJm+0T/WWJ8c=; b=eCpi2apNm+ft/7iWzlca7ZsjRW
 RpFxwQ3RvZsqPzLxbRie9Dku80q6I/F8M67k7Vk8O6gOO8Tcspx2bbMjlcxQ9JHmd3xIp+c9c0OYI
 eXy7jNAvHR+G1hhmYjkjsIeArC0xQozRz/sNog6T474HLjrgMIsCpnK74JeIXr/fuv9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JcJk3NcTD//GtEmRNH6tsnNKdy80/1cNJm+0T/WWJ8c=; b=MYrsmq7/0+OolwfiJ4Fl6EYYH5
 PZyFXdALDNTyHeuAZZOvV0mt2Dp4Jlb8Zmmi5yW5Ln3K30bA74F4MS/OlVLJGjPYCpm0fZTIkCOGP
 8iQBp9qYdRy/XSk2JA5IbgJ8Xwe/Gegm1rymkxHETTelBIk8RwvRWbuMxSXN9IjwoZ/I=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZJyQ-00081G-EK
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 22:06:04 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 97CB8C020; Wed, 30 Mar 2022 00:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648591551; bh=JcJk3NcTD//GtEmRNH6tsnNKdy80/1cNJm+0T/WWJ8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pOV3Gwq+eOiks8TWwwlwywD+gD20R4AbvcuzbhwJidUGyqanwA1Szjbm8NgvytQfu
 ej0/TTJw1e9oRoNxycVRY6SIXcir7efBWBABJbkTeMuIXSr6va9QnHgo3ZJwjoNcYo
 qWtvmMZbunPnB9X0n6wXrDBPxR6O9eyC1rOsxBPj6Krq5ISNXPHk/0cZzD7g/Es9ZH
 0gjgzSFrvMGZvxB4LsZU6Nc+MSwQhskUBwd+86793V5XWY5lJnGDM4jQyPs73ajjAm
 N0v/K2uJ+dKsHkp0MVGrCRwr8wamUd9Ix1/s4o8EYublcd2vRvSAzviMBgYY5fLBtj
 moS0cQ9NAFrDQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=SORTED_RECIPS,
 UNPARSEABLE_RELAY autolearn=no version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 35B23C009;
 Wed, 30 Mar 2022 00:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648591550; bh=JcJk3NcTD//GtEmRNH6tsnNKdy80/1cNJm+0T/WWJ8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FGPoWDZymW6j4tZG8qP9yEZVT7iCrkF6UEcCEVorRqoJI6bDk/IHQ0/GgVYlslC0z
 vq+IjwE3X1k1tB/IP2MewdtHgipfLOy8XTlxid8S8c/1uFHcA60qcevYGYR494WQ2r
 f43qACTF3gtUi+6SfOaImRF5ROBP22Zq0kzwUJH/rTmgvDSUb6hTMUhXXe4xJecj2Y
 Vp4WkzvzeYzNttGTlbegzcHDA2eU+TRMhJNdzWwA8o2zoveUKRPaGKRdmFiB6WObfJ
 qlKs9pDmrT7HCv8y1ojlgFCS6GUjvFALE2FPclFYL+M0mN1UaZS2aSWdpo86+Dzoub
 NZStCyIOfvpWQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 98330da0;
 Tue, 29 Mar 2022 22:05:43 +0000 (UTC)
Date: Wed, 30 Mar 2022 07:05:28 +0900
From: asmadeus@codewreck.org
To: syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>
Message-ID: <YkOCqJ4WDObmaAcn@codewreck.org>
References: <0000000000009523b605db620972@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000009523b605db620972@google.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot wrote on Tue, Mar 29,
 2022 at 02:23:17PM -0700: >
 ======================================================
 > WARNING: possible circular locking dependency detected >
 5.17.0-next-20220328-syzkalle [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nZJyQ-00081G-EK
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot wrote on Tue, Mar 29, 2022 at 02:23:17PM -0700:
> ======================================================
> WARNING: possible circular locking dependency detected
> 5.17.0-next-20220328-syzkaller #0 Not tainted
> ------------------------------------------------------
> kworker/1:1/26 is trying to acquire lock:
> ffff88807eece460 (sb_writers#3){.+.+}-{0:0}, at: p9_fd_write net/9p/trans_fd.c:428 [inline]
> ffff88807eece460 (sb_writers#3){.+.+}-{0:0}, at: p9_write_work+0x25e/0xca0 net/9p/trans_fd.c:479
> 
> but task is already holding lock:
> ffffc90000a1fda8 ((work_completion)(&m->wq)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264
> 
> which lock already depends on the new lock.
> 
> 
> the existing dependency chain (in reverse order) is:
> 
> -> #3 ((work_completion)(&m->wq)){+.+.}-{0:0}:
>        process_one_work+0x905/0x1610 kernel/workqueue.c:2265
>        worker_thread+0x665/0x1080 kernel/workqueue.c:2436
>        kthread+0x2e9/0x3a0 kernel/kthread.c:376
>        ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298
> 
> -> #2 ((wq_completion)events){+.+.}-{0:0}:
>        flush_workqueue+0x164/0x1440 kernel/workqueue.c:2831
>        flush_scheduled_work include/linux/workqueue.h:583 [inline]
>        ext4_put_super+0x99/0x1150 fs/ext4/super.c:1202
>        generic_shutdown_super+0x14c/0x400 fs/super.c:462
>        kill_block_super+0x97/0xf0 fs/super.c:1394
>        deactivate_locked_super+0x94/0x160 fs/super.c:332
>        deactivate_super+0xad/0xd0 fs/super.c:363
>        cleanup_mnt+0x3a2/0x540 fs/namespace.c:1186
>        task_work_run+0xdd/0x1a0 kernel/task_work.c:164
>        resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
>        exit_to_user_mode_loop kernel/entry/common.c:183 [inline]
>        exit_to_user_mode_prepare+0x23c/0x250 kernel/entry/common.c:215
>        __syscall_exit_to_user_mode_work kernel/entry/common.c:297 [inline]
>        syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:308
>        do_syscall_64+0x42/0x80 arch/x86/entry/common.c:86
>        entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> -> #1 (&type->s_umount_key#32){++++}-{3:3}:
>        down_read+0x98/0x440 kernel/locking/rwsem.c:1461
>        iterate_supers+0xdb/0x290 fs/super.c:692
>        drop_caches_sysctl_handler+0xdb/0x110 fs/drop_caches.c:62
>        proc_sys_call_handler+0x4a1/0x6e0 fs/proc/proc_sysctl.c:604
>        call_write_iter include/linux/fs.h:2080 [inline]
>        do_iter_readv_writev+0x3d1/0x640 fs/read_write.c:726
>        do_iter_write+0x182/0x700 fs/read_write.c:852
>        vfs_iter_write+0x70/0xa0 fs/read_write.c:893
>        iter_file_splice_write+0x723/0xc70 fs/splice.c:689
>        do_splice_from fs/splice.c:767 [inline]
>        direct_splice_actor+0x110/0x180 fs/splice.c:936
>        splice_direct_to_actor+0x34b/0x8c0 fs/splice.c:891
>        do_splice_direct+0x1a7/0x270 fs/splice.c:979
>        do_sendfile+0xae0/0x1240 fs/read_write.c:1246
>        __do_sys_sendfile64 fs/read_write.c:1305 [inline]
>        __se_sys_sendfile64 fs/read_write.c:1297 [inline]
>        __x64_sys_sendfile64+0x149/0x210 fs/read_write.c:1297
>        do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>        do_syscall_64+0x35/0x80 arch/x86/entry/common.c:80
>        entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> -> #0 (sb_writers#3){.+.+}-{0:0}:
>        check_prev_add kernel/locking/lockdep.c:3096 [inline]
>        check_prevs_add kernel/locking/lockdep.c:3219 [inline]
>        validate_chain kernel/locking/lockdep.c:3834 [inline]
>        __lock_acquire+0x2ac6/0x56c0 kernel/locking/lockdep.c:5060
>        lock_acquire kernel/locking/lockdep.c:5672 [inline]
>        lock_acquire+0x1ab/0x510 kernel/locking/lockdep.c:5637
>        percpu_down_read include/linux/percpu-rwsem.h:51 [inline]
>        __sb_start_write include/linux/fs.h:1728 [inline]
>        sb_start_write include/linux/fs.h:1798 [inline]
>        file_start_write include/linux/fs.h:2815 [inline]
>        kernel_write fs/read_write.c:564 [inline]
>        kernel_write+0x2ac/0x540 fs/read_write.c:555
>        p9_fd_write net/9p/trans_fd.c:428 [inline]
>        p9_write_work+0x25e/0xca0 net/9p/trans_fd.c:479
>        process_one_work+0x996/0x1610 kernel/workqueue.c:2289
>        worker_thread+0x665/0x1080 kernel/workqueue.c:2436
>        kthread+0x2e9/0x3a0 kernel/kthread.c:376
>        ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298


So p9_write_work cannot write because there's.. a backing ext4 umount (I
assume it's been mounted with trans fd with an ext4 file) and a
drop_caches stuck in parallel, and we just got caught in the crossfire ?

I'm not sure why it got stuck there but that doesn't look like anything
we can do about it, using trans fd with filesystem backed files isn't a
usage we care about in the first place, maybe there's a way to refuse
these and only keep sockets but I don't really see the point of
artificially limiting the interface (unless using a 9p mount with a file
could have security implications I don't see)

wontfix/dontcare for me,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

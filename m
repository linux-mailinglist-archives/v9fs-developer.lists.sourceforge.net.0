Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B673307
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 17:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZB4nEDtry4nNg3tG4oRAQTyDMMcmsQ25fq28wbQwvxo=; b=LstKtATaopkj9lAQhTrUSdcUZI
	f3nB8litwjrdedXaFFm71UUr2n1LyOOagd99vOmU92p5ENuMzCC6kfBURKzoUiiSrk+YBhaPWskzh
	UG/c4IUxWcM1LfeaW9R9HvHxawfARL3UQHAi3wVA/uIDElZMb3qx1Skz6t77il9YPkYA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqJUD-0006us-Ol; Wed, 24 Jul 2019 15:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dvyukov@google.com>) id 1hqJUC-0006uj-UH
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e91RU/Uzz3dxmlV1YYbFb2yB3ZDeyFoQVCvWxmZGx6U=; b=dBajTxue1U/AwsGy38oAPeKRDv
 aIlDh7ZKiI8tcnO54nglQjBoTOPQjkwKb+mV34/n2cH1ib2CwabUh2pRv2b/UeSR+B18ZhapqChZT
 S+jKiMzDcEi0b+m7vXb2ZRufDPCJFzLwaXi1m3ZES5pSiy5VudjqmZptoOLM3+dUscFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e91RU/Uzz3dxmlV1YYbFb2yB3ZDeyFoQVCvWxmZGx6U=; b=hLPDSspl/CY1fdhP1Tf44W0pQz
 t/LZf5X9QTiGEt4mEaqZ0BiCHxhkF5LJ793b5VcKAiKSSvIKyZxOagCFDQUIVBx+f3129ARudDo7x
 ucSWttjTNSTQXhD76So0ztYLgkHaROE3TIr4odR00c/jsXTrIdtXEk+SGImHAIWb6S2A=;
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqJU9-00EJh1-U1
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:47:24 +0000
Received: by mail-io1-f65.google.com with SMTP id i10so90517294iol.13
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 08:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e91RU/Uzz3dxmlV1YYbFb2yB3ZDeyFoQVCvWxmZGx6U=;
 b=Myk/Gq/G6dwWFrykH2qp/tqo06K1Cv+Cr7pQOc6qDpqevIIb1WhKPPQ+fHay8zjDTo
 d9UVJyoHfQ4ffWQ5zQgGn0kod2WVShhIWQHiV3wVZQFwm5Yfod2dvv7MD9RAZgssNK/k
 ZYn/bRMxKcvL4O9wfOazt/Tc5ArvnoK8nRNr7Bc0aUzzP1LblqyJdsOTI2Nmdhd7OeEY
 w2zyQsOO0Gr1OlYN/H7TWMuz9/2Hf+mKLeEcou8sfuSnNnq+yboAHIbMEv6ZD1VjhC3s
 pn/nfKq/hQk95iXuWCEtf0IMuOC2bdAxxnmAiAnCPKphUBmsj5vWLw4wvd9uUOZsKUri
 8Icw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e91RU/Uzz3dxmlV1YYbFb2yB3ZDeyFoQVCvWxmZGx6U=;
 b=OmjHLamPfJz+kjHK4iqcj16BqTrhNxmx88YsY13RZ9TYT8dBk7kSKukNNjfUDENjpr
 IQq/bd+YI/acqBYqmTt0l1Zim0rNRFDPX7A6evI+QbktqlxWxMJPvSbZnKq98UkHyGUi
 PXLf+arSH+7iXHQYU6A59mD/H4hAjWeQWbhHXKEzTTE1AZN4RdNOneDZbYte2rXcp+Ea
 +2wNBp9cndlj+6R2lrcMfbkMa1lsL67PappvVgdZ2ZpfWcQp4MVn7HcIT/GMwtyaF6iH
 dr4x4lLrAHjotnZXHrLsjhnqZy2LEjARpmjPeTTwGqjV+O8ffykf3xpfS5nl9HvXOUVA
 ozRg==
X-Gm-Message-State: APjAAAXgX0Gm9DvLCG1jy3zdlziwWBzPFGvdH19hcR7/J81oChLbNKLe
 jKZ7aLFb8XMzXoZayf6O21tERJ5B8v2KmyZtLJDiYw==
X-Google-Smtp-Source: APXvYqxnrz/Rkjs9cYyoJO+j6vzLLSDT9si2barOLaZ5pTonpHnFhnywyxZPbm2/IJDJKwQXlU1nCfAc4bapXN/JCEQ=
X-Received: by 2002:a5e:de0d:: with SMTP id e13mr53071086iok.144.1563983235173; 
 Wed, 24 Jul 2019 08:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000070c81a058e6c2917@google.com>
In-Reply-To: <00000000000070c81a058e6c2917@google.com>
Date: Wed, 24 Jul 2019 17:47:03 +0200
Message-ID: <CACT4Y+aC_gdOMioLJ+v9D_1dMkgjnFYor-QjQydf6DY4WWoUHA@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-Headers-End: 1hqJU9-00EJh1-U1
Subject: Re: [V9fs-developer] memory leak in v9fs_session_init
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
From: Dmitry Vyukov via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: syzbot <syzbot+15b759334fd44cd9785a@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

 On Wed, Jul 24, 2019 at 2:08 PM syzbot
<syzbot+15b759334fd44cd9785a@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    abdfd52a Merge tag 'armsoc-defconfig' of git://git.kernel...
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=163046afa00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d31de3d88059b7fa
> dashboard link: https://syzkaller.appspot.com/bug?extid=15b759334fd44cd9785a
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1735466c600000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=117e0cf0600000
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+15b759334fd44cd9785a@syzkaller.appspotmail.com

+fs/9p/v9fs.c maintainers

> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 16.360s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 16.350s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 16.350s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 16.340s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 16.410s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 16.400s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 16.400s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 16.390s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 17.280s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 17.270s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 17.270s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 17.260s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 18.150s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 18.140s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 18.140s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 18.130s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 19.020s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 19.010s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 19.010s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 19.000s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff88811181c360 (size 32):
>    comm "syz-executor114", pid 7075, jiffies 4294946393 (age 19.070s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 46 04 00 ea ff ff 80 4a 46 04 00 ea ff ff  r.F......JF.....
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109294a0 (size 32):
>    comm "syz-executor114", pid 7076, jiffies 4294946394 (age 19.060s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff888110929b40 (size 32):
>    comm "syz-executor114", pid 7080, jiffies 4294946394 (age 19.060s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> BUG: memory leak
> unreferenced object 0xffff8881109292a0 (size 32):
>    comm "syz-executor114", pid 7081, jiffies 4294946395 (age 19.050s)
>    hex dump (first 32 bytes):
>      77 66 64 6e 6f 25 61 63 63 65 73 73 3d 75 73 65  wfdno%access=use
>      72 00 6b 65 72 6e 65 6c 5f 74 3a 73 30 00 00 00  r.kernel_t:s0...
>    backtrace:
>      [<00000000830cd797>] kmemleak_alloc_recursive
> /./include/linux/kmemleak.h:43 [inline]
>      [<00000000830cd797>] slab_post_alloc_hook /mm/slab.h:522 [inline]
>      [<00000000830cd797>] slab_alloc /mm/slab.c:3319 [inline]
>      [<00000000830cd797>] __do_kmalloc /mm/slab.c:3653 [inline]
>      [<00000000830cd797>] __kmalloc_track_caller+0x165/0x300 /mm/slab.c:3670
>      [<000000004c2bde0e>] kmemdup_nul+0x31/0x80 /mm/util.c:143
>      [<00000000d3b2a6b1>] match_strdup+0x21/0x30 /lib/parser.c:322
>      [<00000000cb5a9103>] v9fs_parse_options /fs/9p/v9fs.c:281 [inline]
>      [<00000000cb5a9103>] v9fs_session_init+0x29e/0x880 /fs/9p/v9fs.c:422
>      [<0000000060a9624b>] v9fs_mount+0x5e/0x3a0 /fs/9p/vfs_super.c:120
>      [<0000000045c47d3a>] legacy_get_tree+0x27/0x80 /fs/fs_context.c:661
>      [<00000000966bd655>] vfs_get_tree+0x2e/0x110 /fs/super.c:1416
>      [<000000004bdabb83>] do_new_mount /fs/namespace.c:2795 [inline]
>      [<000000004bdabb83>] do_mount+0x94e/0xc70 /fs/namespace.c:3115
>      [<000000008f276989>] ksys_mount+0xab/0x120 /fs/namespace.c:3324
>      [<000000003dd28c22>] __do_sys_mount /fs/namespace.c:3338 [inline]
>      [<000000003dd28c22>] __se_sys_mount /fs/namespace.c:3335 [inline]
>      [<000000003dd28c22>] __x64_sys_mount+0x26/0x30 /fs/namespace.c:3335
>      [<00000000b6179601>] do_syscall_64+0x76/0x1a0
> /arch/x86/entry/common.c:296
>      [<000000005924437c>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> executing program
> executing program
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this bug, for details see:
> https://goo.gl/tpsmEJ#testing-patches
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/00000000000070c81a058e6c2917%40google.com.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

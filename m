Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E85503B2095
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Jun 2021 20:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lw7vT-0007L5-Gf; Wed, 23 Jun 2021 18:48:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jim.cromie@gmail.com>) id 1lw7vR-0007Kx-Al
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Jun 2021 18:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GLC/zfQwcP3c+pjyiImAKQNlOE1CIfA0BjDJ+QH/E3E=; b=FC4/6J7G3sWkyV1VihkWxlqZse
 0VyaD7fvbelwv4rawJnZnj4og5CpY1TtkW0aqDpsG7kF3G+zDRzcSO+aAL7haibQlkX4c/nZNagOd
 XArtBhwg9qiVXXxgHj9osPh/GGOcHd/Ay3lGpaFyz7zHa3QEgB3FBBlkaeYQJKfhqdd4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GLC/zfQwcP3c+pjyiImAKQNlOE1CIfA0BjDJ+QH/E3E=; b=XI6K5HCuFjZKpWjqMxNX+OU25o
 wT3pzQFh7KOeSe/7zIxyq53BiPJCZmLZ5lqG/+gcLovJsaoy8rkgbTIPZR7ED4cAZSv1vaGKg801o
 mfeZUQ07fv1q/gu2IzQkKLUYM6Zf7vWDfFGHfoSRZpPoRzkBs7CXcIjShV9VNYG01qS4=;
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lw7vR-009hok-8v
 for v9fs-developer@lists.sourceforge.net; Wed, 23 Jun 2021 18:48:41 +0000
Received: by mail-vs1-f47.google.com with SMTP id l26so1993307vsm.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Jun 2021 11:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GLC/zfQwcP3c+pjyiImAKQNlOE1CIfA0BjDJ+QH/E3E=;
 b=Mx8bYJkW0yp3mkGGW8xzVT6ExK1ufFhYixZUtFf2aVXWreVwRYq/UDzzIALlHBGAY5
 a6O6YD7EB8NGSr0W9r/eEanwyuRyeTh4PnGMfY73V2S83Ty46RBXS43YqY7S0xmWHwLR
 UQJ+8WE4KftwhMJRHVrxtdpiSnShuynC4LV7Myc4C/mlLB+iz3jy5pI6kE0DAbzPp+v/
 Sz8QtMx+pEPMDlKwxcesi9rnvboKuFq6veiri2veSQ2iD9OEX3zx+ZsdywP+ESREgFNf
 rMG9xBY6/PvejWz+YSOvjAN7bPGYkiqP0sGcYdtnYz6fAnlngodFPAWgOeZk5ejRjJIv
 GpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GLC/zfQwcP3c+pjyiImAKQNlOE1CIfA0BjDJ+QH/E3E=;
 b=aP+PXtQLtLDSEBDlPn985NPRllyiw8fw682szR8/exOIhz2TrqrW6mvHO3Qw2yenNY
 bW9+/c3d92r8JWz318TzeFhhVTND0sy7a0TwY3chIhbQBh/8TOW2mFiivr6ZKJjsbPIU
 6ZQbHxkTTNtgYcXenzEhyOPKBb/xIm20l3ZBPkQ2y0wGrdjt4kaw1bYqXy7oMXxlqM5B
 yOB02b7veqoV//nAp3T/iXIaGoJZvUoa1PzQx2kLcNwmW3K+JbCXp7Q9NkGWhQQtJt6l
 S68cKLr1xFvZqJ72pe8jWAMjpU1QusO8hXeoVPPzS1bMUvr0z+hWGM8e9h2kMAf2HU2x
 xgag==
X-Gm-Message-State: AOAM533uUrfg5Y7h7dwy8ZejO0ZB3x7w4v/LJrc9YosLkiI4IC/xdyIQ
 Vh0Ud4FLQ1OEH0NkF2HsiK61AHRTPI0RMWtFVJEstB0opPkk7A==
X-Google-Smtp-Source: ABdhPJyBrZAMUrxLqGKsMIYx1NrAFtQJEIF56XgJ8+RUFuh7HhApVznRiq1sIEl9LszYJ7b6mwBI0/v2fD+adMyDDmM=
X-Received: by 2002:a67:6948:: with SMTP id e69mr1873866vsc.26.1624474111208; 
 Wed, 23 Jun 2021 11:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
 <YNIaFnfnZPGVd1t3@codewreck.org>
 <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
 <CAJfuBxw-JUpnENT9zNgTq2wdHqH-77pAjNuthoZYbtiCud4T=g@mail.gmail.com>
 <CAJfuBxxsye593-vWtXz5As0vBCYEMm_R9r+JL=YMuD6fg+QGNA@mail.gmail.com>
 <YNJQBc4dawzwMrhn@codewreck.org>
In-Reply-To: <YNJQBc4dawzwMrhn@codewreck.org>
From: jim.cromie@gmail.com
Date: Wed, 23 Jun 2021 12:48:04 -0600
Message-ID: <CAJfuBxzH7VEDgKLOn7gZThR4pPwMK_oKhbMMAFcE-i7gByPO6A@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jim.cromie[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lw7vR-009hok-8v
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
Cc: v9fs-developer@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 22, 2021 at 3:03 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Hi,
>
> let's keep the lists in Cc :)
>
> jim.cromie@gmail.com wrote on Tue, Jun 22, 2021 at 02:55:19PM -0600:
> > heres a fuller report - Im seeing some new stuff here.
>
> Thanks, the one two should be the same as p9_client_cb / p9_client_rpc
> and p9_client_cb / p9_virtio_zc_request are very similar, and also the
> same to the first you had, so the patch didn't really work.
>
> I thought after sending it that it probably needs to be tag =
> READ_ONCE(req->tc.tag) instead of just assigning it... Would you mind
> trying that?
>

I tried it, still getting the reports.
I havent replicated it on a nearby work-tree
and I tried bisecting on the problem work-tree,
got past all my patches and problem remained.
So everything is suspect ...
I'll try to narrow things down.

heres the latest report, for the list

qemu-system-x86_64: warning: 9p: degraded performance: a reasonable
high msize should be chosen on client/guest side (chosen msize is <=
8192). See https://wiki.qemu.org/Documentation/9psetup#msize for
details.
[    8.566576] VFS: Mounted root (9p filesystem) readonly on device 0:22.
qemu-system-x86_64: warning: 9p: Multiple devices detected in same
VirtFS export, which might lead to file ID collisions and severe
misbehaviours on guest! You should either use a separate export for
each device shared from host or use virtfs option 'multidevs=remap'!
[    8.573452] devtmpfs: mounted
[    8.585150] Freeing unused decrypted memory: 2036K
[    8.589527] Freeing unused kernel image (initmem) memory: 3092K
[    8.591756] Write protecting the kernel read-only data: 30720k
[    8.601183] Freeing unused kernel image (text/rodata gap) memory: 2032K
[    8.604040] Freeing unused kernel image (rodata/data gap) memory: 440K
[    8.787167] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    8.788573] rodata_test: all tests were successful
[    8.789531] x86/mm: Checking user space page tables
[    8.968680] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    8.969933] Run /bin/sh as init process
[    9.537655] ==================================================================
[    9.538731] BUG: KCSAN: data-race in p9_client_cb / p9_virtio_zc_request
[    9.539873]
[    9.540113] write to 0xffff888005e5d000 of 4 bytes by interrupt on cpu 0:
[    9.541192]  p9_client_cb+0x27/0x110
[    9.541858]  req_done+0xd3/0x130
[    9.542482]  vring_interrupt+0xac/0x130
[    9.543171]  __handle_irq_event_percpu+0x64/0x260
[    9.544042]  handle_irq_event+0x93/0x120
[    9.544717]  handle_edge_irq+0x123/0x400
[    9.545429]  __common_interrupt+0x3e/0xa0
[    9.546001]  common_interrupt+0x7e/0xa0
[    9.546518]  asm_common_interrupt+0x1e/0x40
[    9.547127]  native_safe_halt+0xe/0x10
[    9.547846]  default_idle+0xa/0x10
[    9.548348]  default_idle_call+0x38/0xc0
[    9.548991]  do_idle+0x1e7/0x270
[    9.549548]  cpu_startup_entry+0x19/0x20
[    9.550180]  rest_init+0xd0/0xd2
[    9.550740]  arch_call_rest_init+0xa/0x11
[    9.551493]  start_kernel+0xacb/0xadd
[    9.552035]  secondary_startup_64_no_verify+0xc2/0xcb
[    9.552739]
[    9.552954] read to 0xffff888005e5d000 of 4 bytes by task 185 on cpu 1:
[    9.553986]  p9_virtio_zc_request+0x449/0x7b0
[    9.554586]  p9_client_zc_rpc.constprop.0+0x175/0x770
[    9.555421]  p9_client_read_once+0x24d/0x330
[    9.556013]  p9_client_read+0x81/0xa0
[    9.556518]  v9fs_fid_readpage+0xca/0x310
[    9.557084]  v9fs_vfs_readpage+0x28/0x30
[    9.557785]  filemap_read_page+0x6e/0x1a0
[    9.558337]  filemap_fault+0xc2a/0x1010
[    9.558874]  __do_fault+0x76/0x210
[    9.559343]  __handle_mm_fault+0x16fe/0x2010
[    9.559934]  handle_mm_fault+0x129/0x410
[    9.560472]  do_user_addr_fault+0x1b7/0x670
[    9.561052]  exc_page_fault+0x78/0x160
[    9.561569]  asm_exc_page_fault+0x1e/0x30
[    9.562122]
[    9.562336] Reported by Kernel Concurrency Sanitizer on:
[    9.563054] CPU: 1 PID: 185 Comm: mount Not tainted
5.13.0-rc7-dd7i-00040-g07a2fabfd89c-dirty #131
[    9.564368] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[    9.565543] ==================================================================
[    9.842861] virtme-init: basic initialization done
[    9.870984] virtme-init: running systemd-tmpfiles
[   10.371613] ==================================================================
[   10.372752] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc
[   10.373617]
[   10.373832] write to 0xffff888005e5d000 of 4 bytes by interrupt on cpu 0:
[   10.374753]  p9_client_cb+0x27/0x110
[   10.375252]  req_done+0xd3/0x130
[   10.375749]  vring_interrupt+0xac/0x130
[   10.376282]  __handle_irq_event_percpu+0x64/0x260
[   10.376927]  handle_irq_event+0x93/0x120
[   10.377465]  handle_edge_irq+0x123/0x400
[   10.378035]  __common_interrupt+0x3e/0xa0
[   10.378611]  common_interrupt+0x7e/0xa0
[   10.379126]  asm_common_interrupt+0x1e/0x40
[   10.379720]  native_safe_halt+0xe/0x10
[   10.380271]  default_idle+0xa/0x10
[   10.380770]  default_idle_call+0x38/0xc0
[   10.381328]  do_idle+0x1e7/0x270
[   10.381835]  cpu_startup_entry+0x19/0x20
[   10.382358]  rest_init+0xd0/0xd2
[   10.382832]  arch_call_rest_init+0xa/0x11
[   10.383414]  start_kernel+0xacb/0xadd
[   10.383944]  secondary_startup_64_no_verify+0xc2/0xcb
[   10.384660]
[   10.384869] read to 0xffff888005e5d000 of 4 bytes by task 194 on cpu 1:
[   10.385832]  p9_client_rpc+0x1cf/0x860
[   10.386398]  p9_client_readlink+0x3b/0x110
[   10.386972]  v9fs_vfs_get_link_dotl+0x37/0x80
[   10.387568]  step_into+0xa7c/0xb60
[   10.388042]  walk_component+0x8a/0x270
[   10.388558]  path_lookupat+0xca/0x340
[   10.389065]  filename_lookup+0x134/0x2a0
[   10.389628]  user_path_at_empty+0x6d/0x90
[   10.390187]  vfs_statx+0x79/0x1a0
[   10.390681]  __do_sys_newfstatat+0x1e/0x40
[   10.391237]  __x64_sys_newfstatat+0x4e/0x60
[   10.391845]  do_syscall_64+0x42/0x80
[   10.392373]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   10.393082]
[   10.393310] Reported by Kernel Concurrency Sanitizer on:
[   10.394106] CPU: 1 PID: 194 Comm: systemd-tmpfile Not tainted
5.13.0-rc7-dd7i-00040-g07a2fabfd89c-dirty #131
[   10.395779] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[   10.397131] ==================================================================
Failed to create directory or subvolume "/var/spool/cups/tmp": Permission denied

[   10.720448] virtme-init: starting udevd
[   10.784768] ==================================================================
[   10.785855] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc
[   10.786937]
[   10.787152] write to 0xffff888005e5d000 of 4 bytes by interrupt on cpu 0:
[   10.788185]  p9_client_cb+0x27/0x110
[   10.788687]  req_done+0xd3/0x130
[   10.789133]  vring_interrupt+0xac/0x130
[   10.789669]  __handle_irq_event_percpu+0x64/0x260
[   10.790306]  handle_irq_event+0x93/0x120
[   10.790845]  handle_edge_irq+0x123/0x400
[   10.791384]  __common_interrupt+0x3e/0xa0
[   10.791933]  common_interrupt+0x7e/0xa0
[   10.792460]  asm_common_interrupt+0x1e/0x40
[   10.793052]  native_safe_halt+0xe/0x10
[   10.793674]  default_idle+0xa/0x10
[   10.794293]  default_idle_call+0x38/0xc0
[   10.794914]  do_idle+0x1e7/0x270
[   10.795366]  cpu_startup_entry+0x19/0x20
[   10.795909]  rest_init+0xd0/0xd2
[   10.796353]  arch_call_rest_init+0xa/0x11
[   10.796911]  start_kernel+0xacb/0xadd
[   10.797459]  secondary_startup_64_no_verify+0xc2/0xcb
[   10.798153]
[   10.798367] read to 0xffff888005e5d000 of 4 bytes by task 196 on cpu 1:
[   10.799256]  p9_client_rpc+0x185/0x860
[   10.799776]  p9_client_clunk+0x99/0x150
[   10.800300]  v9fs_dentry_release+0x38/0x60
[   10.800863]  __dentry_kill+0x203/0x2b0
[   10.801374]  dput+0x217/0x480
[   10.801788]  path_openat+0x803/0x1860
[   10.802573]  do_filp_open+0x116/0x1f0
[   10.803322]  do_sys_openat2+0x91/0x190
[   10.804215]  __x64_sys_openat+0x9b/0xd0
[   10.805003]  do_syscall_64+0x42/0x80
[   10.805838]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   10.806854]
[   10.807226] Reported by Kernel Concurrency Sanitizer on:
[   10.808460] CPU: 1 PID: 196 Comm: systemd-udevd Not tainted
5.13.0-rc7-dd7i-00040-g07a2fabfd89c-dirty #131
[   10.810544] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[   10.812337] ==================================================================
...
[   12.579025] ==================================================================
[   12.580064] BUG: KCSAN: data-race in p9_client_cb / p9_virtio_zc_request
[   12.580978]
[   12.581193] write to 0xffff888005e5d900 of 4 bytes by interrupt on cpu 0:
[   12.582107]  p9_client_cb+0x27/0x110
[   12.582647]  req_done+0xd3/0x130
[   12.583080]  vring_interrupt+0xac/0x130
[   12.583632]  __handle_irq_event_percpu+0x64/0x260
[   12.584335]  handle_irq_event+0x93/0x120
[   12.584899]  handle_edge_irq+0x123/0x400
[   12.585456]  __common_interrupt+0x3e/0xa0
[   12.586028]  common_interrupt+0x43/0xa0
[   12.586537]  asm_common_interrupt+0x1e/0x40
[   12.587179]
[   12.587387] read to 0xffff888005e5d900 of 4 bytes by task 238 on cpu 1:
[   12.588322]  p9_virtio_zc_request+0x449/0x7b0
[   12.588942]  p9_client_zc_rpc.constprop.0+0x175/0x770
[   12.589645]  p9_client_read_once+0x24d/0x330
[   12.590417]  p9_client_read+0x81/0xa0
[   12.590946]  v9fs_fid_readpage+0xca/0x310
[   12.591712]  v9fs_vfs_readpage+0x28/0x30
[   12.592470]  filemap_read_page+0x6e/0x1a0
[   12.593218]  filemap_fault+0xc2a/0x1010
[   12.593922]  __do_fault+0x76/0x210
[   12.594590]  __handle_mm_fault+0x16fe/0x2010
[   12.595219]  handle_mm_fault+0x129/0x410
[   12.596017]  do_user_addr_fault+0x1b7/0x670
[   12.596902]  exc_page_fault+0x78/0x160
[   12.597449]  asm_exc_page_fault+0x1e/0x30
[   12.597999]
[   12.598212] Reported by Kernel Concurrency Sanitizer on:
[   12.598927] CPU: 1 PID: 238 Comm: modprobe Not tainted
5.13.0-rc7-dd7i-00040-g07a2fabfd89c-dirty #131
[   12.600153] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[   12.601318] ==================================================================
...
[   12.861485] ==================================================================
[   12.862516] BUG: KCSAN: data-race in virtqueue_get_buf_ctx_split+0x62/0x250
[   12.863531]
[   12.863796] race at unknown origin, with read to 0xffff888005dcb942
of 2 bytes by interrupt on cpu 0:
[   12.865289]  virtqueue_get_buf_ctx_split+0x62/0x250
[   12.866190]  virtqueue_get_buf+0x33/0x40
[   12.866890]  req_done+0x6c/0x130
[   12.867376]  vring_interrupt+0xac/0x130
[   12.867913]  __handle_irq_event_percpu+0x64/0x260
[   12.868559]  handle_irq_event+0x93/0x120
[   12.869109]  handle_edge_irq+0x123/0x400
[   12.869663]  __common_interrupt+0x3e/0xa0
[   12.870213]  common_interrupt+0x7e/0xa0
[   12.870840]  asm_common_interrupt+0x1e/0x40
[   12.871444]  native_safe_halt+0xe/0x10
[   12.872046]  default_idle+0xa/0x10
[   12.872628]  default_idle_call+0x38/0xc0
[   12.873214]  do_idle+0x1e7/0x270
[   12.873756]  cpu_startup_entry+0x19/0x20
[   12.874301]  rest_init+0xd0/0xd2
[   12.874855]  arch_call_rest_init+0xa/0x11
[   12.875418]  start_kernel+0xacb/0xadd
[   12.875950]  secondary_startup_64_no_verify+0xc2/0xcb
[   12.876683]
[   12.876893] Reported by Kernel Concurrency Sanitizer on:
[   12.877630] CPU: 0 PID: 0 Comm: swapper/0 Not tainted
5.13.0-rc7-dd7i-00040-g07a2fabfd89c-dirty #131
[   12.878962] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014

> > Im running in a vm, using virtme, which uses 9p to share host filesystems
> > since 1st report to you, Ive added --smp 2 to my testing, it seems to
> > have increased reporting
>
> I'm ashamed to say I've just never tried KCSAN... I can give it a try over
> the next few weeks* if that patch + READ_ONCE doesn't cut it
>
> (*sorry)
>
> Thanks,
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983068B499
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 04:44:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pOsQz-0006va-WB;
	Mon, 06 Feb 2023 03:44:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pOsQy-0006vU-MY
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 03:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OqkYSofXf9JeNFlWYJvVsqtk/RqfimEDQwoqP1xI2eo=; b=d8969r5gtBtNQSUvwKximPuYIL
 ZwDfDS7CE6HKzpF8QnwXsXIocbsEXCqpiYmTYh4td2uDrnaQCY3ha6gUcKVE60a+rfP/bMRXbVfXU
 yX5EPEaWAPr40BS1g+K0eM+JDhlTFVptNArsQs8P6BvrSDf9y/kQ0rz9K83iHkdriQHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OqkYSofXf9JeNFlWYJvVsqtk/RqfimEDQwoqP1xI2eo=; b=Ti1NVGaKfZI6XOZJ1DtOaD+VkV
 0ugpkJyVEmxZ2mZDORBV+gZtzbTlBGE8r9AAxBWqJwDIZWYXHw6ituuXvM3uU784ennYAYLG7MZPp
 hvVlbBf+98d5nwoNTZY7UetirEc6YcOqTHTAAh2KHIYDFt/we3tOO2PNB8BP3rY6yj6k=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pOsQv-00CFc2-Ue for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 03:44:46 +0000
Received: by mail-wr1-f53.google.com with SMTP id j25so5628945wrc.4
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 05 Feb 2023 19:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OqkYSofXf9JeNFlWYJvVsqtk/RqfimEDQwoqP1xI2eo=;
 b=ZY/9DxSFI83kDfHt1hzXNXBDELwFmp2ZTlKylGK7/wpjbBXa1pVIpBckcvEcFGGy/O
 b6ksLR9h5Ottd3y5QR2rKmt7g5N1YD/CwabqwxUXWg1R0ZIxGxZJXyjsUCE5AdXF6jTk
 pKtJaHrLh8cbcZd8wOIIr8lh87eFM3PYiuc89U4OzfYm2RuhklSMKarymOwU7XvvPcFQ
 I7VP3QZavq9s6uIQvUKitQtmFvSHIfkr3XPf4241pPP21LBPU1Sj1L0ANSCl9UyEeUdl
 v9GMMsXHeXgOt8Ko1Ng++OPUo5rrHAT+RYV8wO3E9LENgv/zMMg+dxYWzHBM7Cw7I1EP
 aRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OqkYSofXf9JeNFlWYJvVsqtk/RqfimEDQwoqP1xI2eo=;
 b=P5NKIlYeXpqYY4uzT0C4OOYW2Si8q6lh7iA5ZFibQMG4um6Dumde6UZYCaECF4dNJU
 egxCcMFi8iKPr/emJt8vToKPKIzzjS3SruyrOjgMC7lRQW2uuTCr2Pzne7rMambTP4jw
 fSM7ZwvoVEwB1BxP2QdsFaJcO4NciCOmwPP6M10r7HbuuT+Aq34bbmSt+Xvoul6y+b6K
 hGfYeFz8cixAs/zP+lbVQaLCO3c0+5PrnsjdWk+yovjHGPVLtVf68lzkFhdoHMfY7+qL
 cCulbkotYB603SbhvxYchv1KCm+DZFmqBudrPQwmRFAhixzznHvJzjbmGcfdOAyiAQ6T
 dOwA==
X-Gm-Message-State: AO0yUKX4B7uhhZavu7LWmKjBquW7E6fUgIpaMwEs1l3mxgy+4qUz6FS+
 rDWRMVBv4P1Ew4pzFrOkeYbVDjg7Oo1BJWLhirc=
X-Google-Smtp-Source: AK7set/CkIxDnkFksV28GmzjQ6/cBqSY5+AsmIuHKOVi9aqCknGfk13Ko6/rEyKLl1n9Bo/jTQwLz4pi2otBMlLF9ZY=
X-Received: by 2002:adf:ea82:0:b0:2c3:ec08:75af with SMTP id
 s2-20020adfea82000000b002c3ec0875afmr26594wrm.104.1675655079044; Sun, 05 Feb
 2023 19:44:39 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org> <2302787.WOG5zRkYfl@silver>
In-Reply-To: <2302787.WOG5zRkYfl@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 5 Feb 2023 21:44:27 -0600
Message-ID: <CAFkjPTkc-f11p-+ZCV-wRtpT5SbyYBodAzbEHciTRH5CY1br9A@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have a couple of different ways that are triggering the
 warning, so you are quite right that there is more work to be done -- which
 is a bit concerning because we are close to the merge window. Gues [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pOsQv-00CFc2-Ue
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I have a couple of different ways that are triggering the warning, so
you are quite right that there is more work to be done -- which is a
bit concerning because we are close to the merge window.  Guess we
won't be making it.

The particular call path you ran into though may be fixed in a
different way -- so calls to setattr trigger a flush of the writeback
buffer -- this happens regardless of whether we are working on an open
file or not.  Might be easy enough to prevent flushing if the file
isn't currently open (because there should be nothing to flush) -- but
I had a second question: why are we flushing in the first place, this
seems to be traced back 12 years to a commit from Aneesh where he is
concerned that if we change the mode or ownership of the file then we
won't be able to writeback, but that shouldn't be a concern because if
someone has the file open under the original permissions then they
should be able to write regardless of someone changing permissions
underneath them.

I just verified this on linux, if I open a file, I can continue to
write it even if someone changes ownership or permissions underneath
me until I close that file.  So, I think we remove this flush. (the
filemap_write_and_wait in v9fs_vfs_setattr and v9fs_vfs_setattr_dotl.
This doesn't solve all the problems I'm currently chasing down, but it
will take care of this instance.

Now, that being said, original plan 9 semantics say a null wstat is a
sync operation, but it is not clear to me that we ever get that via
the Linux VFS path and such calls are sent via write_inode functions.
Looking at that code, I'm actually not convinced it flushes the buffer
to fscache (if you are using one) before it send the sync, but I need
to look at where that gets used in a call trace to verify.

Thoughts?

      -eric

On Thu, Feb 2, 2023 at 5:27 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Tuesday, January 24, 2023 3:38:23 AM CET Eric Van Hensbergen wrote:
> > This is the third version of a patch series which adds a number
> > of features to improve read/write performance in the 9p filesystem.
> > Mostly it focuses on fixing caching to help utilize the recently
> > increased MSIZE limits and also fixes some problematic behavior
> > within the writeback code.
> >
> > All together, these show roughly 10x speed increases on simple
> > file transfers.  Future patch sets will improve cache consistency
> > and directory caching.
> >
> > These patches are also available on github:
> > https://github.com/v9fs/linux/tree/ericvh/for-next
> > and on kernel.org:
> > https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
> >
> > Tested against qemu, cpu, and diod with fsx, dbench, and some
> > simple benchmarks.
>
> Looks like this needs more work.
>
> I only had a glimpse on your patches yet, but made some tests by doing
> compilations on guest on top of a 9p root fs [1], msize=500k. Under that
> scenario:
>
> * loose: this is suprisingly the only mode where I can see some performance
> increase, over "loose" on master it compiled ~5% faster, but I also got some
> misbehaviours on guest.
>
> * writeahead: no performance results, as compilation already aborts when
> trying to detect a compiler. I had to restore a previous snapshot to repair
> things after this test.
>
> * readahead: significant performance drop. In comparison to "loose" on master
> compilation takes 6 times longer with "readahead". There are some severe
> misbehaviours on guest as well, and after boot I get this warning:
>
> [    5.782846] folio expected an open fid inode->i_private=0000000000000000
> [    5.786641] WARNING: CPU: 0 PID: 321 at fs/9p/vfs_addr.c:174 v9fs_vfs_write_folio_locked (fs/9p/vfs_addr.c:174 (discriminator 3)) 9p
> [    5.792496] Modules linked in: ppdev(E) bochs(E) sg(E) drm_vram_helper(E) joydev(E) evdev(E) drm_kms_helper(E) serio_raw(E) drm_ttm_helper(E) pcsp)
> [    5.816806] CPU: 0 PID: 321 Comm: chown Tainted: G            E      6.2.0-rc6+ #61
> [    5.821694] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.1-0-g3208b098f51a-prebuilt.qemu.org 04/01/2014
> [    5.827362] RIP: 0010:v9fs_vfs_write_folio_locked (fs/9p/vfs_addr.c:174 (discriminator 3)) 9p
>
> Code starting with the faulting instruction
> ===========================================
>         ...
> [    5.835360] RSP: 0018:ffffc900007d3a38 EFLAGS: 00010282
> [    5.836982] RAX: 0000000000000000 RBX: ffff888106c86680 RCX: 0000000000000000
> [    5.838877] RDX: 0000000000000001 RSI: ffffffff821eb1e6 RDI: 00000000ffffffff
> [    5.841179] RBP: ffffea0004279300 R08: 0000000000000000 R09: 00000000ffffefff
> [    5.843039] R10: ffffc900007d38e8 R11: ffffffff824bede8 R12: 0000000000000000
> [    5.844850] R13: 00000000ffffffea R14: 0000000000000014 R15: 0000000000000014
> [    5.846366] FS:  00007fd0fc4a0580(0000) GS:ffff88842fc00000(0000) knlGS:0000000000000000
> [    5.848250] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    5.849386] CR2: 00007fd0fc38f4f0 CR3: 0000000100302000 CR4: 00000000000006f0
> [    5.850824] Call Trace:
> [    5.851622]  <TASK>
> [    5.852052] v9fs_vfs_writepage (fs/9p/vfs_addr.c:207) 9p
> [    5.852841] __writepage (mm/page-writeback.c:2537)
> [    5.853438] write_cache_pages (mm/page-writeback.c:2473)
> [    5.854205] ? __pfx___writepage (mm/page-writeback.c:2535)
> [    5.855309] ? delete_node (lib/radix-tree.c:575)
> [    5.856122] ? radix_tree_delete_item (lib/radix-tree.c:1432)
> [    5.857101] do_writepages (mm/page-writeback.c:2564 mm/page-writeback.c:2552 mm/page-writeback.c:2583)
> [    5.857954] ? radix_tree_delete_item (lib/radix-tree.c:1432)
> [    5.859103] filemap_fdatawrite_wbc (mm/filemap.c:389 mm/filemap.c:378)
> [    5.860043] __filemap_fdatawrite_range (mm/filemap.c:422)
> [    5.861050] filemap_write_and_wait_range (mm/filemap.c:682 mm/filemap.c:665)
> [    5.862132] v9fs_vfs_setattr_dotl (./include/linux/pagemap.h:60 fs/9p/vfs_inode_dotl.c:583) 9p
> [    5.863312] notify_change (fs/attr.c:486)
> [    5.864043] ? chown_common (fs/open.c:736)
> [    5.864793] chown_common (fs/open.c:736)
> [    5.865538] ? preempt_count_add (./include/linux/ftrace.h:977 kernel/sched/core.c:5737 kernel/sched/core.c:5734 kernel/sched/core.c:5762)
> [    5.866420] do_fchownat (fs/open.c:768)
> [    5.867419] __x64_sys_fchownat (fs/open.c:782 fs/open.c:779 fs/open.c:779)
> [    5.868319] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80)
> [    5.869116] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:120)
> [    5.871008] RIP: 0033:0x7fd0fc3b7b9a
>
> Best regards,
> Christian Schoenebeck
>
> [1] https://wiki.qemu.org/Documentation/9p_root_fs
>
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

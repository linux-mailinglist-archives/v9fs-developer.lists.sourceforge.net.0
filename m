Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CA68839
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jul 2019 13:33:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hmzEV-0003W3-3g; Mon, 15 Jul 2019 11:33:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hmzEJ-0003Vf-BO
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 11:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uzDHUPzVm3lWFiU+icS7gA+P9mgxgrBzJHn1vb/IXTE=; b=hihLN+1u8gHoVXU9aG9gF6zhBb
 ukq6RFTJFYKH5Sbh8okxBTdGANH4ORRvTbwfd1wDZiA4uizLiLkgp/4W9FiNTxLTaGe7MbJyrNXCa
 of6PBL7plNZz9DLfKwhuVtDPsCMeDnBj7QFDdtgaOMw4hzcfIIVRZ9TcVc3QNEWSUiSw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uzDHUPzVm3lWFiU+icS7gA+P9mgxgrBzJHn1vb/IXTE=; b=hHWNGjqNzBKYsdoUhhJbBDNi/V
 gUaTmoumlybHViSdKf2TGL/FJDcYefSsrn6pP4EIUh7gbg8NcXHEt7pKjm7/5WtR9cb/Q+R2wdseM
 I+8j5oRkp9JlhH7eCOpFMmagQv3fkbml11jT1U0Jq465fpugz70XnCbLr+ghIIfvJHig=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hmzEG-001u7z-RX
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 11:33:15 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 1FF2CC009; Mon, 15 Jul 2019 13:33:06 +0200 (CEST)
Date: Mon, 15 Jul 2019 13:32:51 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190715113251.GA28601@nautica>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hmzEG-001u7z-RX
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Mon, Jul 15, 2019:
> First, thank you for developing and maintaining 9P FS in Linux!

Thanks for the report

> Our out-of-tree kernel doesn't modify the FS part.
> 
> The last time we run some tests with KASAN was with our kernel sync with
> the upstream v4.14.127 version.
> 
> $ git log --oneline v4.14.127..v4.14.133 -- fs/9p net/9p include/net/9p/
> include/uapi/linux/virtio_9p.h include/trace/events/9p.h
> d4fe45ddfe61 net/9p: include trans_common.h to fix missing prototype
> warning.
> 84693d060965 9p: p9dirent_read: check network-provided name length
> 9e69c673fe07 9p/rdma: remove useless check in cm_event_handler
> c9928b45845b 9p: acl: fix uninitialized iattr access
> ce3220827dcc 9p/rdma: do not disconnect on down_interruptible EAGAIN
> 26b3b1dbb395 9p/xen: fix check for xenbus_read error in front_probe
> 
> These new commits have been added by Sasha (in cc) in v4.14.132, see:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/commit/queue-4.14?id=7e653e91a19a5667b8904097e8fc16462fb3a0f3
> 
> I saw some similar bug reports from syzbot and others from last year. Is
> it possible that this issue has already been fixed in master but not
> backported to v4.14 tree yet?

I don't think I've seen this specifically, would be grateful if you
could take the time to test on master just to make sure first

I hardly ever use overlayfs and the bug seems related so it could also
be a change there in that range (not that 9p isn't to blame as well) -
like some lock change in overlayfs which revealed some race underneath.


> [   16.464577]
> ==================================================================
> [   16.465448] BUG: KASAN: slab-out-of-bounds in strscpy+0x49d/0x590
> [   16.466171] Read of size 8 at addr ffff88803525f788 by task confd/330
> [   16.467114]
> [   16.467313] CPU: 0 PID: 330 Comm: confd Not tainted 4.14.133-mptcp+ #2
> [   16.468071] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
> BIOS 0.5.1 01/01/2011
> [   16.469016] Call Trace:
> [   16.469318]  dump_stack+0xa6/0x12e
> [   16.469721]  ? _atomic_dec_and_lock+0x1b2/0x1b2
> [   16.470255]  ? radix_tree_lookup+0x10/0x10
> [   16.470764]  ? strscpy+0x49d/0x590
> [   16.471299]  print_address_description+0xa1/0x330
> [   16.471918]  ? strscpy+0x49d/0x590
> [   16.472321]  kasan_report+0x23f/0x350
> [   16.472751]  strscpy+0x49d/0x590
> [   16.473135]  ? strncpy+0xd0/0xd0
> [   16.473518]  p9dirent_read+0x26b/0x510
> [   16.473977]  ? unwind_next_frame+0xc97/0x1eb0
> [   16.474481]  ? p9stat_read+0x440/0x440
> [   16.474945]  ? entry_SYSCALL_64_after_hwframe+0x3d/0xa2
> [   16.475543]  ? rcutorture_record_progress+0x10/0x10
> [   16.476123]  ? kernel_text_address+0x111/0x120
> [   16.476656]  ? __kernel_text_address+0xe/0x30
> [   16.477273]  v9fs_dir_readdir_dotl+0x340/0x5b0
> [   16.477900]  ? kasan_slab_free+0x12d/0x1a0
> [   16.478377]  ? v9fs_dir_readdir+0x810/0x810
> [   16.478887]  ? new_slab+0x29f/0x3b0
> [   16.479298]  ? iterate_fd+0x300/0x300
> [   16.479728]  ? do_filp_open+0x24a/0x3b0
> [   16.480177]  ? SyS_getcwd+0x3b7/0x9f0
> [   16.480626]  ? may_open_dev+0xc0/0xc0
> [   16.481056]  ? get_unused_fd_flags+0x180/0x180
> [   16.481643]  ? __up.isra.0+0x230/0x230
> [   16.482195]  ? __fdget_pos+0x105/0x170
> [   16.482658]  ? iterate_dir+0x171/0x5b0
> [   16.483097]  iterate_dir+0x171/0x5b0
> [   16.483518]  SyS_getdents+0x1dc/0x3a0
> [   16.483968]  ? SyS_old_readdir+0x200/0x200
> [   16.484444]  ? SyS_write+0x1c0/0x270
> [   16.484875]  ? fillonedir+0x1a0/0x1a0
> [   16.485315]  ? SyS_old_readdir+0x200/0x200
> [   16.485791]  ? do_syscall_64+0x259/0xa90
> [   16.486258]  do_syscall_64+0x259/0xa90
> [   16.486715]  ? syscall_return_slowpath+0x340/0x340
> [   16.487320]  ? do_page_fault+0x11f/0x400
> [   16.487849]  ? __do_page_fault+0xe00/0xe00
> [   16.488305]  ? __hrtick_start+0x2f0/0x2f0
> [   16.488752]  ? __switch_to_asm+0x31/0x60
> [   16.489189]  ? __switch_to_asm+0x31/0x60
> [   16.489626]  ? __switch_to_asm+0x25/0x60
> [   16.490063]  ? __switch_to_asm+0x31/0x60
> [   16.490500]  ? __switch_to_asm+0x31/0x60
> [   16.490940]  ? __switch_to_asm+0x31/0x60
> [   16.491377]  ? __switch_to_asm+0x25/0x60
> [   16.491820]  ? __switch_to_asm+0x31/0x60
> [   16.492305]  ? __switch_to_asm+0x31/0x60
> [   16.492769]  ? __switch_to_asm+0x31/0x60
> [   16.493306]  ? __switch_to_asm+0x31/0x60
> [   16.493917]  ? __switch_to_asm+0x31/0x60
> [   16.494402]  ? __switch_to_asm+0x25/0x60
> [   16.494859]  ? __switch_to_asm+0x31/0x60
> [   16.495344]  ? __switch_to_asm+0x31/0x60
> [   16.495798]  ? __switch_to_asm+0x31/0x60
> [   16.496283]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
> [   16.496885] RIP: 0033:0x7f0bd5b26855
> [   16.497313] RSP: 002b:00007f0bd69d4d60 EFLAGS: 00000246 ORIG_RAX:
> 000000000000004e
> [   16.498387] RAX: ffffffffffffffda RBX: 00007f0bb800a910 RCX:
> 00007f0bd5b26855
> [   16.499221] RDX: 0000000000008000 RSI: 00007f0bb800a910 RDI:
> 000000000000002c
> [   16.500102] RBP: 00007f0bb800a910 R08: 00007f0bd69d4e10 R09:
> 0000000000008030
> [   16.500942] R10: 0000000000000076 R11: 0000000000000246 R12:
> ffffffffffffff70
> [   16.501780] R13: 0000000000000002 R14: 00007f0bb80008d0 R15:
> 000000000129cb44
> [   16.502641]
> [   16.502819] Allocated by task 330:
> [   16.503230]  kasan_kmalloc+0xe4/0x170
> [   16.503799]  __kmalloc+0xdd/0x1c0
> [   16.504259]  p9pdu_readf+0xbb8/0x2940
> [   16.504707]  p9dirent_read+0x174/0x510
> [   16.505154]  v9fs_dir_readdir_dotl+0x340/0x5b0
> [   16.505694]  iterate_dir+0x171/0x5b0
> [   16.506122]  SyS_getdents+0x1dc/0x3a0
> [   16.506573]  do_syscall_64+0x259/0xa90
> [   16.507031]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
> [   16.507633]
> [   16.507804] Freed by task 322:
> [   16.508178]  kasan_slab_free+0xac/0x1a0
> [   16.508741]  kfree+0xcd/0x1e0
> [   16.509194]  p9stat_free+0x32/0x200
> [   16.509633]  v9fs_vfs_get_link+0x173/0x230
> [   16.510118]  ovl_get_link+0x52/0x80
> [   16.510538]  trailing_symlink+0x42c/0x5f0
> [   16.511034]  path_lookupat+0x1b4/0xc30
> [   16.511481]  filename_lookup+0x237/0x470
> [   16.511955]  vfs_statx+0xb0/0x120
> [   16.512358]  SyS_newstat+0x70/0xc0
> [   16.512759]  do_syscall_64+0x259/0xa90
> [   16.513205]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2

There are two things bugging me there:
 - why does the trace speak of v9fs_vfs_get_link and not
v9fs_vfs_get_link_dotl , from what I'm seeing of the code the
v9fs_symlink_inode_operations_dotl is properly assigned so I don't see
why you'd have mixed dotl and non-dotl calls. This might be a hint to
some other problem.
 - KASAN complains about a read in the p9dirent_read's strscpy, so
'nameptr' - the "allocated by task 330" stack corresponds as p9pdu_readf
does allocate 'nameptr', but it's a 100% local pointer that's never
stored anywhere else and shouldn't be free-able by p9stat_free which
could free only free something from p9pdu_readf's 'S', not present in
"Qqbs".
(the corresponding 'S' in v9fs_vfs_get_link is p9_client_stat, but even
if we're looking at the same fid I really do not see how it could get
the same pointer as nameptr here)

I'd need to look deeper into a crash dump to understand this better,
will try to reproduce on a fresh 4.14.133 with your mount command... Do
you have any idea what kind of access pattern 'confd' does on top of
your mount?

> We are running tests in different KVMs and using 9P to have a shared
> file system between VMs and the host:
> 
>     mount -t 9p outshare  "${MOUNT_DIR}/overlay/out" -o
> trans=virtio,version=9p2000.L,access=0,rw

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

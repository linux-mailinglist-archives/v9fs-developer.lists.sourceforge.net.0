Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D347573302
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 17:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqJTS-0004g3-59; Wed, 24 Jul 2019 15:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hqJTQ-0004fu-DT
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J0trUeyPc49XD8ZWUj2SjrBxFyuKklM2GssQxg/+of0=; b=Mo5OakedXsZb+wZRcQ4vwoD9om
 xYikq+XJIm10yctxuf0y36+nYFodmhubhTBfPXM3z1SuOXoYncavNnwnrwq1Zv3cr7tbqZVzWKOcT
 3oDVwKYJahE40lb4EzjRexieLKxonyiXLOoxbD6dsJrJjeVVG1uNhSx2uoqQAYoXrMsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J0trUeyPc49XD8ZWUj2SjrBxFyuKklM2GssQxg/+of0=; b=HxKYtbwu/8nB1KUyFXQH+DusOe
 8n07Me+IQ4PtDLjL00hXnrUqNnz8CD6mvhEZnvdETxYCJ4f0Tk/Ycx77tAjK2/jNno29vryu/8gbb
 Bi23papCi/UE4bHMw29sNK/FUa4DVUb0lUt0BKuIp6MGEgdMl5SFE5H0XDOeW22GY27s=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqJTM-00DvYn-4r
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:46:36 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 3B50CC009; Wed, 24 Jul 2019 17:46:25 +0200 (CEST)
Date: Wed, 24 Jul 2019 17:46:10 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190724154610.GA11211@nautica>
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
 <20190718155744.GA31023@nautica>
 <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hqJTM-00DvYn-4r
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

Matthieu Baerts wrote on Wed, Jul 24, 2019:
> So I looked a bit at the code of strscpy() on master and I found that
> it now uses read_word_at_a_time() which has some special instructions
> for KASAN.

Woah. I did not expect strscpy itself to be the culprit, good job
finding it!

> I then cherry-picked these 3 patches and I no longer have the issue!
> 
> bdb5ac801af3 (compiler.h, kasan: Avoid duplicating __read_once_size_nocheck())
> 7f1e541fc8d5 (compiler.h: Add read_word_at_a_time() function.)
> 1a3241ff10d0 (lib/strscpy: Shut up KASAN false-positives in strscpy())
> 
> I will ask to also backport these 3 patches to -stable. I will send
> that with an explanation ASAP!

That would be great, thanks.

>> If you do not have interactive access, can you just add a print message
>> in the non-dotl function? I suggested perf because that can be used to
>> probe around and get full backtraces easily, but the first thing I'd
>> like to check is if v9fs_vfs_get_link really gets called or if kasan
>> prints the wrong function for some reason (I don't see why it would, but
>> this function really should never be called for you).
> 
> It seems this function is indeed called:
> 
> [    1.828201] matttbe: should not come here
> [    1.832599] ------------[ cut here ]------------
> [    1.833525] WARNING: CPU: 0 PID: 1 at
> /kernelspace/fs/9p/vfs_inode.c:1253 v9fs_vfs_get_link+0x45/0x23f
> [    1.833525] Modules linked in:
> [    1.833525] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.14.133-mptcp+ #57
> [    1.833525] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
> BIOS 0.5.1 01/01/2011
> [    1.833525] task: ffff888035dd8000 task.stack: ffff888035de0000
> [    1.833525] RIP: 0010:v9fs_vfs_get_link+0x45/0x23f
> [    1.833525] RSP: 0018:ffff888035def370 EFLAGS: 00010282
> [    1.833525] RAX: 000000000000001d RBX: ffff888035ab1df0 RCX: 0000000000000000
> [    1.833525] RDX: 000000000000001d RSI: 0000000000000016 RDI: ffffed1006bbde65
> [    1.833525] RBP: ffff888035a8ad00 R08: 3a6562747474616d R09: 20646c756f687320
> [    1.833525] R10: 6320746f6e20646c R11: dffffc0000000000 R12: ffff888035def958
> [    1.833525] R13: 0000000000000000 R14: ffff888035def958 R15: ffff888035def8f0
> [    1.833525] FS:  0000000000000000(0000) GS:ffff888036200000(0000)
> knlGS:0000000000000000
> [    1.833525] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    1.833525] CR2: ffffffff82c9a5e0 CR3: 0000000003016000 CR4: 00000000000006b0
> [    1.833525] Call Trace:
> [    1.833525]  ? v9fs_vfs_link+0x1cc/0x1cc
> [    1.833525]  link_path_walk+0xbe3/0x1430
> [    1.833525]  ? kasan_kmalloc+0x76/0xc0
> [    1.833525]  ? walk_component+0x11a0/0x11a0
> [    1.833525]  ? get_empty_filp+0x263/0x450
> [    1.833525]  ? xattr_resolve_name+0x229/0x4e0
> [    1.833525]  ? __pte_alloc_kernel+0x2c0/0x2c0
> [    1.833525]  ? __pte_alloc_kernel+0x2c0/0x2c0
> [    1.833525]  ? deref_stack_reg+0xa7/0x110
> [    1.833525]  path_openat+0x1e7/0x4d00
> [    1.833525]  ? unwind_next_frame+0x137f/0x1dc0
> [    1.833525]  ? __save_stack_trace+0x4f/0xd0
> [    1.833525]  ? deref_stack_reg+0xa7/0x110
> [    1.833525]  ? path_mountpoint+0xb40/0xb40
> [    1.833525]  ? ret_from_fork+0x34/0x40
> [    1.833525]  ? unwind_next_frame+0x2d5/0x1dc0
> [    1.833525]  ? deref_stack_reg+0x110/0x110
> [    1.833525]  ? _raw_spin_trylock+0x110/0x110
> [    1.833525]  ? __save_stack_trace+0x73/0xd0
> [    1.833525]  ? depot_save_stack+0x1f6/0x45a
> [    1.833525]  ? getname_kernel+0x4d/0x2a0
> [    1.833525]  ? kasan_kmalloc.part.1+0xa9/0xd0
> [    1.833525]  ? kasan_kmalloc.part.1+0x4f/0xd0
> [    1.833525]  ? kmem_cache_alloc+0x94/0x160
> [    1.833525]  ? getname_kernel+0x4d/0x2a0
> [    1.833525]  ? open_exec+0xc/0x40
> [    1.833525]  ? load_script+0x5aa/0x7a0
> [    1.833525]  ? search_binary_handler.part.7+0xdb/0x3c0
> [    1.833525]  ? do_execveat_common+0x1033/0x1d00
> [    1.833525]  ? kernel_init+0x8f/0x114
> [    1.833525]  do_filp_open+0x22c/0x350
> [    1.833525]  ? may_open_dev+0xc0/0xc0
> [    1.833525]  ? put_arg_page+0x100/0x100
> [    1.833525]  ? do_open_execat+0x4e0/0x4e0
> [    1.833525]  do_open_execat+0x184/0x4e0
> [    1.833525]  ? __register_binfmt+0x2f0/0x2f0
> [    1.833525]  ? memcpy+0x34/0x50
> [    1.833525]  open_exec+0x2c/0x40
> [    1.833525]  load_script+0x5aa/0x7a0
> [    1.833525]  ? locks_free_lock_context.cold.20+0xf4/0xf4
> [    1.833525]  ? __inode_permission+0x9e/0x300
> [    1.833525]  ? generic_permission+0x350/0x350
> [    1.833525]  ? count.constprop.10+0x13b/0x190
> [    1.833525]  search_binary_handler.part.7+0xdb/0x3c0
> [    1.833525]  do_execveat_common+0x1033/0x1d00
> [    1.833525]  ? prepare_bprm_creds+0x100/0x100
> [    1.833525]  ? path_openat+0x4c50/0x4d00
> [    1.833525]  ? kasan_kmalloc.part.1+0xa9/0xd0
> [    1.833525]  ? kasan_kmalloc.part.1+0x4f/0xd0
> [    1.833525]  ? kmem_cache_alloc+0x94/0x160
> [    1.833525]  ? getname_kernel+0x4d/0x2a0
> [    1.833525]  ? run_init_process+0x11/0x27
> [    1.833525]  ? kernel_init+0x8f/0x114
> [    1.833525]  ? ret_from_fork+0x35/0x40
> [    1.833525]  ? vprintk_func+0x8d/0x1a6
> [    1.833525]  ? __printk_safe_exit+0x10/0x10
> [    1.833525]  ? vprintk_func+0x8d/0x1a6
> [    1.833525]  ? __printk_safe_exit+0x10/0x10
> [    1.833525]  ? async_page_fault+0x25/0x50
> [    1.833525]  ? printk+0x96/0xb0
> [    1.833525]  ? show_regs_print_info+0x58/0x58
> [    1.833525]  ? kasan_unpoison_shadow+0x30/0x40
> [    1.833525]  ? memcpy+0x34/0x50
> [    1.833525]  ? getname_kernel+0xe4/0x2a0
> [    1.833525]  ? rest_init+0xc1/0xc1
> [    1.833525]  kernel_init+0x8f/0x114
> [    1.833525]  ? rest_init+0xc1/0xc1
> [    1.833525]  ret_from_fork+0x35/0x40
> [    1.833525] Code: 89 fd 48 c7 c7 00 ec cb 82 53 e8 23 bf ae ff 80
> 3d b7 50 bd 01 00 75 15 48 c7 c7 60 ec cb 82 c6 05 a7 50 bd 01 01 e8
> 07 bf ae ff <0f> 0b 48 c7 c3 f6 ff ff ff 48 85 ed 0f 84 de 01 00 00 48
> 8d 7d
> [    1.833525] ---[ end trace 7d99a2b8ac332f35 ]---
> 
> (the function is also called a lot of time after)
> 
> Here is the printk I added:
> 
> ----------
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index e88cb25176dc..9fb5c7d0abcd 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -1249,6 +1249,9 @@ static const char *v9fs_vfs_get_link(struct
> dentry *dentry,
>         struct p9_wstat *st;
>         char *res;
> 
> +       pr_warn("matttbe: should not be here; %s:%d\n", __func__, __LINE__);
> +       WARN_ONCE(1, "matttbe: should not come here\n");
> +
>         if (!dentry)
>                 return ERR_PTR(-ECHILD);
> 
> ----------
> 
> > If it is called, I will give you a few more things to print in there - I
> > need to check how to get access to the v9ses and friends from this
> > context (they should be attached to the inode so it should be accessible
> > but I cannot give precise instructions from memory)
> 
> I can still do that if needed if you think it is not normal.

That stack trace had kernel_init which made me look at your rootflags
again, and this is actually normal: the root mount is 9p2000.u which
will use this function, while the outshare mount is 9p2000.L, so all is
working as expected here as well.

I just forgot there were two different mounts involved and didn't expect
them to use different mount options (and much less to interact with each
other at this level), but since you found the culprit we don't need to
look that way anymore.

> At the end, it seems it was due to KASAN and not 9p code!
> Thank you very much for your support.

Thank you as well for taking the time to debug it after reporting! :)

Have a good afternoon/evening,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

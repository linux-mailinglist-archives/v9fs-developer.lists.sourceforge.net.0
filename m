Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F6B73313
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 17:52:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqJZ0-0007HF-BD; Wed, 24 Jul 2019 15:52:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hqJYy-0007H5-Dz
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:52:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=957Wqnu2AEioZHXeHKbQnxdSy6k2ln0SXbBb9O0Y3XU=; b=Dl9eck1zNJ46siOvIo5benZzcO
 2jrTHANqvKMwcJyKX9wFW559Yv+vaTe5PBFqbJSWtBrT6d31haxuLVA1jD/n5x+AM4re45bFYK8Tm
 XcM06DqqNr6vaIU+uasHjp5MlYewurn7/kJS8zfxMHDhC8CbCPrPwBNf92HCS5WHzjXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=957Wqnu2AEioZHXeHKbQnxdSy6k2ln0SXbBb9O0Y3XU=; b=ZkV9zlyKZo0byX3l+49CcanNKn
 0StQCF977/RzWfguzYnV+FhP2qnmikaA55KbmY56YNo9UaiDMO6iLIpk2k/Pvjl2BF+Z9HTHd8bO/
 v8ipHAZCAMFKeViNC0YVtLQTKmvCKGdmSjabbz0lYSLCUkW05HfgSEH2mcKijzbXKE1Q=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqJYw-00EJwD-Dr
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 15:52:20 +0000
Received: by mail-lf1-f46.google.com with SMTP id u10so32292922lfm.12
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 08:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=957Wqnu2AEioZHXeHKbQnxdSy6k2ln0SXbBb9O0Y3XU=;
 b=znQ31UDT4F77KGlUhD+/IbJ+dE401oOlKMr5mwBmMoX9ly9vRNy/8elVFuDYZsRTok
 iqxgZwIL0pEowTOChCcWW3QGFySJDn5L1O1OSCspyVCncOgXvDEGE7KVdVc38ajswGeR
 DSJwEfhoJUA0at/ZRk76ZkFrhZ2NsAr7OXN6AC8Bmc70agMOWN1UIBIRZBeVyHb/nQxu
 cggmgj6JbrZsmRR4JSgaMSOM82wgYd9n4HU1euSSKIjwM+7jE/B0gz7vjjE9HD/8qisY
 xMUrurnVlAHEaKzVVmTb31RHBMNz8vytXBb5L+RjhCV2ZuUXJFhCD3XOwR/4pY8yGb96
 nJ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=957Wqnu2AEioZHXeHKbQnxdSy6k2ln0SXbBb9O0Y3XU=;
 b=Us/fR4icOuTWbF9/DmPHW73+MD0BUEpmmWOa319ssrtCOMun9ativFb0hHlxUPJC2p
 4eP8FYezjYhNzG9F/3AjcS3YmHPDY2IrkBpG+EjQUio4+H8SXfiofQSirl7bWR6c7bgy
 or6MfIE6DryACuRaO+1s6AdgyDASw/CGwe0o3HvavBkXg1GjRA0DZ2w2aa0Qf6uU3/7F
 9YGy+ZQ9D2xBYitx6lWQ+7mAHZdLzaX0WHdoBfX0fgdBxq3hVmoVSgQQv8sd3AWwAolT
 ea4EjkR4OXQkt2/uvaVlGsAhAJgCV/ZcL38XKx/M6GFDHA1duX+InRJc+SX8CXuBkpe7
 os9Q==
X-Gm-Message-State: APjAAAWY0ZIKBLNg2sjQpKm9+P34DtcAXdTK7bnT1jlOgYgP7s+s787R
 oKR94OY9QjWl6q6i2VndK6vi9onVxlYw31ZS2d+vMBnj7IKfqQ==
X-Google-Smtp-Source: APXvYqzFMnSP4YlGkX+j4lqT4dWeAWVEioPjUdD7LB8m9QYVpQkrahlyBoIHrNDit0YtQ4C8iJOEPNURcNFDgvIpERA=
X-Received: by 2002:ac2:59c6:: with SMTP id x6mr3575077lfn.169.1563981942567; 
 Wed, 24 Jul 2019 08:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
 <20190718155744.GA31023@nautica>
In-Reply-To: <20190718155744.GA31023@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Date: Wed, 24 Jul 2019 17:25:31 +0200
Message-ID: <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.46 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqJYw-00EJwD-Dr
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

Hi Dominique,

I don't forget this, sorry for the delay.

On Thu, Jul 18, 2019 at 5:57 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Matthieu Baerts wrote on Thu, Jul 18, 2019:
> > Could it be possible that with the new patch, less characters are copied
> > and '\0' is not added anywhere in dirent->d_name? And it was working
> > before because one byte was set to 0 just after? But now when d_name is
> > read, we read far too much. I don't know what else it could be when
> > looking at 84693d06096 ("9p: p9dirent_read: check network-provided name
> > length").
>
> If the copy is not complete, strscpy will return -E2BIG and an error
> should show up on your dmesg with debug=1 so that isn't likely.

Thank you for this reply. I now read strscpy() doc in details and I
also don't see why it would cause issues.

> > Do you think it could come from another patch? I could re-do a "git
> > bisect"-like but continue after the first reverted patch gives a green
> > light.
>
> The only thing that comes up right now is that this patch could change
> the timing a bit and make it happen but it really is something else; if
> you have time to run another bisect we might find something but I would
> not spend time specifically on it if you cannot just leave it running on
> its own.

I just ran the test several times after having reverted 84693d06096
("9p: p9dirent_read: check network-provided name length") and I never
had the KASAN warning. It seems that's the only patch causing the
issue.

I also tried this simple patch and I have no more KASAN warnings, even
after a few runs:

------------
diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 1885403c9a3e..4d2683e3d5a2 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -625,14 +625,15 @@ int p9dirent_read(struct p9_client *clnt, char
*buf, int len,
                return ret;
        }

-       ret = strscpy(dirent->d_name, nameptr, sizeof(dirent->d_name));
-       if (ret < 0) {
+       if (strnlen(nameptr, sizeof(dirent->d_name)) >=
sizeof(dirent->d_name)) {
                p9_debug(P9_DEBUG_ERROR,
                         "On the wire dirent name too long: %s\n",
                         nameptr);
                kfree(nameptr);
-               return ret;
+               return -E2BIG;
        }
+
+       strcpy(dirent->d_name, nameptr);
        kfree(nameptr);

        return fake_pdu.offset;
------------

So I looked a bit at the code of strscpy() on master and I found that
it now uses read_word_at_a_time() which has some special instructions
for KASAN.

I then cherry-picked these 3 patches and I no longer have the issue!

bdb5ac801af3 (compiler.h, kasan: Avoid duplicating __read_once_size_nocheck())
7f1e541fc8d5 (compiler.h: Add read_word_at_a_time() function.)
1a3241ff10d0 (lib/strscpy: Shut up KASAN false-positives in strscpy())

I will ask to also backport these 3 patches to -stable. I will send
that with an explanation ASAP!

> > > If you have interactive access to the vm, could you try something
> > > similar to see if v9fs_vfs_get_link also gets hit for you?
> >
> > The interactive access is currently disabled on this setup but I can
> > enable it and see what I can do! I hope I will be able to do these
> > manipulations soon.
>
> If you do not have interactive access, can you just add a print message
> in the non-dotl function? I suggested perf because that can be used to
> probe around and get full backtraces easily, but the first thing I'd
> like to check is if v9fs_vfs_get_link really gets called or if kasan
> prints the wrong function for some reason (I don't see why it would, but
> this function really should never be called for you).

It seems this function is indeed called:

[    1.828201] matttbe: should not come here
[    1.832599] ------------[ cut here ]------------
[    1.833525] WARNING: CPU: 0 PID: 1 at
/kernelspace/fs/9p/vfs_inode.c:1253 v9fs_vfs_get_link+0x45/0x23f
[    1.833525] Modules linked in:
[    1.833525] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.14.133-mptcp+ #57
[    1.833525] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 0.5.1 01/01/2011
[    1.833525] task: ffff888035dd8000 task.stack: ffff888035de0000
[    1.833525] RIP: 0010:v9fs_vfs_get_link+0x45/0x23f
[    1.833525] RSP: 0018:ffff888035def370 EFLAGS: 00010282
[    1.833525] RAX: 000000000000001d RBX: ffff888035ab1df0 RCX: 0000000000000000
[    1.833525] RDX: 000000000000001d RSI: 0000000000000016 RDI: ffffed1006bbde65
[    1.833525] RBP: ffff888035a8ad00 R08: 3a6562747474616d R09: 20646c756f687320
[    1.833525] R10: 6320746f6e20646c R11: dffffc0000000000 R12: ffff888035def958
[    1.833525] R13: 0000000000000000 R14: ffff888035def958 R15: ffff888035def8f0
[    1.833525] FS:  0000000000000000(0000) GS:ffff888036200000(0000)
knlGS:0000000000000000
[    1.833525] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    1.833525] CR2: ffffffff82c9a5e0 CR3: 0000000003016000 CR4: 00000000000006b0
[    1.833525] Call Trace:
[    1.833525]  ? v9fs_vfs_link+0x1cc/0x1cc
[    1.833525]  link_path_walk+0xbe3/0x1430
[    1.833525]  ? kasan_kmalloc+0x76/0xc0
[    1.833525]  ? walk_component+0x11a0/0x11a0
[    1.833525]  ? get_empty_filp+0x263/0x450
[    1.833525]  ? xattr_resolve_name+0x229/0x4e0
[    1.833525]  ? __pte_alloc_kernel+0x2c0/0x2c0
[    1.833525]  ? __pte_alloc_kernel+0x2c0/0x2c0
[    1.833525]  ? deref_stack_reg+0xa7/0x110
[    1.833525]  path_openat+0x1e7/0x4d00
[    1.833525]  ? unwind_next_frame+0x137f/0x1dc0
[    1.833525]  ? __save_stack_trace+0x4f/0xd0
[    1.833525]  ? deref_stack_reg+0xa7/0x110
[    1.833525]  ? path_mountpoint+0xb40/0xb40
[    1.833525]  ? ret_from_fork+0x34/0x40
[    1.833525]  ? unwind_next_frame+0x2d5/0x1dc0
[    1.833525]  ? deref_stack_reg+0x110/0x110
[    1.833525]  ? _raw_spin_trylock+0x110/0x110
[    1.833525]  ? __save_stack_trace+0x73/0xd0
[    1.833525]  ? depot_save_stack+0x1f6/0x45a
[    1.833525]  ? getname_kernel+0x4d/0x2a0
[    1.833525]  ? kasan_kmalloc.part.1+0xa9/0xd0
[    1.833525]  ? kasan_kmalloc.part.1+0x4f/0xd0
[    1.833525]  ? kmem_cache_alloc+0x94/0x160
[    1.833525]  ? getname_kernel+0x4d/0x2a0
[    1.833525]  ? open_exec+0xc/0x40
[    1.833525]  ? load_script+0x5aa/0x7a0
[    1.833525]  ? search_binary_handler.part.7+0xdb/0x3c0
[    1.833525]  ? do_execveat_common+0x1033/0x1d00
[    1.833525]  ? kernel_init+0x8f/0x114
[    1.833525]  do_filp_open+0x22c/0x350
[    1.833525]  ? may_open_dev+0xc0/0xc0
[    1.833525]  ? put_arg_page+0x100/0x100
[    1.833525]  ? do_open_execat+0x4e0/0x4e0
[    1.833525]  do_open_execat+0x184/0x4e0
[    1.833525]  ? __register_binfmt+0x2f0/0x2f0
[    1.833525]  ? memcpy+0x34/0x50
[    1.833525]  open_exec+0x2c/0x40
[    1.833525]  load_script+0x5aa/0x7a0
[    1.833525]  ? locks_free_lock_context.cold.20+0xf4/0xf4
[    1.833525]  ? __inode_permission+0x9e/0x300
[    1.833525]  ? generic_permission+0x350/0x350
[    1.833525]  ? count.constprop.10+0x13b/0x190
[    1.833525]  search_binary_handler.part.7+0xdb/0x3c0
[    1.833525]  do_execveat_common+0x1033/0x1d00
[    1.833525]  ? prepare_bprm_creds+0x100/0x100
[    1.833525]  ? path_openat+0x4c50/0x4d00
[    1.833525]  ? kasan_kmalloc.part.1+0xa9/0xd0
[    1.833525]  ? kasan_kmalloc.part.1+0x4f/0xd0
[    1.833525]  ? kmem_cache_alloc+0x94/0x160
[    1.833525]  ? getname_kernel+0x4d/0x2a0
[    1.833525]  ? run_init_process+0x11/0x27
[    1.833525]  ? kernel_init+0x8f/0x114
[    1.833525]  ? ret_from_fork+0x35/0x40
[    1.833525]  ? vprintk_func+0x8d/0x1a6
[    1.833525]  ? __printk_safe_exit+0x10/0x10
[    1.833525]  ? vprintk_func+0x8d/0x1a6
[    1.833525]  ? __printk_safe_exit+0x10/0x10
[    1.833525]  ? async_page_fault+0x25/0x50
[    1.833525]  ? printk+0x96/0xb0
[    1.833525]  ? show_regs_print_info+0x58/0x58
[    1.833525]  ? kasan_unpoison_shadow+0x30/0x40
[    1.833525]  ? memcpy+0x34/0x50
[    1.833525]  ? getname_kernel+0xe4/0x2a0
[    1.833525]  ? rest_init+0xc1/0xc1
[    1.833525]  kernel_init+0x8f/0x114
[    1.833525]  ? rest_init+0xc1/0xc1
[    1.833525]  ret_from_fork+0x35/0x40
[    1.833525] Code: 89 fd 48 c7 c7 00 ec cb 82 53 e8 23 bf ae ff 80
3d b7 50 bd 01 00 75 15 48 c7 c7 60 ec cb 82 c6 05 a7 50 bd 01 01 e8
07 bf ae ff <0f> 0b 48 c7 c3 f6 ff ff ff 48 85 ed 0f 84 de 01 00 00 48
8d 7d
[    1.833525] ---[ end trace 7d99a2b8ac332f35 ]---

(the function is also called a lot of time after)

Here is the printk I added:

----------
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index e88cb25176dc..9fb5c7d0abcd 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1249,6 +1249,9 @@ static const char *v9fs_vfs_get_link(struct
dentry *dentry,
        struct p9_wstat *st;
        char *res;

+       pr_warn("matttbe: should not be here; %s:%d\n", __func__, __LINE__);
+       WARN_ONCE(1, "matttbe: should not come here\n");
+
        if (!dentry)
                return ERR_PTR(-ECHILD);

----------

> If it is called, I will give you a few more things to print in there - I
> need to check how to get access to the v9ses and friends from this
> context (they should be attached to the inode so it should be accessible
> but I cannot give precise instructions from memory)

I can still do that if needed if you think it is not normal.

At the end, it seems it was due to KASAN and not 9p code!
Thank you very much for your support.

Cheers,
Matt
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

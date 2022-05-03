Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A2E518234
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 May 2022 12:22:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nlpfP-0005dK-12; Tue, 03 May 2022 10:22:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nlpfN-0005ci-1J
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 10:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dsiFLdFkeDL9R7Ag/77dSPiK8kJjT3gJ12I5PBBLWMk=; b=axyZ1Ht6ob9ULdu7dg7lx23AfG
 mzA4mWkPIi3QhDD7Y1x8H3wqY5ckflNdgjCf1EDB4fnI2kO0uwpc187c7+5D7kORG8kEhlQjKx9Dh
 IdOxvLFx8hi0Mb4x54oTJLQUjWlzPvLGBLxQUr+djcbyq2QM3afxFujsWoiaezIDZFlg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dsiFLdFkeDL9R7Ag/77dSPiK8kJjT3gJ12I5PBBLWMk=; b=ZZyeLKj+BuQgoug5AWsc8WXDhV
 h5J2dW2y2cp3PyfMDBjR7p5GQZmBNBTSt1gFzIpKHX4qFLSOspAsCIAv/cjXeEsoTTrxnci0FKzap
 xKZtU5pMkN+I8Vq5iHT4AnKUXXT4jtO8Ne838788poea+w9fIpAdMQe+4a94U7DZL6XQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlpfI-0007zn-Qi
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 10:22:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3C948C020; Tue,  3 May 2022 12:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1651573307; bh=dsiFLdFkeDL9R7Ag/77dSPiK8kJjT3gJ12I5PBBLWMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mFQkW6uZqX0RIsVpCmxgtFaUBLIe/wq7Bxpf8DXliUeePzWc3mMO1f4YxrhArGXFN
 ATtI2HtMfiJNISQAy0UMZV+sIQWDrjFFC0VH1TAvPSpvpzUEZDDashpFXTrtnZYY0a
 qvXrwQW8sE+/UNt4yQ8in2q8loGdi1Z6jzd45UyJ2GW6RNMEnvi9y18TyHgjSaCpWV
 ju0q7OA4zXoQTGfcxQs3MWQHHKutjW+Visb89A1jZ3lmgJ1DoaPtxhLaAd94pGllx4
 og6oQBGu4oq1LKI9jrMn2vkVyK4KLQj+CUfYQJ2Uxj044xnOeYQJbQK8LZ8JrO5vvN
 Y/ch8TWqJlZxg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4D1AAC01A;
 Tue,  3 May 2022 12:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1651573305; bh=dsiFLdFkeDL9R7Ag/77dSPiK8kJjT3gJ12I5PBBLWMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WjYR2HkYno4RqtWouAgZjnwfO53ln561f/qJOCTV8qucrvXcGNvatLLjcmqN1F8jn
 WZQAnp8lROzBTVR/BQrN6rjcZ0HaBBTGMFxPGBKx44ZDQZCmRwRLAvoYgGvtYhDsa0
 +vlabBqj+Xb1oelf6JaPbImmChLqGkKUVz0gNPhvBykA9nyAzPJMvdWIsA33ViBCQC
 QnGkmJfHYDZUyskqwy2wBEKM2qNuJSSww4X59nJeR7chXaGN64yGg0YXYN3wOpHdXF
 p5HLSgg8N1PnirV1BPLNF2mmBY378T9TTl2WValg9GC3Q5F8fFDeEJNcgWQ8HFDtSa
 M+nJpPvqm+gCA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 861edad9;
 Tue, 3 May 2022 10:21:38 +0000 (UTC)
Date: Tue, 3 May 2022 19:21:23 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YnECI2+EAzgQExOn@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <1817268.LulUJvKFVv@silver>
 <3174158.1650895816@warthog.procyon.org.uk>
 <1817722.O6u07f4CCs@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1817722.O6u07f4CCs@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry for the delay. Christian Schoenebeck wrote on Tue, Apr
 26, 2022 at 05:38:30PM +0200: > On Montag, 25. April 2022 16:10:16 CEST David
 Howells wrote: > > There may be a quick and dirty workaround. I think the
 problem [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nlpfI-0007zn-Qi
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sorry for the delay.

Christian Schoenebeck wrote on Tue, Apr 26, 2022 at 05:38:30PM +0200:
> On Montag, 25. April 2022 16:10:16 CEST David Howells wrote:
> > There may be a quick and dirty workaround.  I think the problem is that
> > unless the O_APPEND read starts at the beginning of a page, netfs is going
> > to enforce a read.  Does the attached patch fix the problem?  (note that
> > it's untested)

It might work for this particular case (O_APPEND), but what about an
arbitrary pwrite or seek+write in the middle of a file?
e.g.

$ dd if=/dev/zero of=test bs=1M count=1
$ chmod 400 test
# drop cache or remound
$ dd if=/dev/urandom of=test bs=102 seek=2 count=1 conv=notrunc
dd: error writing 'test': Bad file descriptor


Silly question, how does that work on ceph or AFS? the read back
callback always works regardless of permission?

Basically I think we really only have two choices there:
 - make the readback call work regardless of open mode, e.g. make it use
the writeback fid if it wasn't, and make that writeback_fid all-able

Now I'm looking, v9fs_writeback_fid() calls
v9fs_fid_lookup_with_uid(GLOBAL_ROOT_UID) and opens with O_RDWR, so it
shoud be a root fid we can read regardles of file perm !

The more I think about it and the more I think that's the way to go and
probably how it used to work, I'll look into why this isn't working
(main fid used or writeback fid not root)


 - add some complex code to track the exact byte range that got updated
in some conditions e.g. WRONLY or read fails?
That'd still be useful depending on how the backend tracks file mode,
qemu as user with security_model=mapped-file keeps files 600 but with
passthrough or none qemu wouldn't be able to read the file regardless of
what we do on client...
Christian, if you still have an old kernel around did that use to work?


> Patch doesn't apply for me on master:

It applies on fscache-next
https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next

But on that branch with the patch (works fine without) I get another
problem just writing normally:
[   94.327094] ------------[ cut here ]------------
[   94.327809] WARNING: CPU: 0 PID: 93 at mm/page-writeback.c:2498 __folio_mark_dirty+0x397/0x510
[   94.329191] Modules linked in:
[   94.329491] CPU: 0 PID: 93 Comm: cat Not tainted 5.18.0-rc1+ #56
[   94.330195] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
[   94.331709] RIP: 0010:__folio_mark_dirty+0x397/0x510
[   94.332312] Code: 14 02 48 89 f8 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 14 01 00 00 44 8b 7b 5c 44 89 3c 24 4c 89 fd 49 63 d7 e9 4d fe ff ff <0f> 0b e9 c0 fc ff f0
[   94.335341] RSP: 0018:ffffc90000257ad0 EFLAGS: 00010046
[   94.336031] RAX: 4000000000000009 RBX: ffffea0001ffb080 RCX: ffffffff815144cc
[   94.336937] RDX: 1ffffd40003ff610 RSI: 0000000000000008 RDI: ffffea0001ffb080
[   94.337749] RBP: ffff8880056c4488 R08: 0000000000000000 R09: ffffea0001ffb087
[   94.338612] R10: fffff940003ff610 R11: 0000000000000001 R12: 0000000000000246
[   94.339551] R13: ffff8880056c4490 R14: 0000000000000001 R15: 0000000000000068
[   94.340487] FS:  00007f18dbc1eb80(0000) GS:ffff88806ca00000(0000) knlGS:0000000000000000
[   94.341558] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   94.342369] CR2: 00007f18dbbfd000 CR3: 000000000b5b4000 CR4: 00000000000006b0
[   94.343613] Call Trace:
[   94.343856]  <TASK>
[   94.344052]  filemap_dirty_folio+0x73/0xc0
[   94.344646]  v9fs_write_end+0x18f/0x300
[   94.345195]  generic_perform_write+0x2bd/0x4a0
[   94.345834]  ? __bpf_trace_file_check_and_advance_wb_err+0x10/0x10
[   94.346807]  ? discard_new_inode+0x100/0x100
[   94.347398]  ? generic_write_checks+0x1e8/0x360
[   94.347926]  __generic_file_write_iter+0x247/0x3d0
[   94.348420]  generic_file_write_iter+0xbe/0x1d0
[   94.348885]  new_sync_write+0x2f0/0x540
[   94.349250]  ? new_sync_read+0x530/0x530
[   94.349634]  vfs_write+0x517/0x7b0
[   94.349939]  ksys_write+0xed/0x1c0
[   94.350318]  ? __ia32_sys_read+0xb0/0xb0
[   94.350817]  do_syscall_64+0x43/0x90
[   94.351257]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   94.351955] RIP: 0033:0x7f18dbe0eea3
[   94.352438] Code: 54 ff ff 48 83 c4 58 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 75
[   94.355597] RSP: 002b:00007fffdf4661d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[   94.356520] RAX: ffffffffffffffda RBX: 0000000000000068 RCX: 00007f18dbe0eea3
[   94.357392] RDX: 0000000000000068 RSI: 00007f18dbbfd000 RDI: 0000000000000001
[   94.358287] RBP: 00007f18dbbfd000 R08: 00007f18dbbfc010 R09: 0000000000000000
[   94.359318] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000000001
[   94.360349] R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000020000
[   94.361295]  </TASK>
[   94.361462] ---[ end trace 0000000000000000 ]---

got it with cat but dd with bs >=2 also reproduces, the second write
fails with EBADF:

110   openat(AT_FDCWD, "bar", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
110   dup2(3, 1)                        = 1
110   close(3)                          = 0
110   execve("/run/current-system/sw/bin/cat", ["cat"], 0x12e1010 /* 10 vars */) = 0
110   read(0, "[   94.327094] ------------[ cut"..., 131072) = 52
110   write(1, "[   94.327094] ------------[ cut"..., 52) = 52
110   read(0, "[   94.327809] WARNING: CPU: 0 P"..., 131072) = 98
110   write(1, "[   94.327809] WARNING: CPU: 0 P"..., 98) = -1 EBADF (Bad file descriptor)

I'm sure that could be fixed, but as said above I don't think it's the
right approach.

> > Also, can you get the contents of /proc/fs/fscache/stats from after
> > reproducing the problem?
> 
> FS-Cache statistics

(He probably wanted to confirm the new trace he added got hit with the
workaround pattern, I didn't get that far as I couldn't compile my
reproducer on that fs...)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

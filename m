Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F169B9EF
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 13:16:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTM8J-0003zo-Ab;
	Sat, 18 Feb 2023 12:16:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTM8I-0003zi-MF
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 12:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FoF2Zm7d8YAbphcyvCEaxyy43ITxYOKPUDd4jdI+Ous=; b=E2eSbBelnA2tCgAIySRCD3/ySy
 8YHMz/RU7ftczLbmCBSBZzZOMDkPlELb2wNMHwTfiYtKrUwUssDDg8pcComTf+CFs7WcuTY6kfUYi
 dNAARo4t1KRfJCixbwS2PtcMWLx+9H9C7hmJn2Rw5+LNARFx+yNm6uisQrMOdNiwq7VM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FoF2Zm7d8YAbphcyvCEaxyy43ITxYOKPUDd4jdI+Ous=; b=Imif8Ul1dORW0Pm4k2rZ4oSWDb
 Vh2l4pSKc/FTB+gcsg5UIY4bdiV6tqodG7KS59ON6pLIlnGGNvaQumBluhTS9z6tKJqdprg7SEu4S
 cYezzHzfQedEhGoI+4SDG7MRsHjd2T+ayniAtRlomPZhCmlIGMdITQVZRbvu8SjevKPU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTM8G-008Wgo-QG for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 12:16:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 3085FC01E; Sat, 18 Feb 2023 13:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676722578; bh=FoF2Zm7d8YAbphcyvCEaxyy43ITxYOKPUDd4jdI+Ous=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1WUE4Ghb8VHhzD+OzBIf6tnqYqIY7SlE97UL62o5CVtWSdqh3BM2CRPecwYCiS2ny
 s9Jn8sogRV1Dlp19HCEFLK4uIA+xW2p3RugRqVlIEhJFSwy6cNjZIQUJ6soHQ1+tJL
 tszF18/ePbS767DVuWM1iO+/H5VvTp2nHolA2qnFgDqW4eRDJgf/1h5q2jnEP4Nabn
 y0tnfwJHyDHKIUe/7/jP21ulYbPBrYvVaq7UITi73CzC0nM955TLavTD046fmZxg5Y
 LtWi/lbtwAWAS+fQ9/h9x8bjQPYZDPUtuOHzvU47HeFO/XCU/WyhN3TacaZBfVaguM
 A+TC6rDIsrexw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E79D1C009;
 Sat, 18 Feb 2023 13:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676722577; bh=FoF2Zm7d8YAbphcyvCEaxyy43ITxYOKPUDd4jdI+Ous=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=27D/Ar/TqbcZIrQLmLJtnv09JF/TpTo8n+cPcv/ZqKW2Th86k3Fz0niScQgp9PxG1
 EsBaQIgmp4JHfSe/vkDWiLnHKP3iPtrSdJPsEcv+WG/se19YLrS/ATvjY+dhHJD/cI
 UOFSIY4s4gL6R6RaMniNcOnLls+xBdqL9pWh4y5cy2cJhPAz348YXwQgZbLHDqUiBO
 82hzrsD64YkB9LJ9aRJ6m0k/lanI323MzHE1jZ5JPjw2WXdNWnbzVkb3uYMcNUC2Il
 aCW8CMXx8L9P8vnsWEiFPLu/FDxHkCrlWio8b9J8gJ2zLK17DBN4UTejleiPa0M0td
 JT0jtW94aa//w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1e5767f3;
 Sat, 18 Feb 2023 12:15:48 +0000 (UTC)
Date: Sat, 18 Feb 2023 21:15:33 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/DBZSaAsRiNR2WV@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y/Ch8o/6HVS8Iyeh@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  asmadeus@codewreck.org wrote on Sat, Feb 18,
 2023 at 07:01:22PM
 +0900: > > diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c > > index
 5fc6a945bfff..797f717e1a91
 100644 > > --- a/fs/9p/vfs_super.c > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTM8G-008Wgo-QG
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

asmadeus@codewreck.org wrote on Sat, Feb 18, 2023 at 07:01:22PM +0900:
> > diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> > index 5fc6a945bfff..797f717e1a91 100644
> > --- a/fs/9p/vfs_super.c
> > +++ b/fs/9p/vfs_super.c
> 
> > @@ -323,16 +327,17 @@ static int v9fs_write_inode_dotl(struct inode *inode,
> >  	 */
> >  	v9inode = V9FS_I(inode);
> >  	p9_debug(P9_DEBUG_VFS, "%s: inode %p, writeback_fid %p\n",
> > -		 __func__, inode, v9inode->writeback_fid);
> > -	if (!v9inode->writeback_fid)
> > -		return 0;
> > +		 __func__, inode, fid);
> > +	if (!fid)
> > +		return -EINVAL;
> 
> Hmm, what happens if we return EINVAL here?
> Might want a WARN_ONCE or something?

Answering myself on this: No idea what happens, but it's fairly
common...
(I saw it from wb_writeback which considers any non-zero return value as
'progress', so the error is progress as well... Might make more sense to
return 0 here actually? need more thorough checking, didn't take time to
dig through this either...)

That aside I ran with my comments addressed and cache=fscache, and
things blew up during ./configure of coreutils-9.1 in qemu:
(I ran it as root without setting the env var so it failed, that much is
expected -- the evict_inode blowing up isn't)
-------
checking whether mknod can create fifo without root privileges... configure: error: in `/mnt/coreutils-9.1':
configure: error: you should not run configure as root (set FORCE_UNSAFE_CONFIGURE=1 in environment to bypass this check)
See `config.log' for more details
FS-Cache:
FS-Cache: Assertion failed
FS-Cache: 2 == 0 is false
------------[ cut here ]------------
kernel BUG at fs/fscache/cookie.c:985!
invalid opcode: 0000 [#3] SMP PTI
CPU: 0 PID: 9707 Comm: rm Tainted: G      D            6.2.0-rc2+ #37
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-debian-1.16.0-5 04/01/2014
RIP: 0010:__fscache_relinquish_cookie.cold+0x5a/0x8f
Code: 48 c7 c7 21 5e b8 81 e8 34 87 ff ff 48 c7 c7 2f 5e b8 81 e8 28 87 ff ff 48 63 73 04 31 d2 48 c7 c7 00 61 b8 81 e8 16 87 ff ff <0f> 0b 44 8b 47 04 8b 4f 0c 45 0f b8
RSP: 0018:ffffc90002697e08 EFLAGS: 00010286
RAX: 0000000000000019 RBX: ffff8880077de210 RCX: 00000000ffffefff
RDX: 00000000ffffffea RSI: 00000000ffffefff RDI: 0000000000000001
RBP: ffffc90002697e18 R08: 0000000000004ffb R09: 00000000ffffefff
R10: ffffffff8264ea20 R11: ffffffff8264ea20 R12: 0000000000000000
R13: ffffffffc00870e0 R14: ffff88800308cd20 R15: ffff8880046a0020
FS:  00007fec5aa33000(0000) GS:ffff88807cc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000009af4d8 CR3: 0000000007490000 CR4: 00000000000006b0
Call Trace:
 <TASK>
 v9fs_evict_inode+0x78/0x90 [9p]
 evict+0xc0/0x160
 iput+0x171/0x220
 do_unlinkat+0x197/0x280
 __x64_sys_unlinkat+0x37/0x60
 do_syscall_64+0x3c/0x80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fec5ab33fdb
Code: 73 01 c3 48 8b 0d 55 9e 0f 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 07 01 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 08
RSP: 002b:00007ffd460b1858 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
RAX: ffffffffffffffda RBX: 00000000009af830 RCX: 00007fec5ab33fdb
RDX: 0000000000000000 RSI: 00000000009ae3d0 RDI: 00000000ffffff9c
RBP: 00000000009ae340 R08: 0000000000000003 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd460b1a40 R14: 0000000000000000 R15: 00000000009af830
 </TASK>
Modules linked in: 9pnet_virtio 9p 9pnet siw ib_core
---[ end trace 0000000000000000 ]---
RIP: 0010:__fscache_relinquish_cookie.cold+0x5a/0x8f
Code: 48 c7 c7 21 5e b8 81 e8 34 87 ff ff 48 c7 c7 2f 5e b8 81 e8 28 87 ff ff 48 63 73 04 31 d2 48 c7 c7 00 61 b8 81 e8 16 87 ff ff <0f> 0b 44 8b 47 04 8b 4f 0c 45 0f b8
RSP: 0018:ffffc90002237e08 EFLAGS: 00010286
RAX: 0000000000000019 RBX: ffff8880077de9a0 RCX: 00000000ffffefff
RDX: 00000000ffffffea RSI: 00000000ffffefff RDI: 0000000000000001
RBP: ffffc90002237e18 R08: 0000000000004ffb R09: 00000000ffffefff
R10: ffffffff8264ea20 R11: ffffffff8264ea20 R12: 0000000000000000
R13: ffffffffc00870e0 R14: ffff888003a6b500 R15: ffff8880046a0020
FS:  00007fec5aa33000(0000) GS:ffff88807cc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000009af4d8 CR3: 0000000007490000 CR4: 00000000000006b0
./configure: line 88:  9707 Segmentation fault      exit $1
-----------

I don't have time to investigate but I'm afraid this needs a bit more
time as well, sorry :/










For reference, here's how I addressed my comments. I don't think that's
related to the problem at hand but can retry later without it if you
think something's fishy:
---------
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
index 44918c60357f..c16c39ba55d6 100644
--- a/fs/9p/vfs_dir.c
+++ b/fs/9p/vfs_dir.c
@@ -215,7 +215,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
 	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
 		 inode, filp, fid ? fid->fid : -1);
 	if (fid) {
-		if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE))
+		if ((S_ISREG(inode->i_mode)) && (filp->f_mode & FMODE_WRITE))
 			v9fs_flush_inode_writeback(inode);
 
 		spin_lock(&inode->i_lock);
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 936daff9f948..e322d4196be6 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -60,7 +60,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 			return PTR_ERR(fid);
 
 		if ((v9ses->cache >= CACHE_WRITEBACK) && (omode & P9_OWRITE)) {
-			int writeback_omode = (omode & !P9_OWRITE) | P9_ORDWR;
+			int writeback_omode = (omode & ~P9_OWRITE) | P9_ORDWR;
 
 			p9_debug(P9_DEBUG_CACHE, "write-only file with writeback enabled, try opening O_RDWR\n");
 			err = p9_client_open(fid, writeback_omode);
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index d53475e1ba27..062c34524b1f 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -230,22 +230,7 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
 
 int v9fs_flush_inode_writeback(struct inode *inode)
 {
-	struct writeback_control wbc = {
-		.nr_to_write = LONG_MAX,
-		.sync_mode = WB_SYNC_ALL,
-		.range_start = 0,
-		.range_end = -1,
-	};
-
-	int retval = filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
-
-	if (retval != 0) {
-		p9_debug(P9_DEBUG_ERROR,
-			"trying to flush inode %p failed with error code %d\n",
-			inode, retval);
-	}
-
-	return retval;
+	return filemap_write_and_wait(inode->i_mapping);
 }
 
 /**
------
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

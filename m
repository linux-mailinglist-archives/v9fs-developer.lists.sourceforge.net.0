Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A402769BB06
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 17:40:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTQGY-0007Rp-08;
	Sat, 18 Feb 2023 16:40:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTQGV-0007Ri-Ek
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cVHs32k8IjvULNoLm1VTam7npKNp4bgtGCjKmHtXav0=; b=EV2K90RURgzt9zIuqyJCgw1CLR
 uK9wCNaHrB/XMd437lalBwHbRgLqMtAkunymL1HTTvXOC72o+rBcStP2E3DAqMvUyVYFAHKxERyjT
 pMfk6agVbgJ0BTZXcT2fwBsSzv/QL5u3+cbG+PBwtRw9yk5ga2fGeAd5/ncgCgQM29Yc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cVHs32k8IjvULNoLm1VTam7npKNp4bgtGCjKmHtXav0=; b=hKj8yYUJ2fFDdMnzlrFlqf6P/U
 Za9t1oqvjX2XTpnAB/p30YFUiZ39D6dhEcjQ78k8q/rY1Sdoh6gJJtB22mGM1VnkfziubjYnjpDi7
 Nl4C8eINpQ0sUP/Xg6iCtWRhpaiINkDPGkHsg7xGtwMgyqvPL8qZ1tH1Qon2ugXcPruQ=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTQGS-0004V2-OD for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 16:40:46 +0000
Received: by mail-wm1-f46.google.com with SMTP id i22so826863wmq.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 08:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=cVHs32k8IjvULNoLm1VTam7npKNp4bgtGCjKmHtXav0=;
 b=Vfu4/sdxR0jnZ/gF8gpxrLQrSXcUshvXYPMcvNFuT676Ou5rAckww+9r2yPh9rWZzc
 vofau+K0QzvtLgB9gKvfKrGz/dOTSh92ymQWYSdn5/xczVQPIKVB2vyQfTQes4TOKbv5
 ckF0Rf1Hzr3q2FGzBINB3PRFFN55HCpFUQHfYr65Iyj9lJIgf2g+IQsOc6ucIup0c3J5
 WQtKfQ8kucn49xcf/eSo37F/6C7iJ1fwLtj5mmKUY/Sbto9QjA3VcyiG6Q0wpPf9nr3l
 2tFzXYing1TTPBGm+HNyFST3YHdwl/oN9OGwrWrRbHSZ4WjscD9RS5uCHeIq6UGTe3YI
 ZkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cVHs32k8IjvULNoLm1VTam7npKNp4bgtGCjKmHtXav0=;
 b=praicuDHnH8HaDyQN8h8eAdePbBYrHwHW17Lw3D4lBpU2T1jIf5kfsxzXhIB5ew++l
 OM+tsFAzYrN7+RXR58s6K8a0lILAkQ/Pi4lQiaAnNt6lKHJ3PaRRo+jdisVUVdy0wvFQ
 7lg9xnEAW6A0UNAn8BJekHqHJRes0NrYzGezy8HcZowLglJIdJVGtsDJXbKmBD5jEcyf
 kYOX5EiUVOvYjJmdS79ucgAt8NA2lnOdBhyipf+q+12gCLQJgsmnEAUju61RWoUF4V7Z
 fH1ipSIJF3Kc0pFaeljrh//7DWgU9BWc+oXuBqLLB5Cs7+++yhTP5NQWXEdPI5XQW2Vx
 5HwA==
X-Gm-Message-State: AO0yUKXwXHBeEp8sm2NzEScraFYBB6H8ocpai+JgPpoC4C2ph9gCpCX2
 mzIVOmWm2/WHEZ/wU9sJF0bfcRhVsefxnQkTd3I=
X-Google-Smtp-Source: AK7set+yQdIVH0cHSncPi7Sj3/PjKAFWk+ad0j4DM9PamwAyLlpiQ6JFbMtooxFCXnkxbWwLxTu5HG2sNHIB/U7qgNA=
X-Received: by 2002:a05:600c:198e:b0:3d9:fd0c:e576 with SMTP id
 t14-20020a05600c198e00b003d9fd0ce576mr58451wmq.6.1676738438869; Sat, 18 Feb
 2023 08:40:38 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org> <Y/Ch8o/6HVS8Iyeh@codewreck.org>
 <Y/DBZSaAsRiNR2WV@codewreck.org>
In-Reply-To: <Y/DBZSaAsRiNR2WV@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 10:40:27 -0600
Message-ID: <CAFkjPTk=GOU+2D3hORsGntwYc-OLkyMH4YMSY_ERfBXdkq2_hg@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This is stupidity on my part, but can you send me your setup
 for fscache so I can test the way you are testing it? It is the one thing
 I still haven't incorporated into my test matrix so definitely a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTQGS-0004V2-OD
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
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is stupidity on my part, but can you send me your setup for
fscache so I can test the way you are testing it?  It is the one thing
I still haven't incorporated into my test matrix so definitely a blind
spot I appreciate you exposing.

     -eric

On Sat, Feb 18, 2023 at 6:16 AM <asmadeus@codewreck.org> wrote:
>
> asmadeus@codewreck.org wrote on Sat, Feb 18, 2023 at 07:01:22PM +0900:
> > > diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> > > index 5fc6a945bfff..797f717e1a91 100644
> > > --- a/fs/9p/vfs_super.c
> > > +++ b/fs/9p/vfs_super.c
> >
> > > @@ -323,16 +327,17 @@ static int v9fs_write_inode_dotl(struct inode *inode,
> > >      */
> > >     v9inode = V9FS_I(inode);
> > >     p9_debug(P9_DEBUG_VFS, "%s: inode %p, writeback_fid %p\n",
> > > -            __func__, inode, v9inode->writeback_fid);
> > > -   if (!v9inode->writeback_fid)
> > > -           return 0;
> > > +            __func__, inode, fid);
> > > +   if (!fid)
> > > +           return -EINVAL;
> >
> > Hmm, what happens if we return EINVAL here?
> > Might want a WARN_ONCE or something?
>
> Answering myself on this: No idea what happens, but it's fairly
> common...
> (I saw it from wb_writeback which considers any non-zero return value as
> 'progress', so the error is progress as well... Might make more sense to
> return 0 here actually? need more thorough checking, didn't take time to
> dig through this either...)
>
> That aside I ran with my comments addressed and cache=fscache, and
> things blew up during ./configure of coreutils-9.1 in qemu:
> (I ran it as root without setting the env var so it failed, that much is
> expected -- the evict_inode blowing up isn't)
> -------
> checking whether mknod can create fifo without root privileges... configure: error: in `/mnt/coreutils-9.1':
> configure: error: you should not run configure as root (set FORCE_UNSAFE_CONFIGURE=1 in environment to bypass this check)
> See `config.log' for more details
> FS-Cache:
> FS-Cache: Assertion failed
> FS-Cache: 2 == 0 is false
> ------------[ cut here ]------------
> kernel BUG at fs/fscache/cookie.c:985!
> invalid opcode: 0000 [#3] SMP PTI
> CPU: 0 PID: 9707 Comm: rm Tainted: G      D            6.2.0-rc2+ #37
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-debian-1.16.0-5 04/01/2014
> RIP: 0010:__fscache_relinquish_cookie.cold+0x5a/0x8f
> Code: 48 c7 c7 21 5e b8 81 e8 34 87 ff ff 48 c7 c7 2f 5e b8 81 e8 28 87 ff ff 48 63 73 04 31 d2 48 c7 c7 00 61 b8 81 e8 16 87 ff ff <0f> 0b 44 8b 47 04 8b 4f 0c 45 0f b8
> RSP: 0018:ffffc90002697e08 EFLAGS: 00010286
> RAX: 0000000000000019 RBX: ffff8880077de210 RCX: 00000000ffffefff
> RDX: 00000000ffffffea RSI: 00000000ffffefff RDI: 0000000000000001
> RBP: ffffc90002697e18 R08: 0000000000004ffb R09: 00000000ffffefff
> R10: ffffffff8264ea20 R11: ffffffff8264ea20 R12: 0000000000000000
> R13: ffffffffc00870e0 R14: ffff88800308cd20 R15: ffff8880046a0020
> FS:  00007fec5aa33000(0000) GS:ffff88807cc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00000000009af4d8 CR3: 0000000007490000 CR4: 00000000000006b0
> Call Trace:
>  <TASK>
>  v9fs_evict_inode+0x78/0x90 [9p]
>  evict+0xc0/0x160
>  iput+0x171/0x220
>  do_unlinkat+0x197/0x280
>  __x64_sys_unlinkat+0x37/0x60
>  do_syscall_64+0x3c/0x80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7fec5ab33fdb
> Code: 73 01 c3 48 8b 0d 55 9e 0f 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 07 01 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 08
> RSP: 002b:00007ffd460b1858 EFLAGS: 00000246 ORIG_RAX: 0000000000000107
> RAX: ffffffffffffffda RBX: 00000000009af830 RCX: 00007fec5ab33fdb
> RDX: 0000000000000000 RSI: 00000000009ae3d0 RDI: 00000000ffffff9c
> RBP: 00000000009ae340 R08: 0000000000000003 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
> R13: 00007ffd460b1a40 R14: 0000000000000000 R15: 00000000009af830
>  </TASK>
> Modules linked in: 9pnet_virtio 9p 9pnet siw ib_core
> ---[ end trace 0000000000000000 ]---
> RIP: 0010:__fscache_relinquish_cookie.cold+0x5a/0x8f
> Code: 48 c7 c7 21 5e b8 81 e8 34 87 ff ff 48 c7 c7 2f 5e b8 81 e8 28 87 ff ff 48 63 73 04 31 d2 48 c7 c7 00 61 b8 81 e8 16 87 ff ff <0f> 0b 44 8b 47 04 8b 4f 0c 45 0f b8
> RSP: 0018:ffffc90002237e08 EFLAGS: 00010286
> RAX: 0000000000000019 RBX: ffff8880077de9a0 RCX: 00000000ffffefff
> RDX: 00000000ffffffea RSI: 00000000ffffefff RDI: 0000000000000001
> RBP: ffffc90002237e18 R08: 0000000000004ffb R09: 00000000ffffefff
> R10: ffffffff8264ea20 R11: ffffffff8264ea20 R12: 0000000000000000
> R13: ffffffffc00870e0 R14: ffff888003a6b500 R15: ffff8880046a0020
> FS:  00007fec5aa33000(0000) GS:ffff88807cc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00000000009af4d8 CR3: 0000000007490000 CR4: 00000000000006b0
> ./configure: line 88:  9707 Segmentation fault      exit $1
> -----------
>
> I don't have time to investigate but I'm afraid this needs a bit more
> time as well, sorry :/
>
>
>
>
>
>
>
>
>
>
> For reference, here's how I addressed my comments. I don't think that's
> related to the problem at hand but can retry later without it if you
> think something's fishy:
> ---------
> diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
> index 44918c60357f..c16c39ba55d6 100644
> --- a/fs/9p/vfs_dir.c
> +++ b/fs/9p/vfs_dir.c
> @@ -215,7 +215,7 @@ int v9fs_dir_release(struct inode *inode, struct file *filp)
>         p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
>                  inode, filp, fid ? fid->fid : -1);
>         if (fid) {
> -               if ((fid->qid.type == P9_QTFILE) && (filp->f_mode & FMODE_WRITE))
> +               if ((S_ISREG(inode->i_mode)) && (filp->f_mode & FMODE_WRITE))
>                         v9fs_flush_inode_writeback(inode);
>
>                 spin_lock(&inode->i_lock);
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 936daff9f948..e322d4196be6 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -60,7 +60,7 @@ int v9fs_file_open(struct inode *inode, struct file *file)
>                         return PTR_ERR(fid);
>
>                 if ((v9ses->cache >= CACHE_WRITEBACK) && (omode & P9_OWRITE)) {
> -                       int writeback_omode = (omode & !P9_OWRITE) | P9_ORDWR;
> +                       int writeback_omode = (omode & ~P9_OWRITE) | P9_ORDWR;
>
>                         p9_debug(P9_DEBUG_CACHE, "write-only file with writeback enabled, try opening O_RDWR\n");
>                         err = p9_client_open(fid, writeback_omode);
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index d53475e1ba27..062c34524b1f 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -230,22 +230,7 @@ v9fs_blank_wstat(struct p9_wstat *wstat)
>
>  int v9fs_flush_inode_writeback(struct inode *inode)
>  {
> -       struct writeback_control wbc = {
> -               .nr_to_write = LONG_MAX,
> -               .sync_mode = WB_SYNC_ALL,
> -               .range_start = 0,
> -               .range_end = -1,
> -       };
> -
> -       int retval = filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
> -
> -       if (retval != 0) {
> -               p9_debug(P9_DEBUG_ERROR,
> -                       "trying to flush inode %p failed with error code %d\n",
> -                       inode, retval);
> -       }
> -
> -       return retval;
> +       return filemap_write_and_wait(inode->i_mapping);
>  }
>
>  /**
> ------
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

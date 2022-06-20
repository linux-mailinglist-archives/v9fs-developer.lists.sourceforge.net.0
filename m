Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E1C55193F
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jun 2022 14:48:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3Goz-0002CZ-EC; Mon, 20 Jun 2022 12:48:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o3Goy-0002C8-Bm
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jun 2022 12:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Qtj9avAPxxxcxlS9R24X+qIn7gqwbxWq3fY/ZtZ/r0=; b=PNmFWUhxXJMPitaWi3J7yDzx/E
 aEiJ07z5tBLCKDo3A7kdoppD2o0g3k4hDa56vyd7WViWhTewxi0Y70am8p3xhZIooaiY/TKf9JkHW
 UJruJvI8HfwugWbXW6C3hQeFzC46GkUSpoyjJZ7sJu363Zx9sNE4GIU2j1YWtubK95xw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Qtj9avAPxxxcxlS9R24X+qIn7gqwbxWq3fY/ZtZ/r0=; b=djXZrdH9VJsRrxIzraGH36z+Vc
 DGyUQM1UvenGezk2TGKZQuCLhgHhvkfNwvYvXt6bA2l9/xrmRNTauHW8lkX0Ybbh+xfuDNP1IdKTp
 3JgNbF96kweV+4iXEAgNm0txPaKDK9GPcerJfWHeLMDHI5B9AIKiGHeokFusNigQWXLU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3Gob-0002hj-5n
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jun 2022 12:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=1Qtj9avAPxxxcxlS9R24X+qIn7gqwbxWq3fY/ZtZ/r0=; b=QlKX47fxikFPWZhUCHG1+dih53
 +IQ1EPYovRtFDHyFK51GCH+/ADR1j/xK2zZVc+lRnViEosZ0+hVbFHjGr4epb/e4IQ/A/XD5qyi3P
 31JWYdCVF4pvM2OuUhiXPrmrdCjBREULJaYQM2JBlmxCuCEbi9quzpa0GlYPiOqRreh5mfYExqNF0
 PzKsF6VDKUiS3lmP9uncFN+a4GujEfno7m6R0wUc/C+aaEwnWd0Ux1O+8sY8RWHa8jTPhU9fYNUDT
 FX3dwzudZySs8lZAOPgW7hdh7NZ3ChRSRbJ9JHVq6u7owMgK5Hz8USfRRX90/HxHxxRm/ZZz08xjL
 /IemGjqeXVnfxarAMwvNlSX0lg2t43yaJ7KweIKPytdqLxHiCkUlq/jnDrIGQyd/NKm+27yH4bJIO
 nEJDTkAei3fYeuZSl58CImb6ArNRPexjSn49WxS1pIWQIvahpU3DYdahmLVcLpgNBs4M6Vu5PW175
 WR89O7dvixywSsXXcmgTE/4Q4fYWz+b+rMJzYr7YMzyTKa9YqxeWl2oKi6l6Y5ZBtDtCyBA9FQt22
 ftZMJ3LeBzedMjOwbp6PhqBpBMzj7FlWKH5NqMRP0vNi67Z/muNBZovTLZuGl9cujvClzVuLlzosY
 GrF4WyrvZ3iSKfEoMklGnypWIV/lcL+y5rcF8+5E4=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 David Howells <dhowells@redhat.com>, stable@vger.kernel.org
Date: Mon, 20 Jun 2022 14:47:24 +0200
Message-ID: <1902408.H94Nh90b8Q@silver>
In-Reply-To: <20220616211025.1790171-1-asmadeus@codewreck.org>
References: <15767273.MGizftpLG7@silver>
 <20220616211025.1790171-1-asmadeus@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag, 16. Juni 2022 23:10:25 CEST Dominique Martinet
 wrote: > cached operations sometimes need to do invalid operations (e.g.
 read > on a write only file) > Historic fscache had added a "writ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o3Gob-0002hj-5n
Subject: Re: [V9fs-developer] [PATCH v3] 9p: fix EBADF errors in cached mode
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 16. Juni 2022 23:10:25 CEST Dominique Martinet wrote:
> cached operations sometimes need to do invalid operations (e.g. read
> on a write only file)
> Historic fscache had added a "writeback fid", a special handle opened
> RW as root, for this. The conversion to new fscache missed that bit.
> 
> This commit reinstates a slightly lesser variant of the original code
> that uses the writeback fid for partial pages backfills if the regular
> user fid had been open as WRONLY, and thus would lack read permissions.
> 
> Link:
> https://lkml.kernel.org/r/20220614033802.1606738-1-asmadeus@codewreck.org
> Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads
> and caching") Cc: stable@vger.kernel.org
> Cc: David Howells <dhowells@redhat.com>
> Reported-By: Christian Schoenebeck <linux_oss@crudebyte.com>
> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> ---
> v3: use the least permissive version of the patch that only uses
> writeback fid when really required
> 
> If no problem shows up by then I'll post this patch around Wed 23 (next
> week) with the other stable fixes.
> 
>  fs/9p/vfs_addr.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
> index a8f512b44a85..d0833fa69faf 100644
> --- a/fs/9p/vfs_addr.c
> +++ b/fs/9p/vfs_addr.c
> @@ -58,8 +58,21 @@ static void v9fs_issue_read(struct netfs_io_subrequest
> *subreq) */
>  static int v9fs_init_request(struct netfs_io_request *rreq, struct file
> *file) {
> +	struct inode *inode = file_inode(file);
> +	struct v9fs_inode *v9inode = V9FS_I(inode);
>  	struct p9_fid *fid = file->private_data;
> 
> +	BUG_ON(!fid);
> +
> +	/* we might need to read from a fid that was opened write-only
> +	 * for read-modify-write of page cache, use the writeback fid
> +	 * for that */
> +	if (rreq->origin == NETFS_READ_FOR_WRITE &&
> +			(fid->mode & O_ACCMODE) == O_WRONLY) {
> +		fid = v9inode->writeback_fid;
> +		BUG_ON(!fid);
> +	}
> +
>  	refcount_inc(&fid->count);
>  	rreq->netfs_priv = fid;
>  	return 0;

Some more tests this weekend; all looks fine. It appears that this also fixed
the performance degradation that I reported early in this thread. Again,
benchmarks compiling a bunch of sources:

Case  Linux kernel version         msize   cache  duration (average)

A)    EBADF fix only [1]           512000  loose  31m 14s
B)    EBADF fix only [1]           512000  mmap   44m 1s
C)    EBADF fix + clunk fixes [2]  512000  loose  29m 32s
D)    EBADF fix + clunk fixes [2]  512000  mmap   44m 0s
E)    5.10.84                      512000  loose  35m 5s
F)    5.10.84                      512000  mmap   65m 5s

[1] 5.19.0-rc2 + EBADF fix v3 patch (alone):
https://lore.kernel.org/lkml/20220616211025.1790171-1-asmadeus@codewreck.org/

[2] 5.19.0-rc2 + EBADF fix v3 patch + clunk fix patches, a.k.a. 9p-next:
https://github.com/martinetd/linux/commit/b0017602fdf6bd3f344dd49eaee8b6ffeed6dbac

Conclusion: all thumbs in my possession pointing upwards. :)

Thanks Dominique!

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E90754EA4A
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 21:44:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1vPz-0005fB-VR; Thu, 16 Jun 2022 19:44:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o1vPy-0005f4-W1
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 19:44:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gBBIiGrIzQFDdusUg+O8IwmvVD8wi/w7fagdVX80l70=; b=iHxhoNiQlNjCSQx8ExtlI37K7E
 yuulXp4/cCuFHxAuhCyzABqVMsSAWAymKXlAavIVsWwYDYztPt8bUW2/sBKB+OPDYTY9/UUXbB7zP
 +iiaLpZDGgJiecOlptNsfHsgC7PjtjduLb7PV4aE4WGXcYYNFUicxXRVRUExKvHCQEvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gBBIiGrIzQFDdusUg+O8IwmvVD8wi/w7fagdVX80l70=; b=eoBJ9BdK/uDxcSOW/WF1xvtVgW
 WsELT3WYvtNQ3FeDsyd3/MTaMaM1p2HFSEWyVba7OXe94hdktsO0PMyGfgS8nCTiYIErnAO2g/dXC
 N9KAnTM7Fa3ubg/MPaGVw55vHZmXxewl80otCdEjxf+hboyk+mfbY6QxB5djiI+LmZaY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1vPq-0004LT-1X
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 19:44:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=gBBIiGrIzQFDdusUg+O8IwmvVD8wi/w7fagdVX80l70=; b=vZa9DhHtWjq1lMb3ZHtzkpRalg
 gPOQOG9/87rrZsr2ifRQTfpoAahv7cEb8WzyEBDjcTBlP+WIoPTrQzehXaqLVycLVz3mmH4GOu7uZ
 1UDfg0fVxWsLpN551c6bMEeOujXGmfbGcmsol/Spo+PuCW9nO1ukmOS+hxo+OkAUsC0u+Qco6mKOF
 2Owc5fyoK4MP9M5jP2vGLGeu8J9Q+7MoiSUn8AzuMcIlppi0qrahk6/EO+7S973NieifmgCKxicY5
 ABeeyVyqCdxVlteYYxjmK8MbJ/+ui42j6p5v9NDsjLBmjORXUQHRV/SX6NBaN02/QYL/v0Rrljt3a
 y3r9jZiUpQ3PBRNcmCLB/6OYK5l/UphW/PjdXvV3M3IrjIWQSwrRakyC8Y6JSOu4NX4szA91WJKAu
 bN/U1uVS2RNoV8Gj8oMM8pdD8S3U6UmUScDu9BF2nWDkSFgmIfSdF9PUWcyMv0TtGbu/FHi7ThN50
 ek0GluXf2tsMkN/R3gSeVUwzlnJbiw9K2oiDZSaUNtUiLtibMD5EeVOrzu6/SV9H2Sd2+9IKAsNV9
 0cpUIwc7/cF9yEkFVR5Fim8pSLSRe0hGcZ3CWXlgj0N1lz9X/G9/zlcbaPfXiQScKsvpvLXCeiHy7
 e5rzIpu4QvGLVD4OFHcm1DOVmrduwZiMLwKTdL6U0=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 16 Jun 2022 21:44:16 +0200
Message-ID: <1692377.rnsbsUYrV6@silver>
In-Reply-To: <E1o1tHC-00039k-04@lizzy.crudebyte.com>
References: <E1o1tHC-00039k-04@lizzy.crudebyte.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag,
 16. Juni 2022 19:09:42 CEST Christian Schoenebeck
 wrote: > The netfs changes (eb497943fa21) introduced cases where 'Tread'
 was sent > to 9p server on a fid that was opened in write-only [...] 
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
X-Headers-End: 1o1vPq-0004LT-1X
Subject: Re: [V9fs-developer] [PATCH] net/9p: show warning on Tread/Twrite
 if wrong file mode
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, David Howells <dhowells@redhat.com>,
 linux-kernel@vger.kernel.org, Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 16. Juni 2022 19:09:42 CEST Christian Schoenebeck wrote:
> The netfs changes (eb497943fa21) introduced cases where 'Tread' was sent
> to 9p server on a fid that was opened in write-only file mode. It took
> some time to find the cause of the symptoms observed (EBADF errors in
> user space apps). Add warnings to detect such issues easier in future.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> Link: https://lore.kernel.org/netdev/3645230.Tf70N6zClz@silver/
> ---
> As requested by Dominique, here a clean version of my previous
> EBADF trap code to be merged. Dominique, if you already have an
> equivalent patch queued, then just go ahead. I don't mind.
> 
> I'm currently testing your EBADF fix patch and the discussed,
> slightly adjusted versions. Looking good so far, but I'll report
> back later on.
> 
> 
>  net/9p/client.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 8bba0d9cf975..05dead12702d 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -1555,6 +1555,8 @@ p9_client_read(struct p9_fid *fid, u64 offset, struct
> iov_iter *to, int *err) int total = 0;
>  	*err = 0;
> 
> +	WARN_ON((fid->mode & O_ACCMODE) == O_WRONLY);
> +
>  	while (iov_iter_count(to)) {
>  		int count;
> 
> @@ -1648,6 +1650,8 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct
> iov_iter *from, int *err) p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset
> %llu count %zd\n", fid->fid, offset, iov_iter_count(from));
> 
> +	WARN_ON((fid->mode & O_ACCMODE) == O_RDONLY);
> +
>  	while (iov_iter_count(from)) {
>  		int count = iov_iter_count(from);
>  		int rsize = fid->iounit;

Better postpone this patch for now: when I use cache=loose, everything looks
fine. But when I use cache=mmap it starts with the following warnings on boot:

[    7.164456] WARNING: CPU: 0 PID: 221 at net/9p/client.c:1653 p9_client_write+0x1b6/0x210 [9pnet]
[    7.164528] ? aa_replace_profiles (security/apparmor/policy.c:1089) 
[    7.164534] v9fs_file_write_iter (fs/9p/vfs_file.c:403) 9p
[    7.164539] new_sync_write (fs/read_write.c:505 (discriminator 1)) 
[    7.164551] vfs_write (fs/read_write.c:591) 
[    7.164557] ksys_write (fs/read_write.c:644) 
[    7.164559] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[    7.164571] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)

[    9.698867] WARNING: CPU: 1 PID: 314 at net/9p/client.c:1653 p9_client_write+0x1b6/0x210 [9pnet]
[    9.737339] ? folio_add_lru (./arch/x86/include/asm/preempt.h:103 mm/swap.c:468) 
[    9.738599] ? _raw_spin_unlock (./arch/x86/include/asm/preempt.h:103 ./include/linux/spinlock_api_smp.h:143 kernel/locking/spinlock.c:186) 
[    9.739940] v9fs_file_write_iter (fs/9p/vfs_file.c:403) 9p
[    9.742655] new_sync_write (fs/read_write.c:505 (discriminator 1)) 
[    9.744063] vfs_write (fs/read_write.c:591) 
[    9.744858] ksys_write (fs/read_write.c:644) 
[    9.745573] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[    9.746339] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)

And then after booting, when I start to actually do something on guest, it
spills the terminal with the following:

[  876.260885] WARNING: CPU: 1 PID: 197 at net/9p/client.c:1653 p9_client_write+0x1b6/0x210 [9pnet]
[  876.260955] ? preempt_count_add (./include/linux/ftrace.h:910 kernel/sched/core.c:5558 kernel/sched/core.c:5555 kernel/sched/core.c:5583) 
[  876.260960] v9fs_file_write_iter (fs/9p/vfs_file.c:403) 9p
[  876.260966] new_sync_write (fs/read_write.c:505 (discriminator 1)) 
[  876.260972] vfs_write (fs/read_write.c:591) 
[  876.260975] __x64_sys_pwrite64 (./include/linux/file.h:44 fs/read_write.c:707 fs/read_write.c:716 fs/read_write.c:713 fs/read_write.c:713) 
[  876.260979] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[  876.260982] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

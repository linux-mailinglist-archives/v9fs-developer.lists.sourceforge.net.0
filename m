Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BF55479AC
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 12:03:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0KQx-00018P-9m; Sun, 12 Jun 2022 10:03:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0KQv-000186-IZ
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 10:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9iYYPUBMwsHySjLDiTlVPvdJJdAhgA81ZQiGNHcHfNA=; b=BDgUxTgtZBmerTjJIfhE/sbYp+
 BNRVIC5Do259h96SQE008nIR8SnCHWzOln/rD3hoI/192ofskZB/rSOtY+x4/DaoTywapk3SHcnbA
 nOui6Duz/9+8ekKmPV1XHxicWWR+g4jgWx571ocuCX5mFTomTXS7mPBfGBQGvH8RqgNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9iYYPUBMwsHySjLDiTlVPvdJJdAhgA81ZQiGNHcHfNA=; b=l5c+pcgVtZ5gPDVu6WCX5uY77P
 HaFmiPrkJTHWmlc79XwXBTLSxrxglbxnOCqIBwbDEiv4zmaeA2VzZiPefCowHrDtYjiPDE6RvaXsb
 Wzl7pYwOGXr8oig1//aFaPzlabCm9t9LxFPwXeztKFTQGddptsrDjVZLJ5SsD8LgOfWE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0KQr-0006cp-O7
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 10:03:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D29A8C01F; Sun, 12 Jun 2022 12:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655028171; bh=9iYYPUBMwsHySjLDiTlVPvdJJdAhgA81ZQiGNHcHfNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yO3FtOpgpAxer63Z1GXbrZ+gQLJu642e8OpF80jzhpIiB4m2dmiZLOyeXVFomnZSS
 SAbu2gO4RWoCj7jstiUXA4q28Ua/wXgtcdcqoL8VV5EkgcCTsf47+Y4/Fy8Xrljzrf
 u/B0BOKM9P49kJaKS2D5sVsmljLOwtvzB00lAS5KM1MlD1fdXR44VQR+pTUSZJZqja
 ggwdoUF8pS2pnLr8C5VzN4EKqa0K3cPXS4vS/rstM8ABtN/67L9MptX4Nabc8nH7SS
 1hKN2ty9B9WcGf7ZEfVrOo9OCrWQOR/n6hssK662YA8TCMUKIsEgvTHNdLHXBsbAo9
 gXrO2RnhrKpfQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4875FC009;
 Sun, 12 Jun 2022 12:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655028170; bh=9iYYPUBMwsHySjLDiTlVPvdJJdAhgA81ZQiGNHcHfNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EeTC0ebUcRiISvGDUnwsaU34a9zolEPSV10j4IXlfo4lyS3EINqQGQWVOKYgjBMUP
 uyvDlVq9cUBtsLoyn8LzosM5g0HgLL5w8GhzEF2assNb43/xW8ZjJqMXbGo9YS3Q67
 MWOi9Kp38t5QFqSoOoVDOx966P4kyYZEy6ajylPiQ3E9iiYpmjjrecngOekXRg7GI9
 Spo30AvsOJtERGFuD/OzDL7mUb4O359JAoWJfS4XPgO/jHVFJPYvmmCplYR1jvwCd6
 c/OqulvVjaVkJ5SSXgj95uXWIdLW1y6s2+vjB+YwoSCk1xNzeGHv50VLV/QSYA8tmq
 9pm8YjJq7yTPg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4ae5bd25;
 Sun, 12 Jun 2022 10:02:42 +0000 (UTC)
Date: Sun, 12 Jun 2022 19:02:27 +0900
From: asmadeus@codewreck.org
To: David Howells <dhowells@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YqW5s+GQZwZ/DP5q@codewreck.org>
References: <YmKp68xvZEjBFell@codewreck.org> <YnL0vzcdJjgyq8rQ@codewreck.org>
 <7091002.4ErQJAuLzZ@silver> <3645230.Tf70N6zClz@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3645230.Tf70N6zClz@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry, I had planned on working on this today but the other
 patchset ended up taking all my time... I think I'm bad at priorities, this
 is definitely important... David, I think with the latest comments we made
 it should be relatively straightforward to make netfs use the writeback fid?
 Could you find some time to have a look? It should be trivial to reproduce,
 [...] Content analysis details:   (-0.2 points, 6.0 required)
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o0KQr-0006cp-O7
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
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Sorry, I had planned on working on this today but the other patchset
ended up taking all my time... I think I'm bad at priorities, this
is definitely important...

David, I think with the latest comments we made it should be relatively
straightforward to make netfs use the writeback fid? Could you find some
time to have a look? It should be trivial to reproduce, I gave these
commands a few mails ago (needs to run as a regular user, on a fscache mount)
---
$ dd if=/dev/zero of=test bs=1M count=1
$ chmod 200 test
# drop cache or remount
$ dd if=/dev/urandom of=test bs=102 seek=2 count=1 conv=notrunc
dd: error writing 'test': Bad file descriptor
---

Otherwise I'll try to make some more 9p time again, but it's getting
more and more difficult for me...

Christian Schoenebeck wrote on Fri, Jun 03, 2022 at 06:46:04PM +0200:
> I had another time slice on this issue today. As Dominique pointed out before,
> the writeback_fid was and still is opened with O_RDWR [fs/9p/fid.c]:
> 
> struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
> {
> 	int err;
> 	struct p9_fid *fid, *ofid;
> 
> 	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
> 	fid = clone_fid(ofid);
> 	if (IS_ERR(fid))
> 		goto error_out;
> 	p9_client_clunk(ofid);
> 	/*
> 	 * writeback fid will only be used to write back the
> 	 * dirty pages. We always request for the open fid in read-write
> 	 * mode so that a partial page write which result in page
> 	 * read can work.
> 	 */
> 	err = p9_client_open(fid, O_RDWR);
> 	if (err < 0) {
> 		p9_client_clunk(fid);
> 		fid = ERR_PTR(err);
> 		goto error_out;
> 	}
> error_out:
> 	return fid;
> }
> 
> The problem rather seems to be that the new netfs code does not use the
> writeback_fid when doing an implied read before the actual partial writeback.
> 
> As I showed in my previous email, the old pre-netfs kernel versions also did a
> read before partial writebacks, but apparently used the special writeback_fid
> for that.

This looks good! Thanks for keeping it up.

> 
> I added some trap code to recent netfs kernel version:
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 8bba0d9cf975..11ff1ee2130e 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -1549,12 +1549,21 @@ int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
>  }
>  EXPORT_SYMBOL(p9_client_unlinkat);
>  
> +void p9_bug(void) {
> +    BUG_ON(true);
> +}
> +EXPORT_SYMBOL(p9_bug);
> +
>  int
>  p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
>  {
>         int total = 0;
>         *err = 0;
>  
> +    if ((fid->mode & O_ACCMODE) == O_WRONLY) {
> +        p9_bug();
> +    }
> +
>         while (iov_iter_count(to)) {
>                 int count;
>  
> @@ -1648,6 +1657,10 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
>         p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %zd\n",
>                  fid->fid, offset, iov_iter_count(from));
>  
> +    if ((fid->mode & O_ACCMODE) == O_RDONLY) {
> +        p9_bug();
> +    }
> +
>         while (iov_iter_count(from)) {
>                 int count = iov_iter_count(from);
>                 int rsize = fid->iounit;
> 
> Which triggers the trap in p9_client_read() with cache=loose. Here is the
> backtrace [based on d615b5416f8a1afeb82d13b238f8152c572d59c0]:
> 
> [  139.365314] p9_client_read (net/9p/client.c:1553 net/9p/client.c:1564) 9pnet
> [  139.148806] v9fs_issue_read (fs/9p/vfs_addr.c:45) 9p
> [  139.149268] netfs_begin_read (fs/netfs/io.c:91 fs/netfs/io.c:579 fs/netfs/io.c:625) netfs
> [  139.149725] ? xas_load (lib/xarray.c:211 lib/xarray.c:242) 
> [  139.150057] ? xa_load (lib/xarray.c:1469) 
> [  139.150398] netfs_write_begin (fs/netfs/buffered_read.c:407) netfs
> [  139.150883] v9fs_write_begin (fs/9p/vfs_addr.c:279 (discriminator 2)) 9p
> [  139.151293] generic_perform_write (mm/filemap.c:3789) 
> [  139.151721] ? generic_update_time (fs/inode.c:1858) 
> [  139.152112] ? file_update_time (fs/inode.c:2089) 
> [  139.152504] __generic_file_write_iter (mm/filemap.c:3916) 
> [  139.152943] generic_file_write_iter (./include/linux/fs.h:753 mm/filemap.c:3948) 
> [  139.153348] new_sync_write (fs/read_write.c:505 (discriminator 1)) 
> [  139.153754] vfs_write (fs/read_write.c:591) 
> [  139.154090] ksys_write (fs/read_write.c:644) 
> [  139.154417] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
> [  139.154776] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)
> 
> I still had not time to read the netfs code part yet, but I assume netfs falls
> back to a generic 9p read on the O_WRONLY opened fid here, instead of using
> the special O_RDWR opened 'writeback_fid'.
> 
> Is there already some info available in the netfs API that the read is
> actually part of a writeback task, so that we could force on 9p driver level
> to use the special writeback_fid for the read in this case instead?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

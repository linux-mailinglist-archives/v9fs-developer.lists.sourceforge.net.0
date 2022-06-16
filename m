Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE6F54E313
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jun 2022 16:12:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1qE5-0007eV-HO; Thu, 16 Jun 2022 14:12:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1qE4-0007eP-CJ
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 14:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fLEu8wAlSIhYMNp84lmaEuPjTbe/YpTHYdRdU5qRks=; b=HpPnPJox9sJsFBnCndpErpIRTJ
 hMREqYBMrrVFmCuXYXdWWA3JKQg1ga9kwzoqDeuWQba+bsTZ+8p0XGsCEgvw9mxVjFMOgw/4/65tp
 lBbdew4aJ0BPZ899fkhha5p8sr33qHjhG4Fqha9DXNDcRZqG29izFdosYPWbslV47gMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6fLEu8wAlSIhYMNp84lmaEuPjTbe/YpTHYdRdU5qRks=; b=HBWioCpnw5qW3X+iHsIHM3Mtfz
 66U9aLP2cwMhxUT6je0AVxOwkNLBIEPXOcG+HrVG7RlephTzmbCY5h7uEJlJ5BDQqFT6nQlYNosHb
 IXUhBjVIS2whf0xyEmELM5HhQFA1gt4G+ymgWlletmmNWvI2WYyzI6y4tvkoDoie7uo0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1qDl-0004qm-RT
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jun 2022 14:11:53 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DA441C01C; Thu, 16 Jun 2022 16:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655388696; bh=6fLEu8wAlSIhYMNp84lmaEuPjTbe/YpTHYdRdU5qRks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WQLfbC1cYoX14kKZ3N5dB9eRYeWQUnIS8zXTCcPAcfIlZA1HuLsqHZaobqOoRfgtb
 4jh/0vpIJb3xMrkKUR5EP9ozmJgdKkscRFg9VeNVig5d0hIoGAMav0FZ7burj/mw/V
 eOT2o2qDglyUTveKwfwQZ6CICIWNX3VDUK3z7JcoCT34Kri1HL1PPuaXqAwnRVtCIg
 fk45DkIeIZJo77r02GpIfD+ndUQli8+avOcOMIhUAp7HG3L59uoMkGGS28KZqoZX+R
 ejJN8yMpxR3lnXFZVfo8r970t19z5MohR4waRc7Zfe9lVyzkxmY8gHQWTgLk9FqSxX
 ombdi8OZY+KyA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DD91BC009;
 Thu, 16 Jun 2022 16:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655388696; bh=6fLEu8wAlSIhYMNp84lmaEuPjTbe/YpTHYdRdU5qRks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WQLfbC1cYoX14kKZ3N5dB9eRYeWQUnIS8zXTCcPAcfIlZA1HuLsqHZaobqOoRfgtb
 4jh/0vpIJb3xMrkKUR5EP9ozmJgdKkscRFg9VeNVig5d0hIoGAMav0FZ7burj/mw/V
 eOT2o2qDglyUTveKwfwQZ6CICIWNX3VDUK3z7JcoCT34Kri1HL1PPuaXqAwnRVtCIg
 fk45DkIeIZJo77r02GpIfD+ndUQli8+avOcOMIhUAp7HG3L59uoMkGGS28KZqoZX+R
 ejJN8yMpxR3lnXFZVfo8r970t19z5MohR4waRc7Zfe9lVyzkxmY8gHQWTgLk9FqSxX
 ombdi8OZY+KyA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6e9c3609;
 Thu, 16 Jun 2022 14:11:31 +0000 (UTC)
Date: Thu, 16 Jun 2022 23:11:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yqs6BPVc3rNZ9byJ@codewreck.org>
References: <YqW5s+GQZwZ/DP5q@codewreck.org> <YqiC8luskkxUftQl@codewreck.org>
 <1796737.mFSqR1lx0c@silver> <22073313.PYDa2UxuuP@silver>
 <Yqs1Y8G/Emi/q+S2@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqs1Y8G/Emi/q+S2@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Thu, Jun 16, 2022 at 10:51:31PM
 +0900: > > Did your patch work there for you? I mean I have not applied the
 other pending > > 9p patches, but they should not really make di [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1qDl-0004qm-RT
Subject: Re: [V9fs-developer] [PATCH] 9p: fix EBADF errors in cached mode
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Thu, Jun 16, 2022 at 10:51:31PM +0900:
> > Did your patch work there for you? I mean I have not applied the other pending
> > 9p patches, but they should not really make difference, right? I won't have
> > time today, but I will continue to look at it tomorrow. If you already had
> > some thoughts on this, that would be great of course.
> 
> Yes, my version passes basic tests at least, and I could no longer
> reproduce the problem.

For what it's worth I've also tested a version of your patch:

-----
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index a8f512b44a85..d0833fa69faf 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -58,8 +58,21 @@ static void v9fs_issue_read(struct netfs_io_subrequest *subreq)
  */
 static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 {
+	struct inode *inode = file_inode(file);
+	struct v9fs_inode *v9inode = V9FS_I(inode);
 	struct p9_fid *fid = file->private_data;
 
+	BUG_ON(!fid);
+
+	/* we might need to read from a fid that was opened write-only
+	 * for read-modify-write of page cache, use the writeback fid
+	 * for that */
+	if (rreq->origin == NETFS_READ_FOR_WRITE &&
+			(fid->mode & O_ACCMODE) == O_WRONLY) {
+		fid = v9inode->writeback_fid;
+		BUG_ON(!fid);
+	}
+
 	refcount_inc(&fid->count);
 	rreq->netfs_priv = fid;
 	return 0;
-----

And this also seems to work alright.

I was about to ask why the original code did writes with the writeback
fid, but I'm noticing now the current code still does (through
v9fs_vfs_write_folio_locked()), so that part hasn't changed from the old
code, and init_request will only be getting reads? Which actually makes
sense now I'm thinking about it because I recall David saying he's
working on netfs writes now...

So that minimal version is probably what we want, give or take style
adjustments (only initializing inode/v9inode in the if case or not) -- I
sure hope compilers optimizes it away when not needed.


I'll let you test one or both versions and will fixup the commit message
again/credit you/resend if we go with this version, unless you want to
send it.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

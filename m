Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A85541DE
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Jun 2022 06:50:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3sKB-0001w8-Px; Wed, 22 Jun 2022 04:50:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o3sKA-0001w2-2u
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 04:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MVob8mlvu/0rVBPNuTrr80XvIgvUL/9hN6SwizR5dFY=; b=cibU8Z/s/Agw6sIu2DMw4bRg9s
 yFf5qIegeUzTgiG9CUDT2JgtLZIY+LQfBJEleIKBY9pVy2nHjzY1DAIItjbSDyl+D4KvKBSQ9DwEI
 eCSY8HzDJwQzjEjM9PPPbKWRWl6dLu9P0Caf3dRh8DMsYFgFfID9tb4d3tZoqnIqu9t8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MVob8mlvu/0rVBPNuTrr80XvIgvUL/9hN6SwizR5dFY=; b=eeK0dDKyYpxbeNBfoy1hAlpgKf
 IHxG99Q/afXtoOdUOg6rtvxdG88DA/LsbqnBrDUn+olb6hLKJZZk2ScSvMDdmGElhuX7M+y1ioLyO
 n/jvQgg7hr76HIHgFUxh0uTOHtKVClsQJPaUCPsEcAvVLgIdBMN/3IAaGdt+O2iej09Y=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3sK5-00A1f6-Oz
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 04:50:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C73D0C01C; Wed, 22 Jun 2022 06:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655873428; bh=MVob8mlvu/0rVBPNuTrr80XvIgvUL/9hN6SwizR5dFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zZQ0eqheNcPefiEdm84pWuGSNlVzahc79XGOmChUX/AnBIW8jffJ7CvC7ajtnoDgy
 9f4IIchyJuHrJ7sqUiG4Ky0SHXmcCzRgm6UQ+6xhV7iX4wGtX7SdBerPKT03gIzyqa
 hbyEcm8nU2J6hv/mgAKwdJIVGRGRuvDVPoeDW5JOkLPyY2YFD1I0HoyQiwy6Em4UZK
 UL/iODYYdMr3ctwT9RWU7hDfCx0kZ5GGyic+5uXikbZ7DlvQfUo02T1aw1GvGkXT1n
 k0JAkN49isdTUDByg/CbwSXvGpBPCnLHOrih8DjYmhfiN9mO0vUemt8x/wfTHELKQz
 CjLajPgxFByEA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5D9F5C009;
 Wed, 22 Jun 2022 06:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655873428; bh=MVob8mlvu/0rVBPNuTrr80XvIgvUL/9hN6SwizR5dFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zZQ0eqheNcPefiEdm84pWuGSNlVzahc79XGOmChUX/AnBIW8jffJ7CvC7ajtnoDgy
 9f4IIchyJuHrJ7sqUiG4Ky0SHXmcCzRgm6UQ+6xhV7iX4wGtX7SdBerPKT03gIzyqa
 hbyEcm8nU2J6hv/mgAKwdJIVGRGRuvDVPoeDW5JOkLPyY2YFD1I0HoyQiwy6Em4UZK
 UL/iODYYdMr3ctwT9RWU7hDfCx0kZ5GGyic+5uXikbZ7DlvQfUo02T1aw1GvGkXT1n
 k0JAkN49isdTUDByg/CbwSXvGpBPCnLHOrih8DjYmhfiN9mO0vUemt8x/wfTHELKQz
 CjLajPgxFByEA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 418d2c3c;
 Wed, 22 Jun 2022 04:50:23 +0000 (UTC)
Date: Wed, 22 Jun 2022 13:50:08 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YrKfgD+O9F4IPzua@codewreck.org>
References: <YrKeHMRfXTNw3vTE@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrKeHMRfXTNw3vTE@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Resending as my dkim-signing daemon was borked... Sorry for
 the trouble if you're getting this twice. Dominique Martinet wrote on Wed,
 Jun 22, 2022 at 01:44:12PM +0900: > > Thanks to Tyler and Christian for the
 patch/reviews/tests! > > > The following changes since commit
 b13baccc3850ca8b8cccbf8ed9912 [...] 
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
X-Headers-End: 1o3sK5-00A1f6-Oz
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 5.19-rc4
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
Cc: Tyler Hicks <tyhicks@linux.microsoft.com>, linux-fsdevel@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Resending as my dkim-signing daemon was borked...
Sorry for the trouble if you're getting this twice.

Dominique Martinet wrote on Wed, Jun 22, 2022 at 01:44:12PM +0900:
> 
> Thanks to Tyler and Christian for the patch/reviews/tests!
> 
> 
> The following changes since commit b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3:
> 
>   Linux 5.19-rc2 (2022-06-12 16:11:37 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/martinetd/linux tags/9p-for-5.19-rc4
> 
> for you to fetch changes up to b0017602fdf6bd3f344dd49eaee8b6ffeed6dbac:
> 
>   9p: fix EBADF errors in cached mode (2022-06-17 06:03:30 +0900)
> 
> ----------------------------------------------------------------
> 9p-for-5.19-rc4: fid refcount and fscache fixes
> 
> This contains a couple of fixes:
>  - fid refcounting was incorrect in some corner cases and would
> leak resources, only freed at umount time. The first three commits
> fix three such cases
>  - cache=loose or fscache was broken when trying to write a partial
> page to a file with no read permission since the rework a few releases
> ago. The fix taken here is just to restore old behavior of using the
> special 'writeback_fid' for such reads, which is open as root/RDWR
> and such not get complains that we try to read on a WRONLY fid.
> Long-term it'd be nice to get rid of this and not issue the read at
> all (skip cache?) in such cases, but that direction hasn't progressed
> 
> ----------------------------------------------------------------
> Dominique Martinet (3):
>       9p: fix fid refcount leak in v9fs_vfs_atomic_open_dotl
>       9p: fix fid refcount leak in v9fs_vfs_get_link
>       9p: fix EBADF errors in cached mode
> 
> Tyler Hicks (1):
>       9p: Fix refcounting during full path walks for fid lookups
> 
>  fs/9p/fid.c            | 22 +++++++++-------------
>  fs/9p/vfs_addr.c       | 13 +++++++++++++
>  fs/9p/vfs_inode.c      |  8 ++++----
>  fs/9p/vfs_inode_dotl.c |  3 +++
>  4 files changed, 29 insertions(+), 17 deletions(-)
> 
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

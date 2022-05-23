Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8581531564
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 May 2022 20:01:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntCNG-0002YJ-NZ; Mon, 23 May 2022 18:01:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <qemu_oss@crudebyte.com>) id 1ntCNE-0002YB-Cc
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 18:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kdOaPNqdKiUqGPqTepXude0v1LHBppL38xhTNFAbyUE=; b=K2Jd11EbV/3SAWY81ZLZRhm+aF
 /ybWotlQUynQyjlv5tF9kycbCVpPgmhsYtt9uvSbqdUGFKRJzdAN1AyaDHYSFhWtoFC13Lb0NvqXh
 mBPdNr5YaiQ3TrKk7Kd9U3bfqSEqxfkh7ky/cl4JCO4NoBJCWAM049emmLBAQefAFzrU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kdOaPNqdKiUqGPqTepXude0v1LHBppL38xhTNFAbyUE=; b=k2XXMLWki07lW1FOtgtI4LGLWR
 2rKpmCdX7qIv2083/NQX3DmcLiwSWaGniBDLH/hiHa/si7zQZEkLdlClT0PembrjKGvDH9uUnZbvg
 dCX/LNUPiLk2nP0IiDM0Zo5DDxkBxWOAgCMm+8/nIZtQsx2etke1sMaIkthzjjYrId40=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntCN8-002ysG-22
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 18:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=kdOaPNqdKiUqGPqTepXude0v1LHBppL38xhTNFAbyUE=; b=JFgRBwGvqStc/xVkxZN1fSAgNI
 eoeei7L1fZ2sul7FXSHr1xAG5XHoKLc3P9YsQeH4W3SZhO0xWCXJJOiXyyTGCf3z5cowiATentBeT
 ndpFHvaIAP4qcSLaZkRigQWE++Wtc/C8eeT2fsVxJhOvjo3FmLSR0Tqxa4G3wiqJra0T9kmtwJPhc
 OVXC8q1IGfcerbwhca97OkTFuK7igLWk6048kz8aKrbjn+zSir21oG/aUxa85ZBdgpspT9nzUlFQc
 of+YJ+muE3Kc2v8OZClQotwRyVp6Mw4Ub4D0pmOWzj1TTh2iwLSUctqH1MJwIE7KnVkHOY8jI+PeI
 UzGWzXO7Tune+mjnH0oxIRuOLqr5y93m2iB6KPrNyLzneTJelcJRl4D4HqGK8az4isVKT4vg47tbq
 7zKwrZl6gi5zDkCr4lsx0rOEDgRrXFspjFDKRScxA8A06lR3G1pdjaTHMm0oB//byzf0A+oWkptnO
 MVePdl1LLPVNcPMiQmfUh99FYyXoiuAfh8EDMvm949esGEGCWFRM194LlPYx61A7Xuai+MOu7Uc1s
 Y2Rr94yywbsz5ugOX85CeUvUE/ZBOToXlAPjFJfD2ajRCqSUtOTofTv/JYvRcSxVIhrGSUCG+Ysr1
 hsDCvgiT3HHzNQpIXMO9ytusaKgOYCRzFwgQrTXME=;
To: qemu-devel@nongnu.org
Date: Mon, 23 May 2022 19:59:55 +0200
Message-ID: <6485122.aT25ngTQys@silver>
In-Reply-To: <YmMItCb97KqegQw5@codewreck.org>
References: <1757498.AyhHxzoH2B@silver> <YmMItCb97KqegQw5@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 22. April 2022 21:57:40 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Fri, Apr 22, 2022 at 08:02:46PM +0200:
 > > So maybe it's better to handle case-insensitivity entirel [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ntCN8-002ysG-22
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: case-insensitive host
 filesystems
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
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, qemu-devel@nongnu.org,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, linux-kernel@vger.kernel.org,
 Keno Fischer <keno@juliacomputing.com>,
 Michael Roitzsch <reactorcontrol@icloud.com>, Will Cohen <wwcohen@gmail.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 22. April 2022 21:57:40 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Fri, Apr 22, 2022 at 08:02:46PM +0200:
> > So maybe it's better to handle case-insensitivity entirely on client side?
> > I've read that some generic "case fold" code has landed in the Linux
> > kernel
> > recently that might do the trick?
> 
> I haven't tried, but settings S_CASEFOLD on every inodes i_flags might do
> what you want client-side.
> That's easy enough to test and could be a mount option

I just made a quick test using:

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 08f48b70a741..5d8e77daed53 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -257,6 +257,7 @@ int v9fs_init_inode(struct v9fs_session_info *v9ses,
        inode->i_atime = inode->i_mtime = inode->i_ctime = 
current_time(inode);
        inode->i_mapping->a_ops = &v9fs_addr_operations;
        inode->i_private = NULL;
+       inode->i_flags |= S_CASEFOLD;
 
        switch (mode & S_IFMT) {
        case S_IFIFO:

Unfortunately that did not help much. I still get EEXIST error e.g. when 
trying 'ln -s foo FOO'.

I am not sure though whether there would be more code places to touch or 
whether that's even the expected behaviour with S_CASEFOLD for some reason.

> Even with that it's possible to do a direct open without readdir first
> if one knows the path and I that would only be case-insensitive if the
> backing server is case insensitive though, so just setting the option
> and expecting it to work all the time might be a little bit
> optimistic... I believe guess that should be an optimization at best.
> 
> Ideally the server should tell the client they are casefolded somehow,
> but 9p doesn't have any capability/mount time negotiation besides msize
> so that's difficult with the current protocol.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

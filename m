Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CD7479A7F
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Dec 2021 12:05:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1myXX9-0007TL-JT; Sat, 18 Dec 2021 11:05:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1myXX8-0007TF-83
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 11:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oatp1nrHc/N8983ifesjNQfkHoYyt7U2LCnk5a8+grI=; b=G7ayysnvdngMHsHDVLpDrBcea6
 tG3dQ8QbjptFTRnkVmhXmkjw4JbtPOG4AEJk5Fa/wekDjjEgrmPM5KimoMkvb8awR0b8TN81Soxio
 bYHE0ohtgDvBRRh2WNimREeFXwctg6/7V7uadO70ofaWJ8mZ96yjtAgL+sQSMcJC04TE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oatp1nrHc/N8983ifesjNQfkHoYyt7U2LCnk5a8+grI=; b=RBjWp3LKPxwNGBj2q6qe6+4aWb
 u6LlS0vc20qU+96V/OsalL4vgjCuoOAZITvVd82ektol3jjjWCOb6yD9Zdq6UQvpHriN4BrzIkpa7
 vHMkyWQATvmsvxK4DTTnSnE4VaFdsKTWEDzLF74Jf0Lilpl0+yPExlrHJSwa8RE//ecw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myXX7-0005GX-4C
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 11:05:46 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E0C98C01E; Sat, 18 Dec 2021 12:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639825536; bh=oatp1nrHc/N8983ifesjNQfkHoYyt7U2LCnk5a8+grI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ltFl3vwvg6wUNK+U5lWHn+IwQA+hMGK5QYs7u0Axd1qOMx+GSy0aFmHkQvrshYnR8
 T7Oyw/kn+netdIew42FLJblXb2/KAu1cJzt/HBaU/8bsirlUiswdediiFBPAgkkoN6
 2ezji1ISGVQvEPsbHVXf1wllSeTQjACkQ6SEGNIZyyqlnMTi3EukUyOL5ls0d8ihU+
 oyqupxf2xplH3iJkcbw5hgZT3agUKj0R+nnwi5AvlZ4Bjg3bvC4ijsjeHkKXTxBive
 M3jgxYsMvWEK9yzXBRsod6oiQClQK7eKyxzxZ99Rbm1oofP/z2woezBcBMdxnWBWTf
 OJAyPCSCJMICw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D494BC009;
 Sat, 18 Dec 2021 12:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639825536; bh=oatp1nrHc/N8983ifesjNQfkHoYyt7U2LCnk5a8+grI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ltFl3vwvg6wUNK+U5lWHn+IwQA+hMGK5QYs7u0Axd1qOMx+GSy0aFmHkQvrshYnR8
 T7Oyw/kn+netdIew42FLJblXb2/KAu1cJzt/HBaU/8bsirlUiswdediiFBPAgkkoN6
 2ezji1ISGVQvEPsbHVXf1wllSeTQjACkQ6SEGNIZyyqlnMTi3EukUyOL5ls0d8ihU+
 oyqupxf2xplH3iJkcbw5hgZT3agUKj0R+nnwi5AvlZ4Bjg3bvC4ijsjeHkKXTxBive
 M3jgxYsMvWEK9yzXBRsod6oiQClQK7eKyxzxZ99Rbm1oofP/z2woezBcBMdxnWBWTf
 OJAyPCSCJMICw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 403b9c05;
 Sat, 18 Dec 2021 11:05:31 +0000 (UTC)
Date: Sat, 18 Dec 2021 20:05:16 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <Yb3AbFhc9ApdHpcA@codewreck.org>
References: <20211203185816.796637-1-arnd@kernel.org>
 <YaqwdNGlZDBDcg5R@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaqwdNGlZDBDcg5R@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Sat, Dec 04, 2021 at 09:04:04AM
 +0900: > Arnd Bergmann wrote on Fri, Dec 03, 2021 at 07:58:06PM +0100: >
 > From: Arnd Bergmann <arnd@arndb.de> > > > > The folio changes add [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1myXX7-0005GX-4C
Subject: Re: [V9fs-developer] [PATCH] 9p: fix unused-variable warning
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Arnd Bergmann <arnd@arndb.de>,
 Eric Van Hensbergen <ericvh@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Sat, Dec 04, 2021 at 09:04:04AM +0900:
> Arnd Bergmann wrote on Fri, Dec 03, 2021 at 07:58:06PM +0100:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > The folio changes added a variable that is sometimes unused:
> > 
> > fs/9p/vfs_addr.c: In function 'v9fs_release_page':
> > fs/9p/vfs_addr.c:140:23: error: unused variable 'inode' [-Werror=unused-variable]
> >   140 |         struct inode *inode = folio_inode(folio);
> >       |                       ^~~~~
> > 
> > Make this clearer to the compiler by replacing the #ifdef
> > with an equivalent if(IS_ENABLED()) check.
> > 
> > Fixes: 78525c74d9e7 ("netfs, 9p, afs, ceph: Use folios")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Looks good to me, picking it up

Sorry it took me a while to actually do the picking up part, but this
appears to have been a patch for linux-next back then and I didn't
notice because the Fixes tag is incorrect (78525c74d9e7 didn't introduce
the inode variable, it actually fixes a patch that never has been merged)

David since then fixed the warning differently in v2 of the patch (he
moved the fscache_note_page_release() out of the ifdef), so I won't do
anything with this even if in principle I tend to agree that
if(IS_ENABLED()) lead to better compiler coverage

Thanks though!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

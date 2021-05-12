Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE2037D468
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 23:24:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgwLT-0006yA-Mo; Wed, 12 May 2021 21:24:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1lgwLS-0006y1-Fw
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 21:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iu3EAcBcCCyh2dvMo7i/UfETwu/cAjPrs9y/9IF/rzg=; b=AlWEeZ+Qfbnukvrgiv3Ca4BtgJ
 EzPAMCck4WEs/uhkgj8WqJhmbGtML5jCqlaGqBOZ/G/8+57JBDLcJlp2ey/Lp2mDBLUGLB3Pg2A70
 A5pidxKyyDYF1ZMsMNgjo+mlVL/R2rzKD1WtAn//gefgHYKUOZ2idkJD8vKy2XmsOQQE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iu3EAcBcCCyh2dvMo7i/UfETwu/cAjPrs9y/9IF/rzg=; b=jiXocObU1kqrJCMNS+bbN/H/sI
 6FcP2vLRcSPcPJ0i1z48oFRiMMr5V4/QX7jiIbITa7SReB4VwtBQbRn8861IUQmC2F46GGPOmXtNq
 mQrO8MLJFMd4mUnZ+4MgIPQQ5GnnBggaKU9ij3l7VqqsaH0w9IvxFJE8lZgVNJngvc0c=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgwLN-0000Tt-54
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 21:24:42 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 64AF3C01B; Wed, 12 May 2021 23:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620854671; bh=iu3EAcBcCCyh2dvMo7i/UfETwu/cAjPrs9y/9IF/rzg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GqFP10EOCURuFkF2xT3PfYLIY2J/Vt5P+TKC+LR86EYnDVWOiW1p0DaJC80tMytf1
 5gN1vjC8t9tFEqHpcBzo3MjbeWnOyCsh8VwxR5wFwId+U1nHFIRPH6eGU0XnRQ4jGI
 /SsgIMi1W6qyOOjrlalZ0AkA2TawlTgrts/qqk1u1tjlJlAt9rRxfyrsKFQdSmvLLf
 60gftBiNyOvw241iDw7Ixc/ONci3OhTq0SqB2Hha0ZnGEU8kohnF+cJ0zDC9kYAG5Q
 lc4JRWj/hSOa3rKODk9l9X+dxBTJt4b/LxGbsKWpas3N+o/AEZ0xIdPNB8szmgh/1g
 RaInV+L3PfTbA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 63EE0C009;
 Wed, 12 May 2021 23:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620854671; bh=iu3EAcBcCCyh2dvMo7i/UfETwu/cAjPrs9y/9IF/rzg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GqFP10EOCURuFkF2xT3PfYLIY2J/Vt5P+TKC+LR86EYnDVWOiW1p0DaJC80tMytf1
 5gN1vjC8t9tFEqHpcBzo3MjbeWnOyCsh8VwxR5wFwId+U1nHFIRPH6eGU0XnRQ4jGI
 /SsgIMi1W6qyOOjrlalZ0AkA2TawlTgrts/qqk1u1tjlJlAt9rRxfyrsKFQdSmvLLf
 60gftBiNyOvw241iDw7Ixc/ONci3OhTq0SqB2Hha0ZnGEU8kohnF+cJ0zDC9kYAG5Q
 lc4JRWj/hSOa3rKODk9l9X+dxBTJt4b/LxGbsKWpas3N+o/AEZ0xIdPNB8szmgh/1g
 RaInV+L3PfTbA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id af7d1893;
 Wed, 12 May 2021 21:24:26 +0000 (UTC)
Date: Thu, 13 May 2021 06:24:11 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <YJxHe+8qn6yYLld3@codewreck.org>
References: <YJvwVq3Gl35RQrIe@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YJvwVq3Gl35RQrIe@casper.infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lgwLN-0000Tt-54
Subject: Re: [V9fs-developer] Removing readpages aop
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
Cc: linux-fsdevel@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox wrote on Wed, May 12, 2021 at 04:12:22PM +0100:
> In Linus' current tree, there are just three filesystems left using the
> readpages address_space_operation:
> 
> $ git grep '\.readpages'
> fs/9p/vfs_addr.c:       .readpages = v9fs_vfs_readpages,
> fs/cifs/file.c: .readpages = cifs_readpages,
> fs/nfs/file.c:  .readpages = nfs_readpages,
> 
> I'd love to finish getting rid of ->readpages as it would simplify
> the VFS.  AFS and Ceph were both converted since 5.12 to use
> netfs_readahead().  Is there any chance we might get the remaining three
> filesystems converted in the next merge window?

David sent me a mostly-working implementation for netfs and it does get
rid of readpages, so it's just a matter of finding time for thorough
tests and cleanups...
I'd also like to let it sit in -next for a while (let's say at least one
month), so realistically I need to look at it within the next few weeks
and I honestly probably won't have time with my current schedule... But
it'll definitely be done for 5.15 (next's next merge window), and
probably in -next in ~2ish months if that's good enough for you.


If you can convince me both cifs and nfs will get it done before then I
might reconsider priorities :-D

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

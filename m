Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCF735F6F5
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Apr 2021 17:04:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lWh3y-0003Fr-Ga; Wed, 14 Apr 2021 15:04:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lWh3i-0003FM-Td
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Apr 2021 15:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+bjDZWt7VIMptiDm8AUPH0gC71TkNTerLWI8vmVplDw=; b=SS2dPqkeYTPmUxbR4x7HUiE4bo
 QPA0chQQJt81/f6qQA7alXPpJMDq25nquJ/Tct3iMydxYvSVNb7hZnTxIvbWw/AaHXUUnUiZ6QetG
 7+aD27v64V30NMrFCCXYMe0upau2JZpMnr3lsfjh40Eux9WutipZ1cMjCaI/SXtptUFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+bjDZWt7VIMptiDm8AUPH0gC71TkNTerLWI8vmVplDw=; b=jHMjWmDYc7RBE7VqXL4+h5TL5+
 Z6jReqvMByuvXe0/9qneGDTN0OPRQcHoWGrOur0ALV2dXj2/ylFJDuBS46e7wAkF8xLeQ7atdDrji
 vlDFYQrw6bscMBUpboII+rVa0U8SeWud+MlKhjuIXztH0JB0k0FmeHXO2X/9Gg+BuT8Y=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lWh3b-0001Td-QX
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Apr 2021 15:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+bjDZWt7VIMptiDm8AUPH0gC71TkNTerLWI8vmVplDw=; b=ZtRHIn2jRKd/7WzhfcChKhit2G
 Pqtvb+9SDLPcrrrXT/UUacJkD74wMmQNpJ0AJWlp92PrvEmAAoE4IViXc3BPLGdAKvbbw4YmYN3RN
 0rgoZXA7/xi+y1zEIEqq32+pE7vjjwjJFN2Z0DWk+BJtc/wKHHX9DcxxseCRuKygG2/qdye6XFRHT
 Y5Q34affJetwAj2nMRHejIkSMLQh7TT4+kI6qsdJl9AQiSsYY9uSIsLASr/hcMEwFh38wjYdohQlG
 EwxmRLrOxyGzCA6kDmCC6E+ZlTE8xJWvTixlGocl3iOR4fN9bMN9aMPPHpGC73MTCrUuZbqc2xmUt
 SoiE4Jog==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lWKsN-005uLz-Ka; Tue, 13 Apr 2021 15:23:13 +0000
Date: Tue, 13 Apr 2021 16:22:51 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210413152251.GQ2531743@casper.infradead.org>
References: <20210408145057.GN2531743@casper.infradead.org>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789066013.6155.9816857201817288382.stgit@warthog.procyon.org.uk>
 <1268564.1618326701@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1268564.1618326701@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lWh3b-0001Td-QX
Subject: Re: [V9fs-developer] [PATCH v7] mm: Add set/end/wait functions for
 PG_private_2
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Apr 13, 2021 at 04:11:41PM +0100, David Howells wrote:
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: David Howells <dhowells@redhat.com>
> Tested-by: Jeff Layton <jlayton@kernel.org>
> Tested-by: Dave Wysochanski <dwysocha@redhat.com>

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

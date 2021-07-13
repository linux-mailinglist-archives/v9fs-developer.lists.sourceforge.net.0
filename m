Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEB63C69DD
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Jul 2021 07:45:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3BEO-0006Ii-GK; Tue, 13 Jul 2021 05:45:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5ed7718f52b0c846131f+6533+infradead.org+hch@casper.srs.infradead.org>)
 id 1m3BEB-0006HZ-SF
 for v9fs-developer@lists.sourceforge.net; Tue, 13 Jul 2021 05:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSOLV2yWdnXkqdxSe2pQiY3HJLae2PQc3A8NcVMaXyY=; b=cw5PJn50pk6GYhwpDMl+UyNhFx
 4M3Czk7vXcyoHW3iZUOkIIdWpjVUVxAj7h0yFmk92P7IPIkh3hWvB4EhOnjm+F/bOCP6g9xCYZBNX
 OlTHbhIatjVb37UvQW0YjWJDboSk/DF0NX5UOsRzdkL4gExGKtMpbUpS3y8wShMoF5BY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kSOLV2yWdnXkqdxSe2pQiY3HJLae2PQc3A8NcVMaXyY=; b=dz7JjmD78JtNRmhosCJMGO7/Vv
 S8iXlOqtV0/y56YOG0TS9zq/2o4sCH3jWPTBQRV/y4QtBwlyimQOdJP4gc6/pdTTLYh2eRlZ0jM1h
 sdyDJzdcj+ni37g70ktvczfzI/al1Th9M8+XH+b/ECDvguh1OzMgzKZ5Pja5An5hv8CM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3BE0-0005XE-IO
 for v9fs-developer@lists.sourceforge.net; Tue, 13 Jul 2021 05:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kSOLV2yWdnXkqdxSe2pQiY3HJLae2PQc3A8NcVMaXyY=; b=eZSL/FG0R/mDuFBcwkcuVTD9uS
 KBFriZ9twqFxIks5L9Qwy6K9vJVLFsJTlxIZfVS8xQOcw0HgcjObmW6xwKV7NuzZ3OrOUWZMow+0o
 +6dguhppZ2oRT6GsukPupoL4M1SUGKqNNAV/qIsvdcjsNDuOfmpylP/+dolSKaa+bsugWw78u6x2x
 g9WClhQJE4wwbAsnYbvDuEcOjKLXvBmenvm2tDcJ2Oyz0jf5o4IKFMyds9hrXMPTscy+2NSMr58bA
 xkNWT9+yu/dIZngZY0qmL/RjyuyrY38EHPOM1s+iUwGDQpS2iCaBD0IWOuwBbiQ2KXcCRQLyMCErf
 nhpvvNuA==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1m3BDC-000mGH-L7; Tue, 13 Jul 2021 05:44:09 +0000
Date: Tue, 13 Jul 2021 06:44:06 +0100
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YO0oJvuIXlcmSd7F@infradead.org>
References: <162609279295.3129635.5721010331369998019.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162609279295.3129635.5721010331369998019.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m3BE0-0005XE-IO
Subject: Re: [V9fs-developer] [PATCH] netfs: Add MAINTAINERS record
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 12, 2021 at 01:26:32PM +0100, David Howells wrote:
> Add a MAINTAINERS record for the new netfs helper library.

Btw, any reason why this code is called netfs?  It is a library
that seems to mostly be glue code for fscache as far as I can tell and
has nothing to do with networking at all.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

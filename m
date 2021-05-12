Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F19537C2BF
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 17:14:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgqZa-0007nB-46; Wed, 12 May 2021 15:14:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lgqZY-0007n3-6f
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 15:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tG3lNaI8LHbA42UxH7tGFop3ks8SKrHdPSgyfd5Fesc=; b=PRQBmKeOcjxLt6jOn8ch+1LI4Q
 Jaj/QGFuwloZgMxLLjzNttu65n8YyNsPhqRj0b8JKjABcHkoSWiWCeiCrABBI5HUS1n0RSO9Xlgnz
 B52lnRsTEGCh1xZBfdhIydV5beJILo9Jc2nKmYBlDTiNpK6Gq6Ur357W64XaecAHIB40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tG3lNaI8LHbA42UxH7tGFop3ks8SKrHdPSgyfd5Fesc=; b=V
 Y+lHflDSUtIuEysowXIQonT65QeNFerJji8J31fjUEraC/WWiGR+LuI/vusg2YkkRKYdJzAqHj3rO
 5SmSg7aNLF1BKsMacIVHY2m5C0H70F8nVrIDlts+wun7qY9KvTBgYcGNp0IuDcUKotQMzINrMyWAF
 RbByXXFHvrHLN11w=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgqZS-0008Rn-Sf
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 15:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=tG3lNaI8LHbA42UxH7tGFop3ks8SKrHdPSgyfd5Fesc=; b=QcTeaAOz5CiwOtBDenL9nlkt4l
 ORNr0twmJaZxegkJO8zBnDDUkDHT/dimoBdIFeSUzwexX7MynidJxoCN9hTg8KX9dJY8KFnC3n2Ga
 vnXlEUXZCUhBpLcAMoD8lsMp9p6qSSyy1uN5HivU1zF+hxUp+wHkM3rYWFsBw3WSnDGm2N6VJ1b0n
 nPlwnctP1dbRNfw+Gd52MzQPJ9lAF9aI1TjQ6YYLY/Iam8C5S2Rdu6mCuARVgYQyOy8QSflOQiMsK
 18L+1xDeaIMOkpUHBAcXpp+U3SAfsWbv0oFEnDKSOEUdsLE3h1RDGvhTkiPAoKCuzKUR8Fc9QzRVh
 pEIa5/gg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lgqX8-008PA3-9W; Wed, 12 May 2021 15:13:30 +0000
Date: Wed, 12 May 2021 16:12:22 +0100
From: Matthew Wilcox <willy@infradead.org>
To: linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, linux-fsdevel@vger.kernel.org
Message-ID: <YJvwVq3Gl35RQrIe@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
X-Headers-End: 1lgqZS-0008Rn-Sf
Subject: [V9fs-developer] Removing readpages aop
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

In Linus' current tree, there are just three filesystems left using the
readpages address_space_operation:

$ git grep '\.readpages'
fs/9p/vfs_addr.c:       .readpages = v9fs_vfs_readpages,
fs/cifs/file.c: .readpages = cifs_readpages,
fs/nfs/file.c:  .readpages = nfs_readpages,

I'd love to finish getting rid of ->readpages as it would simplify
the VFS.  AFS and Ceph were both converted since 5.12 to use
netfs_readahead().  Is there any chance we might get the remaining three
filesystems converted in the next merge window?



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

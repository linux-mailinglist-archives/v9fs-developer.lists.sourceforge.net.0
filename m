Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4A9654F8E
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Dec 2022 12:15:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8g1W-0008B3-MQ;
	Fri, 23 Dec 2022 11:15:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p8g1U-0008Aw-Qe
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 11:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VN5EBYZqJL3wQsJ8/hshGhgSI3cKSXMIvWYt8/UPKFM=; b=W+LtOemF91Ym/k0hvlrKrNk6ca
 dkeAZdJwjBwIkAqKeMTCsglSIrGXfk1Yun+IbIXTKL/kT/m6Bo68eY38Dfp0rsgrZ6By8HYAr6ytC
 lzt/2Vge5WuzTiJ8nURNH6JTBc0TK0nF4nEfspGrK2S9zw0+UCVWBz31QSpxvHAXQ4aA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VN5EBYZqJL3wQsJ8/hshGhgSI3cKSXMIvWYt8/UPKFM=; b=e
 3lHhF0MlKMvAzLLpaBZb6d7o30IlNjHH2EYOmvlsBxNLElUJ9DsM1sLeFLMNLWAVqWz0uS9RAP+YN
 EVpRioWjRrZrRyRvq5bHBg/dGaLJR0awKYjCF+oZIp+zCwqg1bzdihiCySC3cqiQJxEMVHA9xVXCM
 V4/6e0Hm6463gWQI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8g1S-0092DC-TL for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 11:15:32 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 284A1C009; Fri, 23 Dec 2022 12:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671794136; bh=VN5EBYZqJL3wQsJ8/hshGhgSI3cKSXMIvWYt8/UPKFM=;
 h=Date:From:To:Cc:Subject:From;
 b=GvUwMFT0Q6aYikdx7+ZWM69hPxdNa0tfsCa0zyvxN5AGOR2mzoqBpf5hTdluw552j
 NcUZVbAwPk+Q6QaLM4SBJfXG+uMh/thXSBkscaP5OT0xD293L485SbIlwyDCXmMRXw
 XuhsCzHTxUI0HsaNHe8EUcnfuvcOLcktHEy0qbbs+e0FZFJOJSxOmeZ2yDrwgpB2GO
 z0vWfoxc2UcneQr8p2jGupykyZVkvsqnMt+GPv3ONNQpT0+DwCucO8kV11bnfAMDFv
 2BqTq5QbMtBGQ15ytRRB3G+SW1zZwVmAgzZ5uEBQ3ChszRytXobxC9uAm1zknvW2ZM
 sXAbXW3iaI7dg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 020A0C009;
 Fri, 23 Dec 2022 12:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671794135; bh=VN5EBYZqJL3wQsJ8/hshGhgSI3cKSXMIvWYt8/UPKFM=;
 h=Date:From:To:Cc:Subject:From;
 b=jOIbSBD9sy53EBNLvHZoaDht+SWLUur99xN+t8rN/Iq/KOSSsXhz4OWts8/XOVvid
 qlAAqfzFC9tbdEuxgkSPLQa8lzc1K0uElivb3PlF8i4ISlgDGEkZY6A5lhN8jtLcto
 Wtx8rDPRuogYQQ8uC9CbllnziA94bauWo6LYrbBAT3Pqa0OVBVHiZ0KAPDIn4W05X3
 NFliLgwxrTvX6x5M5Ranzgo6zkEOJ/SCHk/jO8sUeFNfo9RKKBEwvT2bt+pjyPmnPf
 ia1ohKTTHEXS00Sx/lYinTD1j3jdujTQnafgAxkE4WWjubNP8q65wZ/RrTyFX6OK2V
 9SZvqifuhhKgw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c8efe9ed;
 Fri, 23 Dec 2022 11:15:18 +0000 (UTC)
Date: Fri, 23 Dec 2022 20:15:03 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Y6WNt21HKZmWTG3/@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 b7b275e60bcd5f89771e865a8239325f86d9927d:
 Linux 6.1-rc7 (2022-11-27 13:31:48 -0800) are available in the Git repository
 at: Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p8g1S-0092DC-TL
Subject: [V9fs-developer] [GIT PULL] 9p fixes for 6.2-rc1
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The following changes since commit b7b275e60bcd5f89771e865a8239325f86d9927d:

  Linux 6.1-rc7 (2022-11-27 13:31:48 -0800)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-6.2-rc1

for you to fetch changes up to 1a4f69ef15ec29b213e2b086b2502644e8ef76ee:

  9p/client: fix data race on req->status (2022-12-13 13:02:15 +0900)

----------------------------------------------------------------
9p-for-6.2-rc1

- improve p9_check_errors to check buffer size instead of msize when possible
(e.g. not zero-copy)
- some more syzbot and KCSAN fixes
- minor headers include cleanup

----------------------------------------------------------------
Christian Schoenebeck (2):
      net/9p: distinguish zero-copy requests
      net/9p: fix response size check in p9_check_errors()

Christophe JAILLET (2):
      9p/fs: Remove unneeded idr.h #include
      9p/net: Remove unneeded idr.h #include

Dominique Martinet (2):
      9p/xen: do not memcpy header into req->rc
      9p/client: fix data race on req->status

Schspa Shi (1):
      9p: set req refcount to zero to avoid uninitialized usage

 fs/9p/fid.c            |  1 -
 fs/9p/v9fs.c           |  1 -
 fs/9p/vfs_addr.c       |  1 -
 fs/9p/vfs_dentry.c     |  1 -
 fs/9p/vfs_dir.c        |  1 -
 fs/9p/vfs_file.c       |  1 -
 fs/9p/vfs_inode.c      |  1 -
 fs/9p/vfs_inode_dotl.c |  1 -
 fs/9p/vfs_super.c      |  1 -
 include/net/9p/9p.h    |  2 ++
 net/9p/client.c        | 33 ++++++++++++++++++++++-----------
 net/9p/trans_fd.c      | 13 ++++++-------
 net/9p/trans_rdma.c    |  5 ++---
 net/9p/trans_virtio.c  | 10 +++++-----
 net/9p/trans_xen.c     |  8 +++++---
 15 files changed, 42 insertions(+), 38 deletions(-)
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

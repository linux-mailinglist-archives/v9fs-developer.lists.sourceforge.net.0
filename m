Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0BD1F7ED8
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Jun 2020 00:18:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjs0E-0003xT-83; Fri, 12 Jun 2020 22:18:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjs0C-0003xK-Er
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 22:18:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cWbVir2WybwrFd6JaiShk1lwL4h/puLvhsHUZxD6Qsg=; b=QtbXGEBzBLbpyVDFvXjm3Z6oZb
 LIkzrBGVsuhfxNeC6oStqWqna2Yy1eAGX9OR69Vqbd8pCqxtLeJjiyAOcLF2o+JdmVwuNz2MFrQlF
 gw0K+X23kynUKFTm8MuoOEoNZEH3IP2ng2QCmW28tmb6IPnBXmQOJOfthHb30klC7SyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cWbVir2WybwrFd6JaiShk1lwL4h/puLvhsHUZxD6Qsg=; b=U
 K7qvShphh3FY3U6+ciuPFEVfZ9Znb5VkUrimXtfHrlAUUWAP5uKrwnTKpXnslRG3hhkIt/ukiZmtx
 dXlFp8uGX5SRBmbYB4iNjNXTNN9ti7eS1KiZokLJfJg62HJduHxIqtxXmHI2eIxf46baWLXhipttd
 Nwav75Ub3hN+gH0o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjs0A-003Yum-4v
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 22:18:20 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id D772FC009; Sat, 13 Jun 2020 00:18:03 +0200 (CEST)
Date: Sat, 13 Jun 2020 00:17:48 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200612221748.GA5666@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjs0A-003Yum-4v
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.8
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Another very quiet cycle...

Thanks,

The following changes since commit 3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162:

  Linux 5.7 (2020-05-31 16:49:15 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.8

for you to fetch changes up to 36f9967531da27ff8cc6f005d93760b578baffb9:

  9p/xen: increase XEN_9PFS_RING_ORDER (2020-06-02 08:00:39 +0200)

----------------------------------------------------------------
9p pull request for inclusion in 5.8

Only one commit - increase the size of the ring used for xen transport.

----------------------------------------------------------------
Stefano Stabellini (1):
      9p/xen: increase XEN_9PFS_RING_ORDER

 net/9p/trans_xen.c | 61 ++++++++++++++++++++++++++++++++++---------------------------
 1 file changed, 34 insertions(+), 27 deletions(-)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

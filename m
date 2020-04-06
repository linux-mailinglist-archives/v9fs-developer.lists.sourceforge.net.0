Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D2B19F41F
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 13:07:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLPbJ-00017U-5E; Mon, 06 Apr 2020 11:07:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLPbH-00017M-EV
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 11:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cYYQpBEuuz46WhS7x6FlUd6M3zFwIzHV7zFcxvFstsI=; b=GqDP4DRaS5WSEb/Vl5kshlnavc
 4wQX5Gubr0eS+k/pLdNqVBJ6EUzQuLwhqaxBrzL5uW1om+zFuUkjaZG9Hztz0Gy6xFOllzRsBXJyL
 Nyy2vhgieQDVwOrQh0NtdJvlHbhtzWJuPLjOdEKFa9A6sZOCT/LnHy+vow2tK1j6+O9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cYYQpBEuuz46WhS7x6FlUd6M3zFwIzHV7zFcxvFstsI=; b=d
 TiAIU/M4N+2rpX1oNy+iNDRvVxusNP02L8hR5ZouDWy3ZwyJ6ZFzKWG9HIxhRc1V56VJhIkSTsiym
 X2JNRh6hL3cOl8ETznZIEn7mPezYm/RaohK/eUzOBZ6AK0MzOPQIjLU0706S1/MY4awXzFtBvMA92
 psm2zI/exon5Wj1w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLPbF-005Tig-ID
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 11:07:31 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 9C620C009; Mon,  6 Apr 2020 13:07:17 +0200 (CEST)
Date: Mon, 6 Apr 2020 13:07:02 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200406110702.GA13469@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jLPbF-005Tig-ID
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.7
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

Not much new, but a few patches for this cycle.

Thanks,
Dominique


The following changes since commit 16fbf79b0f83bc752cee8589279f1ebfe57b3b6e:

  Linux 5.6-rc7 (2020-03-22 18:31:56 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.7

for you to fetch changes up to 43657496e46672fe63bccc1fcfb5b68de6e1e2f4:

  net/9p: remove unused p9_req_t aux field (2020-03-27 09:29:57 +0000)

----------------------------------------------------------------
9p pull request for inclusion in 5.7

- Fix read with O_NONBLOCK to allow incomplete read and return
immediately
- Rest is just cleanup (indent, unused field in struct, extra semicolon)

----------------------------------------------------------------
Dominique Martinet (1):
      net/9p: remove unused p9_req_t aux field

Krzysztof Kozlowski (1):
      9p: Fix Kconfig indentation

Sergey Alirzaev (2):
      9pnet: allow making incomplete read requests
      9p: read only once on O_NONBLOCK

zhengbin (1):
      9p: Remove unneeded semicolon

 fs/9p/Kconfig           |  18 +++++++++---------
 fs/9p/vfs_file.c        |   5 ++++-
 fs/9p/vfs_inode.c       |   2 +-
 include/net/9p/client.h |   4 ++--
 net/9p/client.c         | 144 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------
 5 files changed, 94 insertions(+), 79 deletions(-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

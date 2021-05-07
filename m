Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E83764A0
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 May 2021 13:41:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1leyrk-0001kY-08; Fri, 07 May 2021 11:41:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1leyrh-0001kP-Ag
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 11:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zvATbqtXXc7IsxVxA0GntM900lZ5dWmrvpd9rsWT9w0=; b=He+2GVQ9QSarybAyOFE1hTqYrc
 HQyebXgj6b2AcnlkNdpUA+0WtIOBD9nNZljL3B6m2kdDlnXwjOl23FzCFLQ8ne3Rb8Heqh+OXFWWC
 KoeiBcbsEG7j96vgLI08NOyf/V2oP5SzSMcM22J5kdWpJrE4u3KJLh+4jzK1UHUlASxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zvATbqtXXc7IsxVxA0GntM900lZ5dWmrvpd9rsWT9w0=; b=M
 MUUybIO5Ez/22bsVhJN7zqI2FZRxA869y/mRMJQ2xW7rIYqi5e3eO+BRTpf5KFqDZj2wtppx9rlvf
 uMXt8XiigYz/Xb6pPycJOnrBosbfXHDSCuUH+COa6orFVSl+adD8cdxfESc61YRjLcXhtzr3oWRJQ
 YhqxTxdsHe5kt+Mw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1leyrc-00032S-16
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 11:41:53 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 30F35C01A; Fri,  7 May 2021 13:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620387701; bh=zvATbqtXXc7IsxVxA0GntM900lZ5dWmrvpd9rsWT9w0=;
 h=Date:From:To:Cc:Subject:From;
 b=v0Jh5EbN+PulqnWxfAH+EdbojiDxLithjdxVXCc5xRdY25JlnrELULCeRe2A6ffPn
 FS4f5B6gAwTELE8YIv4QtZxOgut2robOwrQpaaoo1oXL3IziOwPQ7d0Z4dq+7lbGwM
 jb/oHQxrvgYLFEmE1FnlFmeRF8ypWkolKz/Tk0uS3zyhZEQeAFLBAjGCRncP1PmcWW
 oyCKf71v7V36cFtQBgZ3QaL3nO171omWfbVHMfb+TttijIkNhg5wJYmHo8hiYfqbAb
 sjCmewoLGBjQsDt0IjBkb9LPt2rySUGn6em1qPDahOnL8iSSoiolrT3bSieJy1cXsy
 hcGAK7us+xbOg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 60F4EC009;
 Fri,  7 May 2021 13:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620387700; bh=zvATbqtXXc7IsxVxA0GntM900lZ5dWmrvpd9rsWT9w0=;
 h=Date:From:To:Cc:Subject:From;
 b=xqQabC3bbqBEr7Y9dmTzyk7+j28C/8IqZKPSMVyvKDmmKO+mQSZVyvQvgxYGhlCMD
 KoYTYduzLqB6XORWVUKHOp7ag2U+ydsgXC+lUKFcBZviRrutK8KTiKzEAAuv2l/ScK
 9IlmJ8cRF3m043Bgx3tNvROcsQbWVWQOT2xNDVmpNCb8l7twiwifnIUDYivD2/+6MM
 PYaWdt/GXpqdRqjcIyeVwQjVEBUt9iJUd3Ow/WR+bc2ttUyOqpHQVKTJOsusV3PPbZ
 1An5Q6yp2yGH1/U448puvlWYRg4Z9u8OqjFWJfwYnj91wQnk+G9lJpAa5WeajXNesU
 aIxj865pfT0SQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f221fc19;
 Fri, 7 May 2021 11:41:36 +0000 (UTC)
Date: Fri, 7 May 2021 20:41:21 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YJUnYXZBd1hpwW6G@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
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
X-Headers-End: 1leyrc-00032S-16
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.13-rc1
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linux,

sorry for the late request, this is trivial enough and should probably
not have waited for the next cycle...
I had forgotten to add a Cc to stable for the fix and didn't want to
amend the commit at the last minute, will send them a mail after this
has been merged.


The following changes since commit a5e13c6df0e41702d2b2c77c8ad41677ebb065b3:

  Linux 5.12-rc5 (2021-03-28 15:48:16 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.13-rc1

for you to fetch changes up to f8b139e2f24112f4e21f1eb02c7fc7600fea4b8d:

  fs: 9p: fix v9fs_file_open writeback fid error check (2021-03-31 07:02:47 +0900)

----------------------------------------------------------------
9p for 5.13-rc1

an error handling fix and const optimization

----------------------------------------------------------------
Rikard Falkeborn (1):
      9p: Constify static struct v9fs_attr_group

Yang Yingliang (1):
      fs: 9p: fix v9fs_file_open writeback fid error check

 fs/9p/v9fs.c     | 2 +-
 fs/9p/vfs_file.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

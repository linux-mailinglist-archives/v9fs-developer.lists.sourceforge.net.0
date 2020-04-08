Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E43A51A24C2
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Apr 2020 17:12:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jMCNf-00040d-EA; Wed, 08 Apr 2020 15:12:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jMCNd-00040U-Rl
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Apr 2020 15:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BhE8Jmp9rof6TswmayAfiH8hyW5wgCcRUWpbQqEFBYk=; b=aZQUZV1r8xYwMhND9Y2hZS901E
 Vj5H4owD7RdijFJaOkuqCaeP4gVyCwP5b8c0QNgpTr+2DyqPmXUfn1nrhk+WlRdEttglaT+lcwVdT
 uXfcVpZkqq6QfrHpuP+QiRVnzqW/XyIt+udjMJVgVA3a0wFJvoajRsSgEjdLuvH4/nRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BhE8Jmp9rof6TswmayAfiH8hyW5wgCcRUWpbQqEFBYk=; b=n
 IVKqY8PM3ZBn3hrw8nJk2u4cgEvpTQ5RxrvMV+4NP8HFF48k60HG3gf7+TpCHfNsE0Xz2wfBRnadG
 SxKT8+B0XKwZlKpYvxn4hnRCtjHoTOY5EfBaj9PkcNrPiFLAs25KqoiEh6ypch8Cw0Vg73XmlZxPA
 q6LGhK3rZgHMHjBQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMCNY-007geE-J3
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Apr 2020 15:12:41 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id D04B4C009; Wed,  8 Apr 2020 17:12:29 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:12:14 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200408151214.GA30977@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406110702.GA13469@nautica>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMCNY-007geE-J3
Subject: [V9fs-developer] [GIT PULL v2] 9p update for 5.7
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

v2 of monday's pull request. The commit date is just now, but that is
just the documentation patch I applied, there is no code change since
the last version.

Thanks,
Dominique

The following changes since commit 16fbf79b0f83bc752cee8589279f1ebfe57b3b6e:

  Linux 5.6-rc7 (2020-03-22 18:31:56 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.7-2

for you to fetch changes up to c6f141412d24c8d8a9d98ef45303c0235829044b:

  9p: document short read behaviour with O_NONBLOCK (2020-04-08 17:05:28 +0200)

----------------------------------------------------------------
9p pull request for inclusion in 5.7 (take 2)

- Change read with O_NONBLOCK to allow incomplete read and return immediately
(and document it)
- Rest is just cleanup (indent, unused field in struct, extra semicolon)

----------------------------------------------------------------
Dominique Martinet (2):
      net/9p: remove unused p9_req_t aux field
      9p: document short read behaviour with O_NONBLOCK

Krzysztof Kozlowski (1):
      9p: Fix Kconfig indentation

Sergey Alirzaev (2):
      9pnet: allow making incomplete read requests
      9p: read only once on O_NONBLOCK

zhengbin (1):
      9p: Remove unneeded semicolon

 Documentation/filesystems/9p.txt |  10 +++++++++
 fs/9p/Kconfig                    |  18 ++++++++--------
 fs/9p/vfs_file.c                 |   5 ++++-
 fs/9p/vfs_inode.c                |   2 +-
 include/net/9p/client.h          |   4 ++--
 net/9p/client.c                  | 144  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------------
 6 files changed, 104 insertions(+), 79 deletions(-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

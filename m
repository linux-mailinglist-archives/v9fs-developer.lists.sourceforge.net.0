Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CC62DFA60
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Dec 2020 10:49:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1krHoM-0004OS-RW; Mon, 21 Dec 2020 09:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1krHoK-0004OC-L2
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Dec 2020 09:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yaoe7VEoIsbp6ANgyjvB2rbl6fDDGfIoT92WryR11jA=; b=A/H9KwECQyDIIzlRFY4KtAje6g
 6Dbz3Danm9JqVT5nH23gnrhb97nzxDux6Z1FWC3gA8aE9cQTl7T8ixUaat3ecoMEQqpA1NEeoj96z
 oJ/RNUSYiR2jCxkWuWxEI+JCC9JOaCC00salJmMy7ka5jkl66XGK0fZ+D5nK7A4sj+lI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yaoe7VEoIsbp6ANgyjvB2rbl6fDDGfIoT92WryR11jA=; b=n
 HrCkLH0iwmZuPDFFEw4JHaF9yiBNoyJznCdBccdClEdJax6BAKOEx2HkckMN27iO0FFdNWznLmDwv
 tguk0XifW05u2CHZLTwLMgodDl207Ml/NtFYux1diyWYwFw+3bTiJd8QaDHUDudfQCtBxAiEGgfj+
 MXB2kba/S2OUtt30=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1krHoA-003W5U-TX
 for v9fs-developer@lists.sourceforge.net; Mon, 21 Dec 2020 09:49:00 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 7E30CC009; Mon, 21 Dec 2020 10:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1608544123; bh=yaoe7VEoIsbp6ANgyjvB2rbl6fDDGfIoT92WryR11jA=;
 h=Date:From:To:Cc:Subject:From;
 b=l45pzB0m0fqAo09GFPF53/iGtj27iX1hR5cWIsE8auoQyemq/OkWReTXL/7Nrc84p
 gRprPtw6k2DuST4DT5ZpFDCLPBHleC0ttIDDi/Paq2fHUDaSXOpOMgjyeqP9BcHawC
 nwJPm4rc/0wlS843TIBX490a/uxhgjOeEQAZvWRdMI5txx2wTiQkLGDoHRoqY3dAXE
 Q6+rIo+i7Zt6pC+JMvpm947jOTqVk90ESexSVnjS/zTpqqkLOUZ8utoXgJ2+ZiwCDT
 2zA2cSxY84+KY7DR4iPuLOVspzEr9oNOP2Mb1Ql4XvFKzwYy75XInYJw4v5C3Me+gF
 rCN9sahac3tKw==
Date: Mon, 21 Dec 2020 10:48:28 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201221094828.GA6602@nautica>
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1krHoA-003W5U-TX
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.11-rc1
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


Hi Linus,

here's this cycle's update, finally finished on some very old patches
(originally april 2015!) to allow fixing open-unlink-fgetattr pattern.

Thanks to Eric, Greg and Jianyong for the bulk of the work, and Dan for
static analysis fixes on -next.


The following changes since commit 3cea11cd5e3b00d91caf0b4730194039b45c5891:

  Linux 5.10-rc2 (2020-11-01 14:43:51 -0800)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.11-rc1

for you to fetch changes up to cfd1d0f524a87b7d6d14b41a14fa4cbe522cf8cc:

  9p: Remove unnecessary IS_ERR() check (2020-12-01 08:19:02 +0100)

----------------------------------------------------------------
9p for 5.11-rc1

- fix long-standing limitation on open-unlink-fop pattern
- add refcount to p9_fid (fixes the above and will allow for more
cleanups and simplifications in the future)

----------------------------------------------------------------
Dan Carpenter (2):
      9p: Uninitialized variable in v9fs_writeback_fid()
      9p: Remove unnecessary IS_ERR() check

Dominique Martinet (2):
      9p: apply review requests for fid refcounting
      9p: Fix writeback fid incorrectly being attached to dentry

Eric Van Hensbergen (1):
      fs/9p: fix create-unlink-getattr idiom

Greg Kurz (2):
      fs/9p: track open fids
      fs/9p: search open fids first

Jianyong Wu (1):
      9p: add refcount to p9_fid struct

 fs/9p/fid.c             | 65  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 fs/9p/fid.h             | 11 ++++++++++-
 fs/9p/vfs_dentry.c      |  2 ++
 fs/9p/vfs_dir.c         |  6 +++++-
 fs/9p/vfs_file.c        |  7 ++++---
 fs/9p/vfs_inode.c       | 47  ++++++++++++++++++++++++++++++++++++++---------
 fs/9p/vfs_inode_dotl.c  | 35 +++++++++++++++++++++++++++++------
 fs/9p/vfs_super.c       |  1 +
 fs/9p/xattr.c           | 16 +++++++++++++---
 include/net/9p/client.h |  7 +++++++
 net/9p/client.c         | 14 +++++++++-----
 11 files changed, 178 insertions(+), 33 deletions(-)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F04022558F
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jul 2020 03:46:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jxKt9-0000Nf-Dl; Mon, 20 Jul 2020 01:46:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jxKt7-0000NY-HD
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gUyl8P1CpYgcyTqgbAPH6wDS6pkg8YvdPI5u9vWM7xA=; b=UxCt39DHo+4sSbqzu41LlVANl0
 ZjCihTiQzjiUMQ8SqO7lujeDQ7zMPgLp/j1XiCKVfXiqli/jzOdyYbm+QW2f5Uve9gpSBhnH+bPTQ
 lUoI1nevByNviTxp8uuPzkxbNsDg+fGTOQx7D+1/LAZ6X/fQ0bGlxf9yrF0zjZfSrSGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gUyl8P1CpYgcyTqgbAPH6wDS6pkg8YvdPI5u9vWM7xA=; b=djftWHVjYgcfxP5xnWb2H359BG
 t/8gy2cnfAHVIKNecFu02h5iSocWAlhPm2W2fy734UKEJBZbREZC3m21o3c4vWDUXLAxFWA8PDm7s
 a4G5gOXEAGgXbz1T3C/iFB2nHfQThv/FFJxCq+jViP4L2SP7qx6Mp4usJ+jjgwSquulI=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jxKt5-009Hkb-T4
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jul 2020 01:46:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2D10106F;
 Sun, 19 Jul 2020 18:46:33 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.212.212])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9035F3F66E;
 Sun, 19 Jul 2020 18:46:30 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, hch@lst.de, dhowells@redhat.com, lucho@ionkov.net,
 asmadeus@codewreck.org
Date: Mon, 20 Jul 2020 09:46:20 +0800
Message-Id: <20200720014622.37364-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jxKt5-009Hkb-T4
Subject: [V9fs-developer] [RFC PATCH 0/2] vfs:9p: fix open-unlink-fstat bug
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
Cc: justin.he@arm.com, wei.chen@arm.com, jianyong.wu@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

how to reproduce:
in 9p guest:

struct stat *statbuf;
int fd;

fd = open("tmp", O_RDWR);
unlink("tmp");
fstat(fd, statbuf);

fstat will fail as "tmp" in 9p server side has been removed. 9p server
can't retrieve the file context as the guest has not passed it down.
so we should pass the file info down in 9p guest in getattr op.
it need add a new file member in "struct kstat" as "struct istat" does.

Jianyong Wu (2):
  vfs: pass file down when getattr to avoid losing info.
  9p: retrieve fid from file if it exists when getattr.

 fs/9p/vfs_inode.c      | 9 +++++++--
 fs/9p/vfs_inode_dotl.c | 9 +++++++--
 fs/stat.c              | 1 +
 include/linux/stat.h   | 6 ++++++
 4 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

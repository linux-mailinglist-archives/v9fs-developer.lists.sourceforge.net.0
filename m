Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7686125F59
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Dec 2019 11:41:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ihtFT-0006z7-8u; Thu, 19 Dec 2019 10:41:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengbin13@huawei.com>) id 1ihtFS-0006yz-5X
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Dec 2019 10:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jirz/5M7wW4rZzlvY0oiNMP5a+9hx2O+OBwDvsNo05I=; b=mABg8t3Ic9zADy0sGyw74dO1st
 nWDnDarxth4WpeloSx6kZZHdkhBU9BfRJ9nR3vBTgfvcflnPRdggvv9o3q6L9gQcCxIiDpq2soJG8
 pnZmdnj8sMpjD1v593HuaqbxvE1T9KlDgYmgopFxSWAyjzGwYvMk4/5OEU0ADgpxDtMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jirz/5M7wW4rZzlvY0oiNMP5a+9hx2O+OBwDvsNo05I=; b=g
 2QcDZpx+B6QrEvDGo+57jeVpYGc7/7pf8sOeT/Bd+2wyf5OsEtyMGiVow5siW6qxCf+oSpb03unmo
 QyRuf9VQB8n/CDjaR21Ltvsz0hfuP49hYduBtSXdt7n54ldqD06DTP5DNIT2gt0yj5yrN4vO68W40
 pkedWslWYK9/5C6w=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ihtFO-009nBT-28
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Dec 2019 10:41:38 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B0393D3EB05AC1DBC20E;
 Thu, 19 Dec 2019 18:41:23 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 19 Dec 2019
 18:41:16 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <ericvh@gmail.com>, <lucho@ionkov.net>, <asmadeus@codewreck.org>,
 <v9fs-developer@lists.sourceforge.net>
Date: Thu, 19 Dec 2019 18:48:37 +0800
Message-ID: <1576752517-58292-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ihtFO-009nBT-28
Subject: [V9fs-developer] [PATCH RESEND] 9p: Remove unneeded semicolon
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
Cc: zhengbin13@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fixes coccicheck warning:

fs/9p/vfs_inode.c:146:3-4: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 fs/9p/vfs_inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index b82423a..c9255d3 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -143,7 +143,7 @@ static umode_t p9mode2unixmode(struct v9fs_session_info *v9ses,
 		default:
 			p9_debug(P9_DEBUG_ERROR, "Unknown special type %c %s\n",
 				 type, stat->extension);
-		};
+		}
 		*rdev = MKDEV(major, minor);
 	} else
 		res |= S_IFREG;
--
2.7.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

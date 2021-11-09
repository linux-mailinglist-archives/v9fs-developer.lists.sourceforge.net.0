Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8482D44ACCD
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 12:43:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkPXg-0001c4-S1; Tue, 09 Nov 2021 11:43:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1mkPXf-0001bq-3t
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 11:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5eMXmJwKC8GGRlh+nYxceho5NCyU5grVmBhZ8vwkJHo=; b=gmZ7elYfFwCjtzfW9Nhb/cXPsJ
 3RKTHacrk8w365nLMKNjNxAVHuiHW95A1Ii22bD8DO8FL/XdphjGLipY7mK0K2eb2Gxx6IS+s0qGC
 0aCt7fKmy3C2Df4LWyTiSYZFs3OIfKavtJabU6xHMW2XUD7dOH26tHRDq4kwRqptV6lQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5eMXmJwKC8GGRlh+nYxceho5NCyU5grVmBhZ8vwkJHo=; b=W
 0901SWSnZ3z30f9xO4VaVx/LCe7AiYBQ2bycf35TbDUL5jP1zhiNcvj3dxhorIauT9y3IO9snvL2B
 Yr8F6eu2KiLJU4iUYVY8ae8tVvlDUmcpGbrtao/KjFS2cEeIKcCTXVlLi0F29pKyBe8/CLWM6pwlF
 GKivKXRYiHVGZrv0=;
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mkPXe-007DE3-GG
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 11:43:54 +0000
Received: by mail-pg1-f181.google.com with SMTP id p8so16898956pgh.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Nov 2021 03:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5eMXmJwKC8GGRlh+nYxceho5NCyU5grVmBhZ8vwkJHo=;
 b=PGXbW/eMSRNNFJ4kg5o2exkrpfmsER3wRrCgRu/Xa3g/idErzDC8zCE8rEum4uyxwQ
 MmYXcO2lJcZvG9C9GDBhRxpaj+t102I799V6poUg4X8QTHne6BOLpCYnUrZARVfz4pcB
 IyftOvEnJnNKnEOFqjrTczJoxrOx7LzE3ZlIa+3/p5FgbsrkCdQPbW2+OGEAQn9hoXWz
 yc+yxj4stLNc12zp/lsyMOd6k/C1gxL0UTfYhSuoGJVkvAsGoAGe+4F008A4+xMHV0EM
 a8+cBEMReYbsEw/jj5CPMTVbut13AZLKnJxiXJw2NCQ2Nw8cm2ZOOGuU3rG0if3nSivr
 Iadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5eMXmJwKC8GGRlh+nYxceho5NCyU5grVmBhZ8vwkJHo=;
 b=onVi2whQAzy7xV2UnSaq59vetM2N3XksqKk1kqAmtIMOWqTYnjL8I4tqohhOkL9xAT
 o1UWb5wn8e6K+aYb241+bWpZHVJSItmbIAbO7URJHqlwMUCChH33fTv4BBJP1EE8WVWT
 aOw5xT9Pw8K2BYLRMObSvmw5c7EjBZuv+8t5cZrcs5BLb877afCQevQlBuYxXi4Uxm5c
 UKLbSZ1wNZFEcMz8HYO/ZnMNACPV6/S1jQhl1iC2C5nly/envDfP1yio0+2L7OFqfZ4D
 vr24BXud4RnPfghhZiqHJ90W+OaUD9WdMgTW77hJQ5hdSJsMyIDrQtYvie8jjwubX88M
 L6HA==
X-Gm-Message-State: AOAM531e/QKW/0ljPxQ67ZkPUpsHe1ionJCdFoaeTHsGzPONBpuFmEqF
 2EvYAsGM8UNPhj1i/kI2Ybs=
X-Google-Smtp-Source: ABdhPJyiaxxXWFuJS+G5fVve9a9dlOfh6j2Wdq9/TvB43si/ffQixKswoCHttKtd4zCXUYZzC0sM+A==
X-Received: by 2002:a62:e514:0:b0:47c:12f6:3aae with SMTP id
 n20-20020a62e514000000b0047c12f63aaemr7489484pff.26.1636458229011; 
 Tue, 09 Nov 2021 03:43:49 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id i19sm6743549pfu.119.2021.11.09.03.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Nov 2021 03:43:48 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: deng.changcheng@zte.com.cn
To: ericvh@gmail.com
Date: Tue,  9 Nov 2021 11:43:43 +0000
Message-Id: <20211109114343.132844-1-deng.changcheng@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Changcheng Deng Fix the following coccicheck review:
 ./fs/9p/vfs_file.c: 117: 5-8: Unneeded variable Remove unneeded variable
 used to store return value. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mkPXe-007DE3-GG
Subject: [V9fs-developer] [PATCH] fs: 9p: remove unneeded variable
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org,
 Changcheng Deng <deng.changcheng@zte.com.cn>,
 v9fs-developer@lists.sourceforge.net, Zeal Robot <zealci@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Changcheng Deng <deng.changcheng@zte.com.cn>

Fix the following coccicheck review:
./fs/9p/vfs_file.c: 117: 5-8: Unneeded variable

Remove unneeded variable used to store return value.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Changcheng Deng <deng.changcheng@zte.com.cn>
---
 fs/9p/vfs_file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index aac46c5e5bba..eec8cf646a52 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -116,7 +116,6 @@ int v9fs_file_open(struct inode *inode, struct file *file)
 
 static int v9fs_file_lock(struct file *filp, int cmd, struct file_lock *fl)
 {
-	int res = 0;
 	struct inode *inode = file_inode(filp);
 
 	p9_debug(P9_DEBUG_VFS, "filp: %p lock: %p\n", filp, fl);
@@ -126,7 +125,7 @@ static int v9fs_file_lock(struct file *filp, int cmd, struct file_lock *fl)
 		invalidate_mapping_pages(&inode->i_data, 0, -1);
 	}
 
-	return res;
+	return 0;
 }
 
 static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3C444E3CD
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Nov 2021 10:26:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mlSor-0004s6-4K; Fri, 12 Nov 2021 09:26:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1mlSop-0004rB-26
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Nov 2021 09:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ml/1R4nA5zLg0kuXFUTENyZXx71DFoOiO5mfslbZ6No=; b=i9beoJC7mE8DhqOqTW0SEPICAK
 XXsTGgTcTiVZKBnOCQjGb1Qjn0UQHoE7k4Uk++PV5p1t66BPYShDr+x95CJuWX4DJdZThtVoLBdO4
 BPRsU8dUkkbrvTksL+4bhCV83z1ekJPHOTGf9gmxKRqTfsu9YuvGve+YtYoCHkoCP/d4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ml/1R4nA5zLg0kuXFUTENyZXx71DFoOiO5mfslbZ6No=; b=d
 RleDx45itJ9ZnrfJ2PAsM4b3hpSBja5FhgCcmYM59AT2lLVAHHfGEyS3r+hh2+K74WTXIjX+ukz79
 Yxvcg0HvRLPnTCUZHYnaSIxdENMzW/lo9xLq/xr9JBYhvlf9QOigOw51tlTkONW7aNv7uwXijPH1m
 EC1TTjmpPZ3IcjQE=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlSop-0007cp-MD
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Nov 2021 09:26:00 +0000
Received: by mail-pj1-f43.google.com with SMTP id iq11so6253114pjb.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 01:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ml/1R4nA5zLg0kuXFUTENyZXx71DFoOiO5mfslbZ6No=;
 b=XBEslYoFxMA/EIFIzxgwx6TBbCIOuTyG1BkLBgX5lK2MOm2Vqa3p+Hve3XF2jHoIQu
 REnpRU+HJbnOkT6jtfZRcfWvXn8VQo/A6T9p60xMZvZigXZF+xPWre7GhDkEGvJ7gcNm
 p9xgHOk40drLogMdBVsSjj2fIAEwifW443Z4cx0z8aGFyLnKYNyCItbza4Pd8bFnQOZ8
 0LAU4Iz/DJxq0Ou35NGTI+tAT3R3vgbKgB1VvLYfpF84F7kkbktisn68WSOafdFpzd6h
 MZnMRstq3tU1rIVHgt3XZ6IwFh5jLpRqB65/WdLyYSJcDznkKT0HOd73YLzfBAUlR05U
 Z60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ml/1R4nA5zLg0kuXFUTENyZXx71DFoOiO5mfslbZ6No=;
 b=uOS91ANLiTkak7oW1oAvGCXpfHplKvLUTg3LsM0Pru7sThzFHjDgiJ985dvnfPpt/f
 qs5HJ6L8+POrC51V9o7UfpTetOqMuwz6TYbVWLoy+QymL3MLM6j2PdDvz+64tyAf5GOh
 FKimwzx1ISsGxq+WleUGiKrHs/Ale1gY82rJXNdcpuQTK+PGnhEDWLyNDosxUsKqO7nv
 QrFD3H+o1Oz8xK1voa1ShBzkST/1tq7nBhVqhHk7UUM/8o+dtOrSo3vrJ9RPSFtTJTq5
 Hx9o1qzjmnPrwV/1u5/hUYAuBfITmlg1nUpLyVh+Yl/OCPMWPLMzbkV8WPhesiWmmvCT
 eUCg==
X-Gm-Message-State: AOAM531TB+g+leQs9aQdwHPsNBk0GbivcWq8Z0C5bTpuaRdPV4I/FXhR
 nUc5Q1576WeI4hhooyV0tYo=
X-Google-Smtp-Source: ABdhPJwe+uEfynU1N44AtBtCzD3jKMRbcLX/eCqdNuu/C/Eo0RU3JQKBX9YYUH8oRJ0P8bK3hWHKnA==
X-Received: by 2002:a17:90b:4f83:: with SMTP id
 qe3mr34667828pjb.56.1636709154210; 
 Fri, 12 Nov 2021 01:25:54 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id u13sm4252646pga.92.2021.11.12.01.25.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 01:25:53 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: zhang.mingyu@zte.com.cn
To: ericvh@gmail.com
Date: Fri, 12 Nov 2021 09:25:47 +0000
Message-Id: <20211112092547.9153-1-zhang.mingyu@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Zhang Mingyu This issue was detected with the help of
 Coccinelle. Reported-by: Zeal Robot Signed-off-by: Zhang Mingyu ---
 fs/9p/vfs_file.c
 | 3 +-- 1 file changed, 1 insertion(+), 2 deletions(-) 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mlSop-0007cp-MD
Subject: [V9fs-developer] [PATCH] 9p: Use BUG_ON instead of if condition
 followed by BUG.
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
 v9fs-developer@lists.sourceforge.net, Zhang Mingyu <zhang.mingyu@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Zhang Mingyu <zhang.mingyu@zte.com.cn>

This issue was detected with the help of Coccinelle.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Zhang Mingyu <zhang.mingyu@zte.com.cn>
---
 fs/9p/vfs_file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 4244d48398ef..f2375448cafc 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -139,8 +139,7 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
 	fid = filp->private_data;
 	BUG_ON(fid == NULL);
 
-	if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
-		BUG();
+	BUG_ON((fl->fl_flags & FL_POSIX) != FL_POSIX);
 
 	res = locks_lock_file_wait(filp, fl);
 	if (res < 0)
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

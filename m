Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E60C3F594F
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 09:45:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIR7X-0003nA-Qk; Tue, 24 Aug 2021 07:45:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgel.zte@gmail.com>) id 1mIR7W-0003mu-Ev
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 07:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=78uVVTr8tEiUnO/3HZr+EL+WWj5QHkzJjhwnJw13NSU=; b=LeatMI+EEldwSixF+Kuiuri1aA
 zyK3YekLEEb9XBue3KL0DDukDs3kxRS8zQbv4/AznGywTJCbrUDEkMT6ywZlRDOi0aDzfPjO3ZxCB
 0mlBna9z5CRzctqcxgW4b2Uj56E+tmW/gLgdkSAUSz/s9FEDZFjFrxIJkGfl4cVS+UJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=78uVVTr8tEiUnO/3HZr+EL+WWj5QHkzJjhwnJw13NSU=; b=V
 CPevEHiTZnkuRV2C0ECz6GNQMDGQnzYbLIj5a809bkpOw82ArF0pRDRL+sZZAXyWrW5v9fW9gNGJl
 GGyzRoOz4GbDtZRCr9mYk5P8x75twvnFoYjvygWtexUu05ZcdPNFFH1j0isEUW4OWIRifJjiZg298
 rNL0AMwSUgiiuzw4=;
Received: from mail-qv1-f52.google.com ([209.85.219.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mIR7U-00Gbv9-9o
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 07:45:18 +0000
Received: by mail-qv1-f52.google.com with SMTP id dt3so11175495qvb.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Aug 2021 00:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=78uVVTr8tEiUnO/3HZr+EL+WWj5QHkzJjhwnJw13NSU=;
 b=CRXwUrGRZ1PS0Vl63+a86Kz96buIvryF4C6/8RwdhTlFtzk4P/Fkm6CN2Q85F0yoW+
 1azwEaJELFyQVYc7pPsB5A43RyuzbUeHEQK+yIuHYff1N9gNABFByQzsHtPMutiOro30
 1TvyHPiev4ya+VJI2+WzqGiFQZmmEgham0nSIc0fHgbeUQnCFl1gTq8Skj4KuJLYMBvt
 GWITo9Hl2KrCYQJr3atfmSR+0Lon3tPiNW70sN11k2tq6X+LqViCpbICSZ7ah5YnhH8/
 l0RdqCqH/Y3w/oGAOnvuCrlVokZ/6AZD03xQyOfpBBKbQJKbgWC23qewfTaLaVpq/dfI
 282w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=78uVVTr8tEiUnO/3HZr+EL+WWj5QHkzJjhwnJw13NSU=;
 b=tMk8xs103EZ4gX6fAFhMSYe7zKxI9bUD2l9J4PrJqiG0z0s+X86MEacWy6YR+xQMWE
 7ujp3OpPAvnyfTkqAjsCTQ4zcDxs7H4nVO80PRDfdtSwNftHpmdvWl2BKPu74knnQkrT
 G/rP1LH5UQQi0IIQW3hHcbPoFCXMisZ0qHJ4VUTfQx9JHKeNkvbSfe96q8FRhIbCwiSJ
 1p8mUx3sJLo/dub5qejDrlsWD5Xrg2+VAcMrnoZMYIMoFcIg9foNM8wYKajCpSsI9lYJ
 P5i62seiacNbgkReDVoexsb2NpsY+JnWFuPUha5Dq3qabSTxLqI15c8HaiddFP1SXGfy
 xNjw==
X-Gm-Message-State: AOAM530fjJdknfkc4UaZ345KG9RaE068z3YB3Drv/KYNaJFtCSlIrCSZ
 1YOPKWWsV8SXHrMVt4D5wrI=
X-Google-Smtp-Source: ABdhPJyJj+Yi44RMH7FAKVd85v0VpCawQmCUGuy20Z6/fgqDfB4bXK0/Uh5XjxIRL97JFoKHCSbuEA==
X-Received: by 2002:a0c:d60c:: with SMTP id c12mr19361284qvj.18.1629791110617; 
 Tue, 24 Aug 2021 00:45:10 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id 19sm9558380qkf.127.2021.08.24.00.45.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 00:45:10 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: ran.xiaokai@zte.com.cn
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Date: Tue, 24 Aug 2021 00:45:03 -0700
Message-Id: <20210824074503.62333-1-ran.xiaokai@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: CGEL due to commit 798b2ae3cd58 ("Merge remote-tracking
 branch 'file-locks/locks-next'"), label "out_err" should be removed to avoid
 build warning. Reported-by: Zeal Robot Signed-off-by: CGEL ---
 fs/9p/vfs_file.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.52 listed in wl.mailspike.net]
X-Headers-End: 1mIR7U-00Gbv9-9o
Subject: [V9fs-developer] [PATCH] fs: 9q: remove unnecessary label "out_err"
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
Cc: ran.xiaokai@zte.com.cn, v9fs-developer@lists.sourceforge.net,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: CGEL <ran.xiaokai@zte.com.cn>

due to commit 798b2ae3cd58 ("Merge remote-tracking branch
'file-locks/locks-next'"), label "out_err" should be removed to
avoid build warning.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: CGEL <ran.xiaokai@zte.com.cn>
---
 fs/9p/vfs_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
index 978666530d8e..d2d83163d6b0 100644
--- a/fs/9p/vfs_file.c
+++ b/fs/9p/vfs_file.c
@@ -319,7 +319,7 @@ static int v9fs_file_lock_dotl(struct file *filp, int cmd, struct file_lock *fl)
 		ret = v9fs_file_getlock(filp, fl);
 	else
 		ret = -EINVAL;
-out_err:
+
 	return ret;
 }
 
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2116202ADF
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jun 2020 15:53:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jn0PZ-0000ab-3l; Sun, 21 Jun 2020 13:53:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jn0PY-0000aU-Af
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rj9ZnFm4R5tkYfd96VY13f/6M27NvR0zKjQa2qTEj6s=; b=WO5x8im0bubs0QdDJF5SRALreU
 4GzlwRRa9nyvVwxIwxF0dKe8rCD/mSXi7HGgy8f1mVZr0q9mAC6ISLzp1l4KuatuADrdP4U9z06It
 M4JFB9joazVDq9YrzpCGExEE0+TxR30/YVSyf/EgUZynLm7oUlHMZCDlRQ2EVGMaGcqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rj9ZnFm4R5tkYfd96VY13f/6M27NvR0zKjQa2qTEj6s=; b=NzXinhgG2wIyWWdjtO/+NyZ7Lu
 leCjvLsXyeTFYm5ptvc7h/Go+AQu78mUf9A2OrFBNCM9/4EdjtGSpVadmPwjsaIMTWVWEZPBRN6G+
 jAIEOza8AyEJGoJoM4BLuzpVOhoOaGyPCXzyZz7SbAxl+je1P9XNpQiEmz7y7zQ/kvuQ=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jn0PV-00B1XW-P5
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Jun 2020 13:53:28 +0000
Received: by mail-lj1-f196.google.com with SMTP id a9so16389262ljn.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 21 Jun 2020 06:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rj9ZnFm4R5tkYfd96VY13f/6M27NvR0zKjQa2qTEj6s=;
 b=PRrmT/kIqR6/3oQkRNh6tonCdS34cPBT1mCriBx6e1dxP8fVmryxBVXmqCCANsUvX3
 f/IMAe7F5mRvjyqZEIZp5v6er26qBOZpOEn3V5ZroZSHYT/di5EfgPTlpcdq+wc2TFuQ
 AyzfvhvCFz/EANRJU3XHqKuWjpf/z4dF8U5hq+IMmObDIQaaR4Pv7OkRWjr8PnTdv3pK
 oQtaJxqxqCvOavyr/QRs3e7Y4gQBcP4oRr3QXHp7UU+ImQEr3rTty3Z5o8A9db8nz+qF
 lfkl+1f9X6h0kmjAfKPM+qasH5s30UlfupkaM8UDc6X6Zn1IHFRAn8fCqt8nFowB8KeS
 1+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rj9ZnFm4R5tkYfd96VY13f/6M27NvR0zKjQa2qTEj6s=;
 b=WwJ8q80TOhGonvojLhz7lCpBoyoYMi5wQ0phsHzlNwKz4W5IJgT3aXYk2DctqTcKvk
 z+WAMRq5VDJN5VJtfxiOQs7QHbe2w7UVN11+Lc0YxQ60FE8LiHPXFqRYOEYlI83utw5g
 5u7vRbMraGCKed09t2HT7JExIl+rE4CCRGGTHTnVVjgwcNbkJYPudTAt7XSDQAM2nc/p
 6/XT2fUMTyQ/43atJn65wWMF/bsWJxkQioHMt9QRq5om4sf922VfYWWKACNfQ97exueA
 1cUN6My1tNyNnRywh+MlJoE7LMeOCFoK+gp3z6I8dkBzP1mjxkGbsYMUN7X+gpnQHDWR
 gj2A==
X-Gm-Message-State: AOAM533dms68sG6kA4UEIsRbHZQwUdJKUgpscbqdoZjna77LsxoVpAvN
 SucUio70IJAZgPrfpqDd66g=
X-Google-Smtp-Source: ABdhPJzq9OQuDuEoVWt9yw0RiH+IDcaqJVjQOSfQrPd2eiRIMaJqCUxeJT9Kb+QO1lx+H+Lnoqi4fw==
X-Received: by 2002:a2e:85d8:: with SMTP id h24mr6089524ljj.274.1592747599268; 
 Sun, 21 Jun 2020 06:53:19 -0700 (PDT)
Received: from pc-sasha.localdomain ([146.120.244.6])
 by smtp.gmail.com with ESMTPSA id 132sm2745516lfl.37.2020.06.21.06.53.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2020 06:53:18 -0700 (PDT)
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
To: asmadeus@codewreck.org
Date: Sun, 21 Jun 2020 16:53:12 +0300
Message-Id: <20200621135312.78201-1-alexander.kapshuk@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200621084512.GA720@nautica>
References: <20200621084512.GA720@nautica>
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jn0PV-00B1XW-P5
Subject: [V9fs-developer] [PATCH] net/9p: Validate current->sighand in
 client.c
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
Cc: lucho@ionkov.net, alexander.kapshuk@gmail.com, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix rcu not being dereferenced cleanly by using the task
helpers (un)lock_task_sighand instead of spin_lock_irqsave and
spin_unlock_irqrestore to ensure current->sighand is a valid pointer as
suggested in the email referenced below.

Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Link: https://lore.kernel.org/lkml/20200618190807.GA20699@nautica/
---
 net/9p/client.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index fc1f3635e5dd..15f16f2baa8f 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -787,9 +787,14 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	}
 recalc_sigpending:
 	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
+		if (!lock_task_sighand(current, &flags)) {
+			pr_warn("%s (%d): current->sighand==NULL in recalc_sigpending\n",
+				__func__, task_pid_nr(current));
+			err = -ESRCH;
+			goto reterr;
+		}
 		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
+		unlock_task_sighand(current, &flags);
 	}
 	if (err < 0)
 		goto reterr;
@@ -869,9 +874,14 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	}
 recalc_sigpending:
 	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
+		if (!lock_task_sighand(current, &flags)) {
+			pr_warn("%s (%d): current->sighand==NULL in recalc_sigpending\n",
+				__func__, task_pid_nr(current));
+			err = -ESRCH;
+			goto reterr;
+		}
 		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
+		unlock_task_sighand(current, &flags);
 	}
 	if (err < 0)
 		goto reterr;
--
2.27.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

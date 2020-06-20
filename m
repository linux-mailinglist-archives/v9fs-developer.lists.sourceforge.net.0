Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0C2202655
	for <lists+v9fs-developer@lfdr.de>; Sat, 20 Jun 2020 22:15:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jmjtS-0005Dw-7J; Sat, 20 Jun 2020 20:15:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jmjtR-0005Dm-RQ
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Jun 2020 20:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bUpHKuGvXMoT2ANSX5o0C6Pui2UhEVNyY7Dw51pTMzQ=; b=MWXqh/ELVwaUwvUCzjnuCJsEne
 UdarC9AuAP/BKtT+Y6+HlxzA7zpW+d05RHcucAIjQ9vlI1UVtRU0F3di6+qmU771v/9WTxkCn4l/Q
 +5n3j+6NiGOCZOd7PrAH9I/wB1rwocALTWKDiKJFYrGO/5DdbrlNK3PQs4OgGfApaPRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bUpHKuGvXMoT2ANSX5o0C6Pui2UhEVNyY7Dw51pTMzQ=; b=NmaAxbNQYfBnWfM1ovrRwk4tkr
 i43tXm8P5J0L9iSEG/udbdwF11A3yylsbTh+ifWZyEhN2vQxu0lUXLq3vqdsHp4HMmDGeSoT3X7+1
 pGCqZ1jeRn0smq+xDkMLzOLV3Oqz7yWt9fPHDgQBI8Z25wTZROSA03xLEP5Mwgx1lL3E=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jmjtN-00AKXC-V0
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Jun 2020 20:15:13 +0000
Received: by mail-lf1-f66.google.com with SMTP id g2so7491584lfb.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 20 Jun 2020 13:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bUpHKuGvXMoT2ANSX5o0C6Pui2UhEVNyY7Dw51pTMzQ=;
 b=I5YfqFjS1MNpAA5fUkekX8lImcYybPU8i5LRszlPW7+W9dKLRe3m7XPSm5OE+w0c9b
 5HXVnVtUxQlg+UD7RL2IxB/0/3C7NCu7K8Mee31mtL2mTAQFbe5C+CAtInh54NDp4UD6
 9m4czhc3CLvcGBo2hSguh/0vC3GWwiv4PiHumh48B6IyoFvnS0wFEnCdrMtfj/o3HLXZ
 BKWsi3WvmM68qMWUqqK9ChMos92Bmv7K+9qWxDnP6pr7zY9dMZEp54VjnTG35um3Jd8f
 ujcCDuSqIk8AkWnTklK3DXpRnp6k79C4svheru40Mz9r+/qD3zw9dVKPN2k8ZTqsR9BO
 c3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bUpHKuGvXMoT2ANSX5o0C6Pui2UhEVNyY7Dw51pTMzQ=;
 b=pTJmPb/eZ/5KqXDhEA3Vgxa407oh+YM9YSkjl0motA2IXtO9qFQZUFbFsBNctigY0Q
 yEU+USUhyCvO/9ram42Fq4Ha9qEcZUdT6a4Jm+czs7k7+yHxr3H0kXeWtk2AACVA4z7V
 ex0yRz5ph6zZ6AlAoyTj+XjFlqfRJumaRJecVwGdHUYgA8NrPWs5DtKw1p34EMlQvyJw
 YkQMKU2EzHyZeR347LLafJNEsYL/K24aTqNcSMHliIgoJQCmqN7pP9x5NqdSW2LqXisj
 4OuNnlBWN/m3B5Fo4e3TMm5iWy4Jxffx6SNVaJa2sjmYC7DY5fJOKjvxpMvre1uIL7nw
 9EZQ==
X-Gm-Message-State: AOAM533NsIYMyuxh3ekONuM2lR0Uk0wDHmNTft8XLNpkVpdJv3IUGsKf
 SHGaNQPMGrepdpvXcn98B5s=
X-Google-Smtp-Source: ABdhPJy6pTdJ/npXRzJulS4+XYrhRZgNFxdrISm39OyM67KApATxV7ttOA6JOqpzlpmfhSceF2D2lg==
X-Received: by 2002:a19:4cd:: with SMTP id 196mr1349954lfe.136.1592684103363; 
 Sat, 20 Jun 2020 13:15:03 -0700 (PDT)
Received: from pc-sasha.localdomain ([146.120.244.6])
 by smtp.gmail.com with ESMTPSA id b6sm2641347lfa.54.2020.06.20.13.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 13:15:02 -0700 (PDT)
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
To: asmadeus@codewreck.org
Date: Sat, 20 Jun 2020 23:14:56 +0300
Message-Id: <20200620201456.14304-1-alexander.kapshuk@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618190807.GA20699@nautica>
References: <20200618190807.GA20699@nautica>
MIME-Version: 1.0
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 1.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmjtN-00AKXC-V0
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

Use (un)lock_task_sighand instead of spin_lock_irqsave and
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

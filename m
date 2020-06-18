Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9111FFB19
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 20:33:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jlzLt-0008GM-KO; Thu, 18 Jun 2020 18:33:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jlzLs-0008GF-JP
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 18:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GfxBQhl30ftp8BzrZSRW5vI7XCIOgc9ST9sUu1yvoKQ=; b=UkU+4x/TjZ3me91m0YBPnOYPj5
 3zoCWYZUGUIUVijAmi9FTFVDXWwT0NxkaLb2hLdfnuYTzqhuYJ92Trqw9kXNMZBXQYt6WKHhTvCnp
 Exkpyu4h/fxk44hjn4WI4c0lHK+9wveZPK/mW3kepdRUSREsI+wmtYGKUAFsDIBScwXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GfxBQhl30ftp8BzrZSRW5vI7XCIOgc9ST9sUu1yvoKQ=; b=e
 DZYdH55jmqobK/ZVmc5juSGcojLlEhOymdb3bfkiCVvQKp5fBHtKTVDhbvb4LHMAT5vY6VCKnW+d5
 /aF15CA9b6sQdxmkvDDwXhs/+ifh48QCVSvJOwYreoTpuwxvsGuSHnHkFYjLICz6y1IWUzKHLh/ER
 vePB9pw5pf1LP7V8=;
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jlzLr-0083Sx-DO
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 18:33:28 +0000
Received: by mail-lj1-f193.google.com with SMTP id 9so8488387ljc.8
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jun 2020 11:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GfxBQhl30ftp8BzrZSRW5vI7XCIOgc9ST9sUu1yvoKQ=;
 b=HnJ6W8d8IEhzEpI5u0sQdOHDWKiBPP4zGmOesg+GBKgFdNepm4tT7iQLfBboohIhzz
 hsMa+iHPwsUR4ddHmYNsuPldOm4SiDguICTiQTBtMb3kg9BckTV+ak1N7BMutTQJBnyy
 VI7AMa6tOyipoBCk9/1+1rH3ftq/OGbyjh+YZFU/ke1hsKLA4WNLo0g0wxS4pEj9LgQw
 ygKBdcEvWID73mJblxh5nl4br8WV07Avcj2DdtiMuJCRj2d6om5R28ApTXcgHDcAaPUa
 /vqTBWb15qEm2cHWgBJmv7y1+JbUM26z108EnAhnxRRbT8uMMmUuliB9j9v1HpV+95R3
 JGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GfxBQhl30ftp8BzrZSRW5vI7XCIOgc9ST9sUu1yvoKQ=;
 b=NJEtM/eEfQ1Ti4KzM7S6PjhRFrGpeFUTshGZ3ltDMYlhrDHkk+ZUzpP/RpMabksYaJ
 T/fAfnuhoatp8eFAiDXm0cDBQHpuZxfr5K+uSbQoubFV8d0ilMkAgnoXuKProDBsumHc
 gamNmtPhCs4KU8L+aAEkgWto8Hwh/Ri7w8AdNfPqL10EaIeAkFDKFeLrV7kLm+euDCY/
 hXJSIPkQKriL+KLibQE6UTaEPDXYi4XfCPRVceQS6JwV+KBgz0+3qSju/9b0vMQIXx8t
 aS159kyMMTJZLu5oJhGeUoBGXnZxTF3Schin2tBBToHzjPB5mCffibdC1ynVgqvRe366
 JBng==
X-Gm-Message-State: AOAM530gBTd0aDBisD4bEBmUBj7bfF8jF3gvcsi1mrIXi+UOD015S1Rn
 Pt/6QWwTtDVU3WHkPe2tO2A=
X-Google-Smtp-Source: ABdhPJy6jugihkxyO5CBEIfSggrL5MElULeZHrxoHVR/Zmp2AqhP8slBr5Ac+hzmMi5/l0hmUhVSJw==
X-Received: by 2002:a2e:22c2:: with SMTP id i185mr3233274lji.200.1592505200794; 
 Thu, 18 Jun 2020 11:33:20 -0700 (PDT)
Received: from pc-sasha.localdomain ([146.120.244.6])
 by smtp.gmail.com with ESMTPSA id x10sm769339ljx.67.2020.06.18.11.33.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:33:20 -0700 (PDT)
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Date: Thu, 18 Jun 2020 21:33:10 +0300
Message-Id: <20200618183310.5352-1-alexander.kapshuk@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.193 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [146.120.244.6 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jlzLr-0083Sx-DO
Subject: [V9fs-developer] [PATCH] net/9p: Fix sparse rcu warnings in client.c
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
Cc: alexander.kapshuk@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Address sparse nonderef rcu warnings:
net/9p/client.c:790:17: warning: incorrect type in argument 1 (different address spaces)
net/9p/client.c:790:17:    expected struct spinlock [usertype] *lock
net/9p/client.c:790:17:    got struct spinlock [noderef] <asn:4> *
net/9p/client.c:792:48: warning: incorrect type in argument 1 (different address spaces)
net/9p/client.c:792:48:    expected struct spinlock [usertype] *lock
net/9p/client.c:792:48:    got struct spinlock [noderef] <asn:4> *
net/9p/client.c:872:17: warning: incorrect type in argument 1 (different address spaces)
net/9p/client.c:872:17:    expected struct spinlock [usertype] *lock
net/9p/client.c:872:17:    got struct spinlock [noderef] <asn:4> *
net/9p/client.c:874:48: warning: incorrect type in argument 1 (different address spaces)
net/9p/client.c:874:48:    expected struct spinlock [usertype] *lock
net/9p/client.c:874:48:    got struct spinlock [noderef] <asn:4> *

Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>
---
 net/9p/client.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index fc1f3635e5dd..807e0e2e2e5a 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -787,9 +787,15 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	}
 recalc_sigpending:
 	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
+		struct sighand_struct *sighand;
+		rcu_read_lock();
+		sighand = rcu_dereference(current->sighand);
+
+		spin_lock_irqsave(&sighand->siglock, flags);
 		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
+		spin_unlock_irqrestore(&sighand->siglock, flags);
+
+		rcu_read_unlock();
 	}
 	if (err < 0)
 		goto reterr;
@@ -869,9 +875,15 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	}
 recalc_sigpending:
 	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
+		struct sighand_struct *sighand;
+		rcu_read_lock();
+		sighand = rcu_dereference(current->sighand);
+
+		spin_lock_irqsave(&sighand->siglock, flags);
 		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
+		spin_unlock_irqrestore(&sighand->siglock, flags);
+
+		rcu_read_unlock();
 	}
 	if (err < 0)
 		goto reterr;
--
2.27.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

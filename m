Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D7D3E5B08
	for <lists+v9fs-developer@lfdr.de>; Tue, 10 Aug 2021 15:21:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mDRgn-0006A2-6I; Tue, 10 Aug 2021 13:21:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <islituo@gmail.com>) id 1mDRgl-00069v-7Q
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 13:21:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SX74JVl12Ur/MSUH0EdL9xrO+WJ2AVt5+Tteuxj1iUE=; b=IyUVBMXpPCiFwMRT3TQrZ/PQTn
 dmXeAUJ89OMp+sE3i8sKFubttDu17W3ulQkKBELXXvcBiV8qML+rc9P/8+JSc7zcu1uWHoBkn61yV
 pDcJPSydtHEM4epYhicpKYYqmsrJifoMynEFPHZmp/7GtCjJL6Wn6RcImmvIeBq3Kb3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SX74JVl12Ur/MSUH0EdL9xrO+WJ2AVt5+Tteuxj1iUE=; b=C
 6xVevvo8zpk/FrFPESNKpsFdf8azS2LYT3ZsqElSeFNr2aPyxOjgud5C9UO+cOcDuxe9f95/979Hl
 Lr9ocnIanb/57HRXt0RU3t0QoFd8Y+HZAf3Lre+JnsJ1yUZvL9URdhicXX6CcPNFRcN183AA06HY9
 eFEIO6Ey0i3lTVj4=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDRgc-0000KS-Oi
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 13:21:03 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 fa24-20020a17090af0d8b0290178bfa69d97so5423252pjb.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 10 Aug 2021 06:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX74JVl12Ur/MSUH0EdL9xrO+WJ2AVt5+Tteuxj1iUE=;
 b=ZhPaZuwFIGrAHCxFjgMdx8S9KUmp6xSb6B0FbPA/mWapTqlnPJMTh6DehZh5D/JDQY
 2UCY8yhkpFC3QaZXwKOSyB36+p5WlZM8+3iIvBakUdOYDCR2P3XDPSuRA79NpbwLFwkR
 egAhSwRa8UnENnklifmNtWWec7Us8sFTihiJ6CW53D1tk8GVKn9uuiVUfN9oJOgokMFB
 DEKBgLD9W3ECSRaiVkBX1YsDweATsShalR1ws4wOfGh2UKqTx1a2UvxJ/N9K/LGVNTqA
 Mi72SnOhfwmqqAEIOcfPTGZfzhjTzsQP6dLXrgXHFDQolUrKgvfU1u1TIme93aXan1bV
 4C4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SX74JVl12Ur/MSUH0EdL9xrO+WJ2AVt5+Tteuxj1iUE=;
 b=tU0dIp8r2FiWR2/UU+KUUJmRUz36N3n56Jxut/u/kYAeYdJS96O071PAw8A91bFmTv
 PYf1ReK9jNej66wKqwHZmk6etTpX/niZzRIn3tyY6yAFMkOmaDvmFphyr6W2jjmnG7xQ
 zUrKxW0xoKNMfE9eNU5DrN/tDVDzSAHRJS4DRnG8x3TknsjletMfQctSmIQYZFFF+jDy
 PrzmyMGGI9hlpxqvq/T1HQuWzqaHlCDGnPGU3lAl/BH6tyvivkanaMirC+VIbDtXC5Co
 BT5IWEgHUOO9E/3Ocmc2UUYr2ggnaxIt+Cb9Td/TkfdySvXbFBRS1WI5Svh+bBKXJVG/
 klvw==
X-Gm-Message-State: AOAM5332MvXzspV66zdmzXmxnB0ZCF2pc/Jf/s3lxhYF9zxdUandIpOZ
 ZMttW8RpGxvxdtmCdw1Ahdc=
X-Google-Smtp-Source: ABdhPJx/6lEyuHm6rBEtovKxgRhP6PBxVM7h8vp0TYEaBFVR627ybgDFXrKOrR3RClXkvqTksDYjSw==
X-Received: by 2002:a17:902:dcd5:b029:12d:219f:6c04 with SMTP id
 t21-20020a170902dcd5b029012d219f6c04mr10190091pll.7.1628601649245; 
 Tue, 10 Aug 2021 06:20:49 -0700 (PDT)
Received: from localhost.localdomain ([45.135.186.40])
 by smtp.gmail.com with ESMTPSA id c23sm24208897pfn.140.2021.08.10.06.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 06:20:48 -0700 (PDT)
From: Tuo Li <islituo@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 davem@davemloft.net, kuba@kernel.org
Date: Tue, 10 Aug 2021 06:20:07 -0700
Message-Id: <20210810132007.296008-1-islituo@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (islituo[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mDRgc-0000KS-Oi
Subject: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereference in p9_cm_event_handler()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 baijiaju1990@gmail.com, v9fs-developer@lists.sourceforge.net,
 TOTE Robot <oslab@tsinghua.edu.cn>, Tuo Li <islituo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The variable rdma is checked when event->event is equal to 
RDMA_CM_EVENT_DISCONNECTED:
  if (rdma)

This indicates that it can be NULL. If so, a null-pointer dereference will 
occur when calling complete():
  complete(&rdma->cm_done);

To fix this possible null-pointer dereference, calling complete() only 
when rdma is not NULL.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Tuo Li <islituo@gmail.com>
---
 net/9p/trans_rdma.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index af0a8a6cd3fd..fb3435dfd071 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -285,7 +285,8 @@ p9_cm_event_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
 	default:
 		BUG();
 	}
-	complete(&rdma->cm_done);
+	if (rdma)
+		complete(&rdma->cm_done);
 	return 0;
 }
 
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

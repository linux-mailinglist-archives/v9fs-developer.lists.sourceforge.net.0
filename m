Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ECC3827A8
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 May 2021 11:00:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1liZ6r-00013F-4g; Mon, 17 May 2021 09:00:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xieyongji@bytedance.com>) id 1liZ6o-000131-DZ
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 09:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RMDgH8NUsXdrAybpXac96tA5zmX/PfFeEJylm6gXF/Y=; b=NgcZ9RzASg5iDJcveYJsJOTRJC
 GEBzXCR20KvFaZ9KYzk1y/DwVhu59oQt8uTY+5pWHcVoat71FCNnAhN1gigpk0GmbXr4SxWQoFudt
 dfDP9W7Th28Mex3edA8zwUtbIuxU93S1xzvLeJx3zjrAwCwy8w4qThm+U2iAPZRiBiF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RMDgH8NUsXdrAybpXac96tA5zmX/PfFeEJylm6gXF/Y=; b=H
 GjAHmPffDrRlToycYG7xGGRLZCKhle8IJac7wrq5M7CNzUocQzMZZL1DL4aGWZwtyEa/lVSOl6OdR
 Xt/nZg4p++dahErUq3+SJcwQi8QqsLUk+kfY6niq0B+ghBS/efaVnu5GNn8D25ibzpY06v82bzJmU
 TnSCeGKJ65HwldJA=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1liZ6Z-00BE21-Az
 for v9fs-developer@lists.sourceforge.net; Mon, 17 May 2021 09:00:20 +0000
Received: by mail-il1-f175.google.com with SMTP id z1so5490743ils.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 May 2021 02:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RMDgH8NUsXdrAybpXac96tA5zmX/PfFeEJylm6gXF/Y=;
 b=0qusV1boVsPlX+7AgoQ18cI3Y8pm9LHdrDPY+UvTOqNWmZAwrDAimV2xeOmkzU9ZTX
 XWZKKxoJHfGkwdFrly/MA5VaGjiIt4L9LM2xnhOwnUpVta82Eht4vZxw1MxYZxozeS1u
 xO87SCpmc81u3ReYF8bHwh6xCzkL0ytb9osq8foMEM5WdhLu3bI2LnbUeSYVBVcGZGJA
 tGe1p9uSeAbckptj0gPYhwzg38V8l93mVXBUogxF65PUxhYRpZz9+wh/ga0HgfDsEZON
 Gr4XcdBwpq2HK9GVacGn5POCSx3GUHglrX9nB+e/iIo+2d8Dg8gQhnnY8kKDZ/h7Vabg
 oFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RMDgH8NUsXdrAybpXac96tA5zmX/PfFeEJylm6gXF/Y=;
 b=ROfwjnMNclNxZiQO/3rgR5btm/lhbvoVnohSVcsyuOcvZpsnPPMqKfZ8feu2uDc6at
 4NS3rlTWFY+fwhWImIxAX+9t4BbC8GKTJBRwWad+hyv5jPH/Grf922o9ufNV8P7i7xvE
 TKE6NI7PRKgJMfGaU1E58CIos0oAJm/KNLWyn43nbn0SGHjQoerRuVekdBlh37fgBDDc
 2AbZAxXsp9ZBymvGDPWbzOkGZxcyN2SXF0gAcHfNfWRbfoOxAodLVQ1d1qPWmDNcd395
 BtUDTWaSmWWrmj5602K7Nm2DwczYIBVU6agSFK9g6YeKJhalG/Tv7L/TZeuNHwDN/yjK
 yrgw==
X-Gm-Message-State: AOAM532pzV+NGAvE5Xuzl59WXS5LQq+geSjswRUoeCmPmZJpU2JV6Ezz
 PufUn+MBkbpzI3l4+CXqYYUEi4Mw+KeL
X-Google-Smtp-Source: ABdhPJxh6LSsPVIjPg3u3LKm/qBxwTfiyANDf+B1Xc5wCYehe5mn8WR70NAnjZHKmOrLfYusUyyFZQ==
X-Received: by 2002:a65:6a08:: with SMTP id m8mr59650783pgu.146.1621240576757; 
 Mon, 17 May 2021 01:36:16 -0700 (PDT)
Received: from localhost ([139.177.225.253])
 by smtp.gmail.com with ESMTPSA id c16sm2400936pfd.206.2021.05.17.01.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 01:36:16 -0700 (PDT)
From: Xie Yongji <xieyongji@bytedance.com>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Date: Mon, 17 May 2021 16:35:57 +0800
Message-Id: <20210517083557.172-1-xieyongji@bytedance.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [139.177.225.253 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1liZ6Z-00BE21-Az
Subject: [V9fs-developer] [PATCH] 9p/trans_virtio: Remove sysfs file on
 probe failure
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This ensures we don't leak the sysfs file if we failed to
allocate chan->vc_wq during probe.

Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
---
 net/9p/trans_virtio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 93f2f8654882..0960ed1ad7ac 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -610,7 +610,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 	chan->vc_wq = kmalloc(sizeof(wait_queue_head_t), GFP_KERNEL);
 	if (!chan->vc_wq) {
 		err = -ENOMEM;
-		goto out_free_tag;
+		goto out_remove_file;
 	}
 	init_waitqueue_head(chan->vc_wq);
 	chan->ring_bufs_avail = 1;
@@ -628,6 +628,8 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 
 	return 0;
 
+out_remove_file:
+	sysfs_remove_file(&vdev->dev.kobj, &dev_attr_mount_tag.attr);
 out_free_tag:
 	kfree(tag);
 out_free_vq:
-- 
2.11.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

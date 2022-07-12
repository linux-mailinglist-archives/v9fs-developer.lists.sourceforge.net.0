Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A3571784
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 12:45:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBDOA-0008RU-76; Tue, 12 Jul 2022 10:45:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hbh25y@gmail.com>) id 1oBDO5-0008QG-PI
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 10:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LHFcdt/M7EFun7/LtZfwRF7i8tXqFEDcoXVMpTsmevI=; b=gJ7ef6FTrWShgCUIwj7HSxYfLR
 IUZQx7tp1ae9r2uPJsTy+vCmzl+71Tal77r1oM0NBZf5z7N/FTvIDJ9CKbzpS70jtK6i8vKCbFivd
 qp+JO8UtlswWWgx/9rEPochXpJn8mvdh9rmm5rVs792rCubkRgp+qtDWpPgPD97+lWu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LHFcdt/M7EFun7/LtZfwRF7i8tXqFEDcoXVMpTsmevI=; b=f
 HWowYzo/0uMHx8aNaZaziZ+zWgv9lkXhhkI43RMNepwzX+2B2kUW34SJCFiQNB7xdl4y3RtL/Wgdx
 Lu61LUrNbQ3xYIWFdgG1OtOVu+AhDa1D1ApHYN01O3RAd+EFIEri1kn2Vk8TZCF+I2m4dbmr2Ewlf
 DcBL37ULvpd3ViLg=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oBDO1-00EhM0-5D
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 10:45:04 +0000
Received: by mail-pl1-f196.google.com with SMTP id b2so6913725plx.7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Jul 2022 03:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LHFcdt/M7EFun7/LtZfwRF7i8tXqFEDcoXVMpTsmevI=;
 b=CM6E0gWMLJ5qt1wx2A0YMDp8y9kCQQgtYbH1SKHLAFqJVb63vwoe/DZn5fwC1LwOcr
 Y0vht9vEm5cX6CMdJSfktp7VvHZBTWyvjBZJs13dbyWLzPZzh0TIgWi4JjL01TuBUwxJ
 KjOk/5ujryU/QK8/g0zh2ogzWP/RIrtGFfpZ+mBKgNBXf94PbeCTDVelL/n66A/cWl+d
 8OTa0f8rMJNoKL2KuvMIFuUO3/IWeBz6SH+5IQFEBfej9z3j5PvdBIh6QHflaVwSfQsr
 5ApVBLrcIxJUsFf4blFPQMH6WlOz8X8Uj4Z/8Voz4Gnu+Lj04YOYZdJzBGMeY8NPtpUY
 Z/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LHFcdt/M7EFun7/LtZfwRF7i8tXqFEDcoXVMpTsmevI=;
 b=uhDS8/Hxr8NwLITO/ylCPZ9ExP1MFBmt/bGNLHWXTox66lImL48+C3P+vaCKDJadis
 yUCY0ZNC8tzPG2cY6ZeeCXazY2UMMmgJYpsHVOpA1cCiV4ar/23mK51SZKkoQfYcopAg
 GnXSy+bIVRkAH8UConET3Igs+JmWgwynRwvqWl/YgTCBq1dZ1ml3csWfNRvs8HaXjKiw
 nqNrC1OJYhnr3J2hkLzsEF+ZHxAj6xYAn4C9nbMncekPj0iwS44ChJS0+P4AEnexWhw5
 HNVRR19BWvyL33TQ25fJHhwS710Oho2s+6mKPlzTjmJF3iLUz+LvTJr8lilPtil+MljA
 9eHA==
X-Gm-Message-State: AJIora94ZRdmxUDB2iYSr7IX2tXLPcC0HXXjRtiit83w3WoFrhHR6ljp
 QeD5xbZaQuIYO/RcXmZVxc8=
X-Google-Smtp-Source: AGRyM1sY+jWNlR0EFF9t2eMZ6mOWYimqBONWbupdaAhQg9KJfZr6VZpWoVzoBUG0ZYdInWu3ykHutA==
X-Received: by 2002:a17:902:8345:b0:167:879c:abe8 with SMTP id
 z5-20020a170902834500b00167879cabe8mr22981968pln.7.1657622693149; 
 Tue, 12 Jul 2022 03:44:53 -0700 (PDT)
Received: from localhost.localdomain ([223.104.159.146])
 by smtp.gmail.com with ESMTPSA id
 p10-20020a1709028a8a00b0016c0408932dsm6438727plo.129.2022.07.12.03.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jul 2022 03:44:52 -0700 (PDT)
From: Hangyu Hua <hbh25y@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, tomasbortoli@gmail.com
Date: Tue, 12 Jul 2022 18:44:38 +0800
Message-Id: <20220712104438.30800-1-hbh25y@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: p9_req_put need to be called when m->rreq->rc.sdata is NULL
 to avoid possible refcount leak. Fixes: 728356dedeff ("9p: Add refcount to
 p9_req_t") Signed-off-by: Hangyu Hua --- Add p9_req_put in the "No recv fcall
 for tag..." error path according to Dominique's suggestion. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hbh25y[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oBDO1-00EhM0-5D
Subject: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work()
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
Cc: Hangyu Hua <hbh25y@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

p9_req_put need to be called when m->rreq->rc.sdata is NULL to avoid
possible refcount leak.

Fixes: 728356dedeff ("9p: Add refcount to p9_req_t")
Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
---

Add p9_req_put in the "No recv fcall for tag..." error path according to Dominique's suggestion.

 net/9p/trans_fd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 507974ce880c..090337f446d7 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -345,6 +345,7 @@ static void p9_read_work(struct work_struct *work)
 			p9_debug(P9_DEBUG_ERROR,
 				 "No recv fcall for tag %d (req %p), disconnecting!\n",
 				 m->rc.tag, m->rreq);
+			p9_req_put(m->rreq);
 			m->rreq = NULL;
 			err = -EIO;
 			goto error;
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

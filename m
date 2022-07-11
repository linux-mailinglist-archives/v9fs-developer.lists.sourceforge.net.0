Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A95B256D50C
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Jul 2022 08:59:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAnOQ-0003AD-C0; Mon, 11 Jul 2022 06:59:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hbh25y@gmail.com>) id 1oAnOO-00039u-8q
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 06:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GeihzPQ4gDEvIfkX96rheatYD9BEj0zBOuDE5t7m6pM=; b=Sfw5JXYHv10THKX1ssFPMQPE43
 dUCggAc12FogzH6FZJYZTmm4azjo4tGP7Sg/9P8cx6MNGdBH3QS9hHH3yMAnIBoBvfpGTePkPIrst
 QNvTINLlkMvnMn2v2LYMMk10zHhsylvkDWLgKsbDS4iDJqweSIJaDBhpjvjD5qL4VF44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GeihzPQ4gDEvIfkX96rheatYD9BEj0zBOuDE5t7m6pM=; b=Z
 eWeeEsq5hlUs7W6HhdnNvsX1fYhvDW/Sv5x4ZIGFJ79gUx4EHWF9I7j/Rqz1ywsPSxm08Eq8lm68h
 rWfrpXk5tqU8D0ZjaDNWC/XYLVQtzJk3IPfOWOEJM6YUxRpCto73czsFS2MV3IMb5mHY6xoDSeW/N
 hlN5qC4q93x83INE=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oAnOJ-0004bU-SY
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 06:59:40 +0000
Received: by mail-pj1-f67.google.com with SMTP id
 j1-20020a17090aeb0100b001ef777a7befso5319902pjz.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 10 Jul 2022 23:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GeihzPQ4gDEvIfkX96rheatYD9BEj0zBOuDE5t7m6pM=;
 b=EIA8veF/UGA6fCHdCpgvNU75iz7I0Xiw+YjywF2DlGNY3pW+zQaJqrxRSJiMRssuSM
 9kL0NmgU/ZtKKMJTLwYUROa6z4I/fy6H7GVLPf9ar03+iNjIJO/P96wjO+p7Zejopony
 dEqnA5B8YWWyfSbOj3OqqLhOHQ7YgC95YVeuCUVSrWjPJt0wUMZtleG+W/3nPs8WJAjm
 2n6Gj4A8CSVh0gg2kEDXIX9OdwgefV+I3pxo6FtJpG/Uql4lD9X1yf+3zA3wLdiknrlc
 86LQpDBNszaGwTe0G9VcKxXYNif6TJwMvGwiPXsTaPZHtPFtM/eXtBBuJFx8J5wekm60
 BSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GeihzPQ4gDEvIfkX96rheatYD9BEj0zBOuDE5t7m6pM=;
 b=3s07ZY10li/Ic4NRuTuhqFUA6yPsO0k8R9KnrIfKyxQtmbRY36q0L1VUn/jj5nLJuD
 6/HpY7keXkh83oTHTZWb3DtAY8dF1vT1dmNZkyYd72ehtAj05/bH71DJ4uexpXA4HD89
 cWhWfNHiel5Kagp1pErHVxyueGuLNVwBx7/Oxq8tlSi9tSIdVUe2MiEt6NDLzZ0Kvrv6
 s4w51OW6L61fkg6bly/ASL64Z2NNZChBIHBZe38qs6Bs505eL04xPmZQSexLWaTiDTQ5
 jFg9O+CIFwVLpY1Nm/Yh9ckqxQP5uhIwYQ93R08/mlK6UZaBA5jBF0hFEcW4VI1lm62T
 EzjQ==
X-Gm-Message-State: AJIora8FrgYTp5fxcCaV/GysN/p+e1ju8PKeySoR2Qxi+6srnnV4tBjc
 5w/m/HVDYlHfHTl+F8unG1k=
X-Google-Smtp-Source: AGRyM1uCInwr/NUdysJ0b7sefaWPA1c+O7e2tIqHEY64v2pvje38AiK2iGkVPsi0juW35BrPY2yGEg==
X-Received: by 2002:a17:902:e850:b0:16c:41d1:19d2 with SMTP id
 t16-20020a170902e85000b0016c41d119d2mr5672566plg.125.1657522770331; 
 Sun, 10 Jul 2022 23:59:30 -0700 (PDT)
Received: from localhost.localdomain ([129.227.148.126])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a170902988700b00168c52319c3sm3910010plp.149.2022.07.10.23.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Jul 2022 23:59:29 -0700 (PDT)
From: Hangyu Hua <hbh25y@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, tomasbortoli@gmail.com
Date: Mon, 11 Jul 2022 14:59:07 +0800
Message-Id: <20220711065907.23105-1-hbh25y@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  A ref got in p9_tag_lookup needs to be put when functions
 enter the error path. Fix this by adding p9_req_put in error path. Fixes:
 728356dedeff ("9p: Add refcount to p9_req_t") Signed-off-by: Hangyu Hua ---
 net/9p/trans_fd.c | 3 +++ net/9p/trans_rdma.c | 1 + 2 files changed,
 4 insertions(+)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hbh25y[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAnOJ-0004bU-SY
Subject: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work() and recv_done()
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

A ref got in p9_tag_lookup needs to be put when functions enter the
error path.

Fix this by adding p9_req_put in error path.

Fixes: 728356dedeff ("9p: Add refcount to p9_req_t")
Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
---
 net/9p/trans_fd.c   | 3 +++
 net/9p/trans_rdma.c | 1 +
 2 files changed, 4 insertions(+)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 8f8f95e39b03..c4ccb7b9e1bf 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -343,6 +343,7 @@ static void p9_read_work(struct work_struct *work)
 			p9_debug(P9_DEBUG_ERROR,
 				 "No recv fcall for tag %d (req %p), disconnecting!\n",
 				 m->rc.tag, m->rreq);
+			p9_req_put(m->rreq);
 			m->rreq = NULL;
 			err = -EIO;
 			goto error;
@@ -372,6 +373,8 @@ static void p9_read_work(struct work_struct *work)
 				 "Request tag %d errored out while we were reading the reply\n",
 				 m->rc.tag);
 			err = -EIO;
+			p9_req_put(m->rreq);
+			m->rreq = NULL;
 			goto error;
 		}
 		spin_unlock(&m->client->lock);
diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
index 88e563826674..82b5d6894ee2 100644
--- a/net/9p/trans_rdma.c
+++ b/net/9p/trans_rdma.c
@@ -317,6 +317,7 @@ recv_done(struct ib_cq *cq, struct ib_wc *wc)
 	/* Check that we have not yet received a reply for this request.
 	 */
 	if (unlikely(req->rc.sdata)) {
+		p9_req_put(req);
 		pr_err("Duplicate reply for request %d", tag);
 		goto err_out;
 	}
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

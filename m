Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 703DC5E54EE
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Sep 2022 23:09:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ob6yZ-00023V-J6;
	Wed, 21 Sep 2022 21:09:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <floridsleeves@gmail.com>) id 1ob6yY-00023P-6k
 for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 21:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OkoTVV4SBgTzkQzKszTQfUnVz7OQX0l34N3q+KJMvSw=; b=WzbOT64OsigFo5tBowqDQpf5Xn
 zn3y+MfShuhQQ9lZIH1UhLLjhOLI5q2EEkqPv38eCS/73hrDEi2MjCNh/2KXwTBbvdAF5gGBK6ck7
 n5585OTiFvmGb/Lj+4ek9QhkVXHFhCRspHi08sSdhkJuGhgy9Hf7ynlMWx+xoRtufen0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OkoTVV4SBgTzkQzKszTQfUnVz7OQX0l34N3q+KJMvSw=; b=U
 YL2duRlxbROQRmUVYRLkviUjz6g2t5Jwoee3hUYIo0eT1XpChK8MmWsNn/XDg6qAXBMqm4ReQlX/n
 sLzgJrThugi5R1G1om7cV4XscUPe6eSP/gqfl+K2Xvu1LPVQvVMLHQaroIoJMDlbKBEavcSdoRyXJ
 SztEUcedw9gdoM3c=;
Received: from mail-pj1-f50.google.com ([209.85.216.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ob6yX-00FsDY-L9 for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 21:09:46 +0000
Received: by mail-pj1-f50.google.com with SMTP id
 q35-20020a17090a752600b002038d8a68fbso108585pjk.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Sep 2022 14:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=OkoTVV4SBgTzkQzKszTQfUnVz7OQX0l34N3q+KJMvSw=;
 b=MPYAvwowGMSZPqlWXyQU18X5VI2P59py1Bd9aqHv2Gf+ln8J4H6G/7SbHKoVlvJEF/
 pBCqdtq7ZMFGKWEUFLzEs5a1hYnEnAA6dAI1ymFesbCmmol5o7IlQ6DWx/JSZMj/4Blh
 yj53MfiJxy2ZKyG2Z0rmee/tmHaq0KLLa3YWKYgRHaVjO/iDyjP+4xtXSdR0KVTxEj5X
 27LfrGTDbyWKTLiXkhs5GlySAY0mKCCbY5xVRLyOWLGR0dQ769yMspjn2ym9SXvx/VNc
 4ALJCN5pWjvcfou5wGsmgrpcGMUUK5V9yCxcK1uVmsVeH2WNm3t7kEJyhYUA/lmJRVq1
 FGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=OkoTVV4SBgTzkQzKszTQfUnVz7OQX0l34N3q+KJMvSw=;
 b=jLOGnhnm9yPVnYBNqSOnukUAzSs9yEn6EDYbSdbeMpt1sg0mC850Y6UCbWXcbbiR6e
 vsm+adqFQU4NXuCyVLYYk9DRB/JL8nSs3vZznea7rudHXadT+DnzTWmx2Smk7axsGGOV
 BkKHjRyQSZ01eQsA9llblWBGmU3eLmImpQeLmvvzahzgh0A2f0jdkjFp7mKOC20nH5xB
 lZljhi0nOrhC3WMoWc5nm8aZ1eBJOuVK+FX1KSkV3gACosSm+G3vxFwQUtMnIhjecdLz
 uwHe55Y/xlGuWSE8NlKnDDFFfIcFCYDK4aR2HsqHNi/021ZVtncqUnowwUcE49BkoYCh
 b4Rw==
X-Gm-Message-State: ACrzQf24Td2FJ36Jmsmmo16UNpu/0GmvdGRBsqCNtPS0zJnn99HkRN1m
 UFbuYqICNnlowdDLmZczkYcNOVWQIGCoqw==
X-Google-Smtp-Source: AMsMyM5BmO04+xD5Q7KpFxPEqCJL3CWGCBwvpDtD4KIQs8+wMd5/79TnTEagwu5h/YLW31sZKSm/vw==
X-Received: by 2002:a17:90b:4d8c:b0:200:7cd8:333e with SMTP id
 oj12-20020a17090b4d8c00b002007cd8333emr48931pjb.95.1663794579746; 
 Wed, 21 Sep 2022 14:09:39 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 q59-20020a17090a4fc100b001fd7fe7d369sm2277742pjh.54.2022.09.21.14.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 14:09:39 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: netdev@vger.kernel.org,
	v9fs-developer@lists.sourceforge.net
Date: Wed, 21 Sep 2022 14:09:21 -0700
Message-Id: <20220921210921.1654735-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  parse_opts() could fail when there is error parsing mount
 options into p9_fd_opts structure due to allocation failure. In that case
 opts will contain invalid data. Signed-off-by: Li Zhong --- net/9p/trans_fd.c
 | 4 +++- 1 file changed, 3 insertions(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [floridsleeves[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ob6yX-00FsDY-L9
Subject: [V9fs-developer] [PATCH net-next v1] net/9p/trans_fd: check the
 return value of parse_opts
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 edumazet@google.com, Li Zhong <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

parse_opts() could fail when there is error parsing mount options into
p9_fd_opts structure due to allocation failure. In that case opts will
contain invalid data.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 net/9p/trans_fd.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..11ae64c1a24b 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1061,7 +1061,9 @@ p9_fd_create(struct p9_client *client, const char *addr, char *args)
 	int err;
 	struct p9_fd_opts opts;
 
-	parse_opts(args, &opts);
+	err = parse_opts(args, &opts);
+	if (err < 0)
+		return err;
 	client->trans_opts.fd.rfd = opts.rfd;
 	client->trans_opts.fd.wfd = opts.wfd;
 
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

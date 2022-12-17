Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F0D64FBA8
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 19:52:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6cIr-0000gO-16;
	Sat, 17 Dec 2022 18:52:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6cIo-0000gG-QA
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VW1TWLbK9ZK24OXnnpvpdNHI7c97JNThnJ7wV1/ZKgI=; b=HXJOPv+IG7GbJtAP0fiyCkhvpz
 uA/HG3UiPthGkzoZfVFMAcSpDsxEOXlXGkSTfn5cUeTxS5HkXCBV7iKJGXbGmcBGf7LCl8/YFkQkv
 Mnx1hDn9m7naF8j+gKUTfngGUGHiiUKfe38+mSDMD5h9KhrvOLGsRJiF2y9KV1f/bbfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VW1TWLbK9ZK24OXnnpvpdNHI7c97JNThnJ7wV1/ZKgI=; b=F7Q0f7g8PtcG+hrG69sFy9qRPF
 X9LoHb5ImJ5EtWOTySxrXqdRZ7fdsMrV7ZR7gBnatqWJriIq8CTE//cM7b/zn8AXYfC22a8URBF+5
 /OQow/8pTGAgzk7FxNQr7jIiw5VuJV2IKfJZzK/pU+Oyx2+R2qHINfi88nlhmdKNkkUw=;
Received: from ms11p00im-qufo17291601.me.com ([17.58.38.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6cIn-0005fm-4S for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671303167;
 bh=VW1TWLbK9ZK24OXnnpvpdNHI7c97JNThnJ7wV1/ZKgI=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=VMV2AiGcYTjsTSsq/4VjnkUKgqW/tkUn5SWP902HNfcwghcCXBvsc82aFkB/e5kX9
 mZ2f1HNtzNqZRwoZ/yllnlc4LYBxPM1S4ZQBbJ/y70cj6SqTtcfowNWv32DNAPUaC4
 J1sRFX7rK8sQzX162XYesCJ2M/59PPqEPKxqkeVXx8U77829ZKqsBs/JK1rVDQLZK4
 Yv+xJG5dfTgQOSUIvnb+6eGcN2Fs8iDmtO7j9VeqxgbNiljtf1l95sYtQ7MBHLwTeC
 1xsA+JwbloOWPKPPRn/Mw2udUE0h9eqgeirnO2Lm8E+BrlwtSfWMbjGQZqKKW2qCUJ
 n38/6w737CR9w==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291601.me.com (Postfix) with ESMTPSA id DEBE83A0553;
 Sat, 17 Dec 2022 18:52:46 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 17 Dec 2022 18:52:05 +0000
Message-Id: <20221217185210.1431478-2-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221217185210.1431478-1-evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-GUID: yBhRS4Bm-FgZwNToO7g-aye-4DzSZ79_
X-Proofpoint-ORIG-GUID: yBhRS4Bm-FgZwNToO7g-aye-4DzSZ79_
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 adultscore=0
 mlxlogscore=805 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170174
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add maximum p9 header size to MSIZE to make sure we can have
 page aligned data. Signed-off-by: Eric Van Hensbergen --- net/9p/client.c
 | 2 +- 1 file changed, 1 insertion(+),
 1 deletion(-) diff --git a/net/9p/client.c
 b/net/9p/client.c index fef6516a0639..416baf2f1edf 100644 ---
 a/net/9p/client.c
 +++ b/net/9p/client.c @@ -28,7 +28,7 @@ #define CREATE_TRACE_POINTS #include
 <trace/events/ [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p6cIn-0005fm-4S
Subject: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account for p9
 header
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
From: Eric Van Hensbergen via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add maximum p9 header size to MSIZE to make sure we can
have page aligned data.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
---
 net/9p/client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index fef6516a0639..416baf2f1edf 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -28,7 +28,7 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
-#define DEFAULT_MSIZE (128 * 1024)
+#define DEFAULT_MSIZE ((128 * 1024) + P9_HDRSZ)
 
 /* Client Option Parsing (code inspired by NFS code)
  *  - a little lazy - parse all client options
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

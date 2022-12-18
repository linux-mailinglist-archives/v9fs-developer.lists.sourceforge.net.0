Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8444B650587
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 00:23:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p72zq-0002y0-Fk;
	Sun, 18 Dec 2022 23:23:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p72zo-0002xt-W3
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rgdJQ00HlDR3n1V78o02Qz8Qw2vR4vsNwWkDiooEv3U=; b=hjkV2WxZIvjYNObpNUkj6fYHBf
 EXe+vGK/Ny1JuckH8/OBwH0S8s5bJe1zpCeDFGybBg1eihnIICFs9lZWea6WQ/x0YGUYGKLiKiNse
 wn31I5Qd6eeC2YNT6FeAxSZySXeF1XhNrLB61INcGR4SV67EiSZ48K7WNrKmCHHy6zwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rgdJQ00HlDR3n1V78o02Qz8Qw2vR4vsNwWkDiooEv3U=; b=kHjyhhKj4WBzJr8L81BgYy2SLb
 qr35T44DS4c1LbBe2NcTKCz1dKHVV/BZxHfRmqzxVzZkcbKCzvYR9D04yRYUwZNObfCPNpE2PE2rN
 dF6zoYl96mjhvmfUWgw4PUjtPRbvYyRpp8wnJ1kkISSpMSGdueOaNirwCSwS8Wr81CAQ=;
Received: from ms11p00im-qufo17281301.me.com ([17.58.38.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p72zo-004Br6-Bu for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:23:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671405776;
 bh=rgdJQ00HlDR3n1V78o02Qz8Qw2vR4vsNwWkDiooEv3U=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=0IC6x3I7tC2dhIsfNw+doBy2YcsYehrUaei/sIqDeCjO0aY1eSPUCVdQHTqklamq3
 EaAWOhfBDjtgxE8MlZahSA1x6LmQ6gDZlirhMxcJlaCWBOGgFG27ZFYfK8M2y4Fjfr
 S81VQRwtjuP6kSdI2jqP4u5l/uSiQPUqg/J3gqo6kzLbL+BuWfr29zfmvVAjLW11+h
 w2patQyiwA61qJUhyIS1x9I+3zSQWzXgRxAsc4O8qYMsgl9xSAa8lM4F3NbRNnxIhA
 n3SPbShWko1bv/MXvOKQlJmjru5Hf5mehxM3ZSEihwt1BG2VQYMITdOniQxOpQ9q1V
 a3CzYHs9QthFg==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17281301.me.com (Postfix) with ESMTPSA id C5C46CC036F;
 Sun, 18 Dec 2022 23:22:55 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sun, 18 Dec 2022 23:22:09 +0000
Message-Id: <20221218232217.1713283-2-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Mws2nVIwpl5zapwvrA8abhdMpb2AhyYp
X-Proofpoint-GUID: Mws2nVIwpl5zapwvrA8abhdMpb2AhyYp
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=610 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180222
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add maximum p9 header size to MSIZE to make sure we can have
 page aligned data. Signed-off-by: Eric Van Hensbergen --- net/9p/client.c
 | 6 +++++- 1 file changed, 5 insertions(+),
 1 deletion(-) diff --git a/net/9p/client.c
 b/net/9p/client.c index fef6516a0639..f982d36b55b8 100644 ---
 a/net/9p/client.c
 +++ b/net/9p/client.c @@ -28, 7 +28, 11 @@ #define CREATE_TRACE_POINTS #include
 <trace/events [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.50 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p72zo-004Br6-Bu
Subject: [V9fs-developer] [PATCH v2 01/10] Adjust maximum MSIZE to account
 for p9 header
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
 net/9p/client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index fef6516a0639..f982d36b55b8 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -28,7 +28,11 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
-#define DEFAULT_MSIZE (128 * 1024)
+/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
+ * room for write (16 extra) or read (11 extra) operands.
+ */
+
+#define DEFAULT_MSIZE ((128 * 1024) + P9_IOHDRSZ)
 
 /* Client Option Parsing (code inspired by NFS code)
  *  - a little lazy - parse all client options

base-commit: b7b275e60bcd5f89771e865a8239325f86d9927d
prerequisite-patch-id: 031bd397a760838e416ddba75243269ce906c368
prerequisite-patch-id: cf70b974aff8376ea1bbb41d2606ec93609eecf0
prerequisite-patch-id: 91046bd699f2be9a4c9c9bf317693039a4374fbe
prerequisite-patch-id: 28c9dc76bc302670a661fef2c4807d77038ca054
prerequisite-patch-id: 9e6a0ffb4d37f179b3ef3b920d883a464c5c3083
prerequisite-patch-id: f1ef66e1bee57cf76948e8d7d6eca9ef5c335b0e
prerequisite-patch-id: a8342a621d33c26f9347d46c52f076d41d61a946
prerequisite-patch-id: 9117d73d5265a507d68acce493d7f7e623f7a6b0
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

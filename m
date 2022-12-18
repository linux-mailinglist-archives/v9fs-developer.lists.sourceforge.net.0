Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 051DE650597
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Dec 2022 00:24:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p7313-0005BR-Pl;
	Sun, 18 Dec 2022 23:24:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p7312-0005BL-Ml
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oDXYKkCov4vc1fbNoQpiyUCSmJFNPo7qTEDD6t0cO18=; b=jD6qjGO59usrxvh35H+fmPqT7/
 A3HP29zubAmymu4GJdLiqNySWEVydsFTVUUbY0VvZp83YE3xY2+gN7UFApmya+WGTZBHf4Ja9Ntki
 220Ms+EZ0hAI6h2cOolekpJIXvsE10wX2wjupnfHZsb7GpPMOnzBNVGvt7i9NSeGfz1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oDXYKkCov4vc1fbNoQpiyUCSmJFNPo7qTEDD6t0cO18=; b=lHTv7Rj4rf4L2JwnNuOAAvwFa2
 wWwmpCro3as7EM71VyAOPIT5f5IRsAKuViQQGdyiEoyWOu1L1O7NqN1Qlh1nYHSbwlX6lQHLxL+Gw
 99G7WIEps25HY7YOrn0Uvij6yvf97+lyXQd5HSRbAf5iH165qe+AbCtcma91VfNnt66I=;
Received: from ms11p00im-qufo17281301.me.com ([17.58.38.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p7311-004BtZ-Ue for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 23:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671405854;
 bh=oDXYKkCov4vc1fbNoQpiyUCSmJFNPo7qTEDD6t0cO18=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=QToQWNFbYsWTWFfxE5Wy351p/X9UwtN+orRm+H0ebOqVlA5vJ0RRWN6qB4ifVfTMr
 xWsrmhy43epqryCarcl6OhCuTtjdXAAq5lAqg6QYxIPsWGtuHDF8GoySlqyIHL5OM7
 yYE81TCiU0o4BHlJd0/fBTtVnFUftT4WoK1Y9xsXiPTQFwBOOMjWTkQKxFCEbW07WS
 OPzMmYT20smEJeE7Do6WjgOstd/FLkLM9xb3egbQCRLUHmX7uPSB4Z3UrPcl+VB78v
 uPgGLUJOUubWfP15la5DJ4c6pHp/6GD9aF4XIq8BefI5NON7d/qER9XGxTjyywAXQ6
 r9vRhjnMRWVBw==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17281301.me.com (Postfix) with ESMTPSA id DB3EBCC036F;
 Sun, 18 Dec 2022 23:24:13 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sun, 18 Dec 2022 23:22:21 +0000
Message-Id: <20221218232217.1713283-8-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221218232217.1713283-1-evanhensbergen@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: dzmLWAsZB3CFFZNJGNkOrzDsXxIHhK7j
X-Proofpoint-GUID: dzmLWAsZB3CFFZNJGNkOrzDsXxIHhK7j
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=595 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180222
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add some additional debug flags to assist with debugging
 cache
 changes. Also add some additional open modes so we can track cache state
 in fids more directly. Signed-off-by: Eric Van Hensbergen ---
 include/net/9p/9p.h | 5 +++++ 1 file changed, 5 insertions(+) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.50 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p7311-004BtZ-Ue
Subject: [V9fs-developer] [PATCH v2 07/10] Add additional debug flags and
 open modes
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

Add some additional debug flags to assist with debugging
cache changes.  Also add some additional open modes so we
can track cache state in fids more directly.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
---
 include/net/9p/9p.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 429adf6be29c..61c20b89becd 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -42,6 +42,8 @@ enum p9_debug_flags {
 	P9_DEBUG_PKT =		(1<<10),
 	P9_DEBUG_FSC =		(1<<11),
 	P9_DEBUG_VPKT =		(1<<12),
+	P9_DEBUG_CACHE =	(1<<13),
+	P9_DEBUG_MMAP =		(1<<14),
 };
 
 #ifdef CONFIG_NET_9P_DEBUG
@@ -213,6 +215,9 @@ enum p9_open_mode_t {
 	P9_ORCLOSE = 0x40,
 	P9_OAPPEND = 0x80,
 	P9_OEXCL = 0x1000,
+	P9L_DIRECT = 0x2000, /* cache disabled */
+	P9L_NOWRITECACHE = 0x4000, /* no write caching  */
+	P9L_LOOSE = 0x8000, /* loose cache */
 };
 
 /**
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

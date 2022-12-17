Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22A64FBA9
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 19:53:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6cIu-0000gk-BA;
	Sat, 17 Dec 2022 18:53:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6cIr-0000gU-RN
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0u7CleR3qq8AvpdUYPg91vFZVCJ99OPUJfM/02vLNlw=; b=ealRstlRg0fpC18xVsUleoASxD
 qriRSufg0vyQRvuxAqyzjp5OPOshkuXXA8nD6U4x1BU+j009PzvfOCPqJeFq4ve9QmSY9hRXMfFm4
 oOHI0NzDI+bQloUXdUQBG3UDLea+DFPKUj/4YQeZo2Af1fXW5Gj42ezKEe6MIl6nMuXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0u7CleR3qq8AvpdUYPg91vFZVCJ99OPUJfM/02vLNlw=; b=RibkRMFLtxxSUsKRhHLi+bMTgf
 7M+O8/lIthQUQIJjTL/dUQ+29UKPjtm1jY2UKUscBws/VPj2Le42MlOqi8XB6Incocl4Rfn5nRbk/
 VEXSA9RoLJ+e2sh47U0wyRSGZTpYAHke6wpdI/djtPQ/uzZHbihpHctoJ7ZKYltfXyRY=;
Received: from ms11p00im-qufo17291601.me.com ([17.58.38.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6cIo-0005fq-92 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 18:52:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671303169;
 bh=0u7CleR3qq8AvpdUYPg91vFZVCJ99OPUJfM/02vLNlw=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=xQLX3oglvw9jj4LBkFQyp7PGYDCx++70+esWXDfKX5PabBmINnGfaKinPlLCrv6Hq
 3CcJ1eLN0gosGZCjVD4HAEm5jMTYwgAn3sJHTZTH49UZL2efdlUZg+dLlhWBlxe56y
 YK29+4Sd1zKeHGsNz26deqg9r6rGyLFMI/dK6UgwnklS7dUkOnWZaTXcGr7DgN9nzv
 DVfuuteo4h2sD6UAABzqrZigg1MdkESwUUN7UZgjahDVVgMV3R1+fPEFMYGlwclQJt
 c1KiH37Yx55siuTi2UPpuVg0K4RgFYVLCG2raojGKeFU1X591qA75ON3grbfiU0eAN
 qLouyAi6EiBng==
Received: from thundercleese.localdomain (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291601.me.com (Postfix) with ESMTPSA id 18CCE3A04FF;
 Sat, 17 Dec 2022 18:52:48 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net
Date: Sat, 17 Dec 2022 18:52:06 +0000
Message-Id: <20221217185210.1431478-3-evanhensbergen@icloud.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221217185210.1431478-1-evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Proofpoint-GUID: J9qBR71ssgp32bkMQLDyUkQPVdEKomI3
X-Proofpoint-ORIG-GUID: J9qBR71ssgp32bkMQLDyUkQPVdEKomI3
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 adultscore=0
 mlxlogscore=377 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170174
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The writeback_fid fallback code assumes a root uid fallback
 which breaks many server configurations (which don't run as root). This patch
 switches to generic lookup which will follow argument guidence [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.45 listed in list.dnswl.org]
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
X-Headers-End: 1p6cIo-0005fq-92
Subject: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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

The writeback_fid fallback code assumes a root uid fallback which
breaks many server configurations (which don't run as root).  This
patch switches to generic lookup which will follow argument
guidence on access modes and default ids to use on failure.

There is a deeper underlying problem with writeback_fids in that
this fallback is too standard and not an exception due to the way
writeback mode works in the current implementation.  Subsequent
patches will try to associate writeback fids from the original user
either by flushing on close or by holding onto fid until writeback
completes.

Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
---
 fs/9p/fid.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 805151114e96..1fbd12d581bb 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -304,7 +304,9 @@ struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
 	int err;
 	struct p9_fid *fid, *ofid;
 
-	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
+	/* pull default uid from dfltuid */
+
+	ofid = v9fs_fid_lookup(dentry);
 	fid = clone_fid(ofid);
 	if (IS_ERR(fid))
 		goto error_out;
-- 
2.37.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

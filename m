Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5CB673AD7
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Jan 2023 14:57:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIVPx-00020U-T0;
	Thu, 19 Jan 2023 13:57:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alexander.shishkin@linux.intel.com>)
 id 1pIVPv-00020H-Dm for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 13:57:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z5uJA+4443z9Jl492T7hP3sMjNOK1X754DUyK8po9xc=; b=EhMl5BAqeBpkTSToNPFP9qbAFs
 jSep6VcRoBEx7WJw3QkooRIkBFLs/lWcoRYicPdUpiLv3J75T8HAPTEqkTMXVQ/MPSlF0ydNht8zd
 feq+3YLRFI4WFd4s69Dm128K8Ub7OJ3gzNVAQ/kJHBFXaxDI//nSJHqFVKfUoPfA9+cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z5uJA+4443z9Jl492T7hP3sMjNOK1X754DUyK8po9xc=; b=L4KJh8d+QqlU8ZPZKMwh8j0DOo
 R8Tthaqtu1hD1/rX4sSQCDpQkzkdrrgQd5gDxHzuo6gziC0ACNudrfJkLfH752vtmSSnQcXeZSPUc
 ttjBH1GHuHZmZjR2nJb90FYWlWzJhvaoMo3QAGhV1amOtikqPjEfpUEro4M7giKMONZ0=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIVPs-0005eK-WC for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 13:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674136640; x=1705672640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fPAfZ1maazfHk0jrppfuINceGDxLy9M8OHmBMIa7oqg=;
 b=mzdTg17oRDIYKeVOeQwuenp4CA4FiIki2Jzvf8k3pMWJQtBnqeRSlPwD
 AaXN+WkgYLCM2ncHa6oHhQ6SnI9rXVTC6gYPsiMeDTXbd2zpRgeJ8bxAK
 zYY66TJUvFm4vCPVk+aB2cDcfgx3S+rMfETIxkw2O/ygyC7KkzDA25rC3
 HgkGLC0BidGVn541ipD1+/HFGDdLlMvVmEJi0FH9lX9iWjWn82SD+xEj4
 8LcRcqifK4kihu4NRk01UHQBLVYKkzbyUDOjDHuDgoUV4ZkhEeCYShmNI
 F2Q2uCRah2ac93jddaypVCvcpS//V5a6GMLQf4WzrUgC8kWt263pxhZtw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411526134"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="411526134"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 05:57:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="988993922"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="988993922"
Received: from black.fi.intel.com (HELO black.fi.intel.com.) ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2023 05:57:09 -0800
From: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: mst@redhat.com,
	jasowang@redhat.com
Date: Thu, 19 Jan 2023 15:57:18 +0200
Message-Id: <20230119135721.83345-4-alexander.shishkin@linux.intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119135721.83345-1-alexander.shishkin@linux.intel.com>
References: <20230119135721.83345-1-alexander.shishkin@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Andi Kleen <ak@linux.intel.com> tag_len is read as a
 u16 from the untrusted host. It could overflow in the memory allocation,
 which would lead to a too small buffer. Some later loops use it when extended
 to 32bit, so they could overflow the too small buffer. 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pIVPs-0005eK-WC
Subject: [V9fs-developer] [PATCH v1 3/6] virtio 9p: Fix an overflow
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Andi Kleen <ak@linux.intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Eric Van Hensbergen <ericvh@gmail.com>, elena.reshetova@intel.com,
 v9fs-developer@lists.sourceforge.net, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Andi Kleen <ak@linux.intel.com>

tag_len is read as a u16 from the untrusted host. It could overflow
in the memory allocation, which would lead to a too small buffer.

Some later loops use it when extended to 32bit, so they could overflow
the too small buffer.

Make sure to do the arithmetic for the buffer size in 32bit to avoid
wrapping.

Signed-off-by: Andi Kleen <ak@linux.intel.com>
Signed-off-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
Cc: v9fs-developer@lists.sourceforge.net
---
 net/9p/trans_virtio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index 3c27ffb781e3..a78e4d80e5ba 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -629,7 +629,7 @@ static int p9_virtio_probe(struct virtio_device *vdev)
 		err = -EINVAL;
 		goto out_free_vq;
 	}
-	tag = kzalloc(tag_len + 1, GFP_KERNEL);
+	tag = kzalloc((u32)tag_len + 1, GFP_KERNEL);
 	if (!tag) {
 		err = -ENOMEM;
 		goto out_free_vq;
-- 
2.39.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

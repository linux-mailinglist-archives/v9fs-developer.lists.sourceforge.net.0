Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A6571EC4
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:17:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHe6-0004e3-9N; Tue, 12 Jul 2022 15:17:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <0a5679aea70e506433887cb67129241dfc32502b@lizzy.crudebyte.com>)
 id 1oBHdv-0004dW-V1
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=Ib3x9aLFWXAerTTKEi0o65c15E
 MsO5orVsuxp4O1Ichab/a37NaTgUAJvoL1j3HHErc8BcI9vtVadIAJiCQ+9fyZ6LgEHt5KjGVt4hj
 3HrmV7pCkSQ3Y8h85+HBchTZPXdewhtRwYEthPGEPlvWkaTZ0ownB7UGahBST5Xj5R6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=DqHPfssihR+zuj9Um7Ya4p/Ge5
 3zPUf0Up3SRGJf2FflMn0XqOe7X90rVfFb/++wdip4KGfObW7O8EYX+XZ27Cq6F1VByhjSNuUW4pV
 BMduOYlrrifE5GSXPNwE1DxYVsUkxEzVDy143/HzcZ3dVzzqMfMGatv9hjz9RlR11Lro=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHdv-00Epr2-B2
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=ETBrD
 ObyYRP1acCvA1v2Xk+F1rfuh1bcGPDlekNgLxXeQywThYUkGAguSb2jIssNRU3xbZKaunKjyo1abp
 QST18cOxcaSxdFjgPc4ZtfDwMpuXDReB/Is0OyhOXqgENfp177oFsPM657gANtc2J7fMrYLV3tq//
 xBXWuS75YGx7iq7jUkb6C6UhWzzLUF0tZDOWahVs7dNSpHokcvbKIJ0NoQeSFuMXy2fAbWvvdqGLL
 kB5Av52kVNYvNj0oRZYAzf/KucbHAaRQA4j9RGZA0m1/VgiiUuQN8AkDDXo8OU6/CsgJXoz5p2mHi
 CtTdv4ashnNp2sMyBCrd9LO3q4Lgg==;
Message-Id: <0a5679aea70e506433887cb67129241dfc32502b.1657636554.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:31:31 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add P9_ERRMAX macro to 9P protocol header which reflects the
 maximum error string length of Rerror replies for 9p2000 and 9p2000.u protocol
 versions. Unfortunately a maximum error string length is not [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oBHdv-00Epr2-B2
Subject: [V9fs-developer] [PATCH v5 09/11] 9p: add P9_ERRMAX for 9p2000 and
 9p2000.u
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add P9_ERRMAX macro to 9P protocol header which reflects the maximum
error string length of Rerror replies for 9p2000 and 9p2000.u protocol
versions. Unfortunately a maximum error string length is not defined by
the 9p2000 spec, picking 128 as value for now, as this seems to be a
common max. size for POSIX error strings in practice.

9p2000.L protocol version uses Rlerror replies instead which does not
contain an error string.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---

This could probably be merged with the next patch, on doubt I posted it
separately as squashing is easy. The advantage of a separate patch is
making the discussion of the chosen value of max. 128 bytes more
prominent.

 include/net/9p/9p.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 24a509f559ee..13abe013af21 100644
--- a/include/net/9p/9p.h
+++ b/include/net/9p/9p.h
@@ -331,6 +331,9 @@ enum p9_qid_t {
 /* size of header for zero copy read/write */
 #define P9_ZC_HDR_SZ 4096
 
+/* maximum length of an error string */
+#define P9_ERRMAX 128
+
 /**
  * struct p9_qid - file system entity information
  * @type: 8-bit type &p9_qid_t
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

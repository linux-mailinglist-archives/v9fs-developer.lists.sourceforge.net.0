Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C925769D3
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 00:23:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCTi9-0000jU-PT; Fri, 15 Jul 2022 22:23:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <3f23191d21032e7c14852b1e1a4ae26417a36739@lizzy.crudebyte.com>)
 id 1oCTi9-0000jL-1p
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=IjSWrFvZrUBDKfnfCZU46Xcf0o
 kHRS6KGfE/cAB4r3ARa6pt25wrAuZxqXHXMubnafAc0j7tDuAnxsSeQLhgu9xAENzf57t3eJxqumS
 oYnCDTPpl3A+ipWJ5589rSl1PLuUm64wcJwUovBWIeEMETeWreRfLkFBxF9DZERcFwho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=FQUJMusPwBWMvLYbjffUvtbkCW
 1EfMAw83Za5ByUMgl02K85k5owlUTk4Luecn8cPpXQ/lX4VImByFKg15T9xXfYzB56yL1uWKVPlmQ
 HaGAtTX263Wcl0Yt1DQtxvrLQFA2v7Te9QQXCSoJnNcKXoQKqL3dOwC+8E/rXNyQDXiA=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCTi8-0000nX-8z
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jul 2022 22:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=3fYK9aLEk4+QTiWncARzWNrEsKD8KVzMmkos5F1PmkE=; b=YozSq
 IEKWWCG3bc8gT6t0ihYNaBBuhPv305blQonV/EXBYDFysPyPUhKKg381HXh56M7I7qFNvaMJuGwTT
 5iFC8S+v4El1BSGtKhaJnW3AQeovKnVDHsoF81RtELueuH9rVyfNWp4nommA68wYRs52o8y+8iIJA
 WtB/z1LpwZJ0VYR1oFs7ZUuIXUCTFEwCJLiYsIARE21IWOU8J3IBDtUVP90tCQ5yS7nzbQn5HaYkh
 WI6fivKHZhd/Mwr3a8h4XuNCj+ziz43uljA9zgbpI2Scm+zVm0kpYZn2RGHINdxmM+Q9bYncXZId8
 p/snZJ9Xg7GK3GqolB5CvED2LNAOQ==;
Message-Id: <3f23191d21032e7c14852b1e1a4ae26417a36739.1657920926.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657920926.git.linux_oss@crudebyte.com>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
Date: Fri, 15 Jul 2022 23:32:30 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oCTi8-0000nX-8z
Subject: [V9fs-developer] [PATCH v6 08/11] 9p: add P9_ERRMAX for 9p2000 and
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

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D58FC481CDA
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Dec 2021 15:12:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n2wAm-0006N9-Ea; Thu, 30 Dec 2021 14:12:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <7cb10547a122c32fdafd68c77f0625f9a4d9a8bf@lizzy.crudebyte.com>)
 id 1n2wAl-0006Mt-14
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:12:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7rxL+vVkRtDypNlhYjU20nqnGaFCHwV4VaWOzz8KKMM=; b=AEtrDPzNN8W87Ts0/EYf8yUoV
 JLrzMvge+RCWJLQ1/5WiDb3qvOKLfqju21xNn0JQ2pwbUG7RsNsJmoyHSrrh7Tu/zA2HL1xf5Soam
 EH++1ob3T33JnOEWd8cg6U08zQ0DFQjiBHT93lTO/BA8S89RQXu/trxppi9wUjj9ssT4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7rxL+vVkRtDypNlhYjU20nqnGaFCHwV4VaWOzz8KKMM=; b=ZIDZRkX1Ycq4iVH9d+0CQui89j
 bpk5soE9oH64facdmCqSiQi54nI8/OVAwX0hHkFlWnNrVmAFA3M/JWQ8OByGB0+kWYqz66ZKXa6eE
 Y8C0iSYdTwXApIdP78mW/ZBy9mpxR0qz7iIj7mPSZSW8b4ttK/Ww9sqSH6o6BwNAiuG4=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2wAk-00028A-H7
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=7rxL+vVkRtDypNlhYjU20nqnGaFCHwV4VaWOzz8KKMM=; b=NQfff
 V9vMFphX1kMzXuSR3poklB7Vz+H+CSH0BlqZJOc0Ud+axB9zRLMJK5i42CHu1mkAxXmS6m/3Y2KUY
 kvS7fdqzzwH+ItfsyVsfDs14ul/GetOZ1LkMJ/qSuIa0CPh+TXur/y3QRVF3IIgkAYQpAo5TUeia+
 2k7m4SNn+Ydx6XR7tazOvIiqiFqhYwXc6Yzex1aw5VEOHVmZRoz74EqNBKiyvN37jMHN0vFL0Dzxe
 WLHluCS5vRZmPs3vvIiCpKnTXXabljPizwA9gigb9ndQ+wUwQBlEIG+vXnkt2+Q3SEf2PsGEL/yr5
 BblsVky48VejvDHi0BOSqum3zQxPQ==;
Message-Id: <7cb10547a122c32fdafd68c77f0625f9a4d9a8bf.1640870037.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1640870037.git.linux_oss@crudebyte.com>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
Date: Thu, 30 Dec 2021 14:23:18 +0100
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n2wAk-00028A-H7
Subject: [V9fs-developer] [PATCH v4 10/12] 9p: add P9_ERRMAX for 9p2000 and
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Nikolay Kichukov <nikolay@oldum.net>, Vivek Goyal <vgoyal@redhat.com>
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
 include/net/9p/9p.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
index 9c6ec78e47a5..a447acc55b02 100644
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

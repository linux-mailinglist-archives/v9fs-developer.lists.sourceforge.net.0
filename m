Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1148571EC5
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 17:17:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBHe8-0008T7-Ai; Tue, 12 Jul 2022 15:17:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed@lizzy.crudebyte.com>)
 id 1oBHe7-0008Sv-HV
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=evr+Tviy1M3/uGNzt9x08PaZ+uzk9AbYvF3GmjxPwr4=; b=jizsziHejPnkJjKWRYbW7BHqLS
 vWrc5IaCRqf1c/wN3RXScYmfDzJ38hfk3F0/9Ek51lHsnEyOIBbf8PiTUN/fCp+X5umpjNVz3pp1a
 RYyZB7fCsaGctnL4QYfLwi+DOzNzuCYeXqamPne7FBCH32N7vStlAkc6tnOhb1l0ZXEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=evr+Tviy1M3/uGNzt9x08PaZ+uzk9AbYvF3GmjxPwr4=; b=kl7NLccl5jMN8WEcGgUp2aCWUp
 hhxPhMuIDpE+zmoBXtvYHKjaDfVm+Rxq0PXBdvtHSjtddfR5b19j+m2L1wATGE9iIq/o/S481vm1I
 P9fTNsBleIanh8jacSLy/WUmfD+TtgfX0oG4YP95H5YKtFUoiScQ5s2P6FCzaILMNzNU=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBHe1-0000Xc-8j
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=evr+Tviy1M3/uGNzt9x08PaZ+uzk9AbYvF3GmjxPwr4=; b=lRwRw
 z0Oicu0VoFaNFvb3Gu8Dk9zELAdioLOkYVIlDupnVPKBUF+t+X3UzR3HJ4J889cA8pfKVvE+C0hjl
 MVLV2XZt4Blr6w6cH2tT9bESULdr6oNERJloUB0Z6ofSC+AVEFkuY/01h+AAUcqyIWM94Kv0jrkTi
 PeAWsTkehyOFF6/VADaZPV6tFUaUaUKvGe/z96REWkblKM6MqNhToBN79bER3Wrd4xNh0aFEbyXQ2
 NmRHmvDEUkOVSZ0egwD4Qq09HeA6tOIEdE6vsHJ5sCiRegKYg3V+/cxDwL2MDkyINePJSoAlqmkDF
 NPBzOPNeRRmQUVBUlbh6twuDiHaIQ==;
Message-Id: <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed.1657636554.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1657636554.git.linux_oss@crudebyte.com>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
Date: Tue, 12 Jul 2022 16:31:33 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This new function calculates a buffer size suitable for
 holding
 the intended 9p request or response. For rather small message types (which
 applies to almost all 9p message types actually) simply use h [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oBHe1-0000Xc-8j
Subject: [V9fs-developer] [PATCH v5 10/11] net/9p: add p9_msg_buf_size()
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

This new function calculates a buffer size suitable for holding the
intended 9p request or response. For rather small message types (which
applies to almost all 9p message types actually) simply use hard coded
values. For some variable-length and potentially large message types
calculate a more precise value according to what data is actually
transmitted to avoid unnecessarily huge buffers.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/protocol.c | 154 ++++++++++++++++++++++++++++++++++++++++++++++
 net/9p/protocol.h |   2 +
 2 files changed, 156 insertions(+)

diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 3754c33e2974..49939e8cde2a 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -23,6 +23,160 @@
 
 #include <trace/events/9p.h>
 
+/* len[2] text[len] */
+#define P9_STRLEN(s) \
+	(2 + min_t(size_t, s ? strlen(s) : 0, USHRT_MAX))
+
+/**
+ * p9_msg_buf_size - Returns a buffer size sufficiently large to hold the
+ * intended 9p message.
+ * @c: client
+ * @type: message type
+ * @fmt: format template for assembling request message
+ * (see p9pdu_vwritef)
+ * @ap: variable arguments to be fed to passed format template
+ * (see p9pdu_vwritef)
+ *
+ * Note: Even for response types (P9_R*) the format template and variable
+ * arguments must always be for the originating request type (P9_T*).
+ */
+size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
+			const char *fmt, va_list ap)
+{
+	/* size[4] type[1] tag[2] */
+	const int hdr = 4 + 1 + 2;
+	/* ename[s] errno[4] */
+	const int rerror_size = hdr + P9_ERRMAX + 4;
+	/* ecode[4] */
+	const int rlerror_size = hdr + 4;
+	const int err_size =
+		c->proto_version == p9_proto_2000L ? rlerror_size : rerror_size;
+
+	switch (type) {
+
+	/* message types not used at all */
+	case P9_TERROR:
+	case P9_TLERROR:
+	case P9_TAUTH:
+	case P9_RAUTH:
+		BUG();
+
+	/* variable length & potentially large message types */
+	case P9_TATTACH:
+		BUG_ON(strcmp("ddss?u", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			const char *uname = va_arg(ap, const char *);
+			const char *aname = va_arg(ap, const char *);
+			/* fid[4] afid[4] uname[s] aname[s] n_uname[4] */
+			return hdr + 4 + 4 + P9_STRLEN(uname) + P9_STRLEN(aname) + 4;
+		}
+	case P9_TWALK:
+		BUG_ON(strcmp("ddT", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			uint i, nwname = max(va_arg(ap, int), 0);
+			size_t wname_all;
+			const char **wnames = va_arg(ap, const char **);
+			for (i = 0, wname_all = 0; i < nwname; ++i) {
+				wname_all += P9_STRLEN(wnames[i]);
+			}
+			/* fid[4] newfid[4] nwname[2] nwname*(wname[s]) */
+			return hdr + 4 + 4 + 2 + wname_all;
+		}
+	case P9_RWALK:
+		BUG_ON(strcmp("ddT", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			uint nwname = va_arg(ap, int);
+			/* nwqid[2] nwqid*(wqid[13]) */
+			return max_t(size_t, hdr + 2 + nwname * 13, err_size);
+		}
+	case P9_TCREATE:
+		BUG_ON(strcmp("dsdb?s", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *name = va_arg(ap, const char *);
+			if ((c->proto_version != p9_proto_2000u) &&
+			    (c->proto_version != p9_proto_2000L))
+				/* fid[4] name[s] perm[4] mode[1] */
+				return hdr + 4 + P9_STRLEN(name) + 4 + 1;
+			{
+				va_arg(ap, int32_t);
+				va_arg(ap, int);
+				{
+					const char *ext = va_arg(ap, const char *);
+					/* fid[4] name[s] perm[4] mode[1] extension[s] */
+					return hdr + 4 + P9_STRLEN(name) + 4 + 1 + P9_STRLEN(ext);
+				}
+			}
+		}
+	case P9_TLCREATE:
+		BUG_ON(strcmp("dsddg", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *name = va_arg(ap, const char *);
+			/* fid[4] name[s] flags[4] mode[4] gid[4] */
+			return hdr + 4 + P9_STRLEN(name) + 4 + 4 + 4;
+		}
+	case P9_RREAD:
+	case P9_RREADDIR:
+		BUG_ON(strcmp("dqd", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int64_t);
+		{
+			const int32_t count = va_arg(ap, int32_t);
+			/* count[4] data[count] */
+			return max_t(size_t, hdr + 4 + count, err_size);
+		}
+	case P9_TWRITE:
+		BUG_ON(strcmp("dqV", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int64_t);
+		{
+			const int32_t count = va_arg(ap, int32_t);
+			/* fid[4] offset[8] count[4] data[count] */
+			return hdr + 4 + 8 + 4 + count;
+		}
+	case P9_TRENAMEAT:
+		BUG_ON(strcmp("dsds", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *oldname = va_arg(ap, const char *);
+			va_arg(ap, int32_t);
+			{
+				const char *newname = va_arg(ap, const char *);
+				/* olddirfid[4] oldname[s] newdirfid[4] newname[s] */
+				return hdr + 4 + P9_STRLEN(oldname) + 4 + P9_STRLEN(newname);
+			}
+		}
+	case P9_RERROR:
+		return rerror_size;
+	case P9_RLERROR:
+		return rlerror_size;
+
+	/* small message types */
+	case P9_TSTAT:
+	case P9_RSTAT:
+	case P9_TSYMLINK:
+	case P9_RREADLINK:
+	case P9_TXATTRWALK:
+	case P9_TXATTRCREATE:
+	case P9_TLINK:
+	case P9_TMKDIR:
+	case P9_TUNLINKAT:
+		return 8 * 1024;
+
+	/* tiny message types */
+	default:
+		return 4 * 1024;
+
+	}
+}
+
 static int
 p9pdu_writef(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
 
diff --git a/net/9p/protocol.h b/net/9p/protocol.h
index 6d719c30331a..ad2283d1f96b 100644
--- a/net/9p/protocol.h
+++ b/net/9p/protocol.h
@@ -8,6 +8,8 @@
  *  Copyright (C) 2008 by IBM, Corp.
  */
 
+size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
+			const char *fmt, va_list ap);
 int p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
 		  va_list ap);
 int p9pdu_readf(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

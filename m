Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC9F400C97
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Sep 2021 20:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=myWWBxRQd2fO7SCkH2KnpqsNraARCg5ugEc9LvVkD7k=; b=gn+uLc3scXxZcJ6ciIky769LTY
	oAR2xFQIWwKJBjxnu59+FftvOl3uc6eenXfZPinJDiaXBxXjhwpEjCU/kflRdaYRh16k1Mdlbuzc/
	L67T71wxlkR+y9GE2Dvu+EmA0+2/yoDBD2UDnLk2jSb1x0qycZt0ZiPDxRtOMnvLcDHE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMaRR-0002m3-RI; Sat, 04 Sep 2021 18:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <28bb651ae0349a7d57e8ddc92c1bd5e62924a912@lizzy.crudebyte.com>)
 id 1mMaRG-0002kl-4w
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tut7eTe5qe1gcpJfndZBSuyDAml0NcR3QWvzUhKfSJY=; b=LeF3cVuhQ7ZbGHR0SE+Ivuoi0
 oTKyT399ovU8RbvJbl2lKLWFLa83PZ9oeDYO0krX88rq7vwsTZCUrNWw1BJMAJXHE/DAbNdgpbe1F
 vSjsD3T7Eh27Z/wkm96y1aUJpLeZufKU150Hab0Fe0PLN1HLhmAmjUkV51knUu1IomYQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tut7eTe5qe1gcpJfndZBSuyDAml0NcR3QWvzUhKfSJY=; b=j9Q188B7NOKS5Xr0bF7+/IJ95v
 Rv1kWVsLPRulqMTq9Kt4J4pKbhgYnadFa5lRAkHcE09oOM0NiTUrFXre8i1nUqav69bYAc2g3IjK4
 oIMui8BU7caVLcwty9+evtpxmOM3AReOGs9P+uNeihYfDOgBVmEfK+b/jSBKTjqVzh6Q=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMaRC-0002pd-1g
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=Tut7eTe5qe1gcpJfndZBSuyDAml0NcR3QWvzUhKfSJY=; b=oYHno
 iRcK+FKCG4rE4dKoOsvOtE16e06TIYCMX1cdpwU2WFr43Uym6XV0ppIsplej2Z8glajT79hBJ3Ujg
 TnIKexznxmAoi2a4UzTPyC1B3DB/6fxLefXyH3mcD9izODJeJAQE3p63zolbw//aflxsD2UAEns4F
 /GY3x7TsVJp1CwLKIZtTJ5QJfLJEff5hhB77DjML2jbl2NkyT8ZKlUpkU3Z84Xnd5+5XApgvwB1zJ
 FMg/OsVKjxnIkbxpEMgEph4g4Y2lKg2K/mFNxCB6URN4IqZXcSmsj5HQE/TxW3f1nVebF6+ERxoce
 G5+OCVjw4XtQ9d+tHZulD4BHwprGg==;
Message-Id: <28bb651ae0349a7d57e8ddc92c1bd5e62924a912.1630770829.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1630770829.git.linux_oss@crudebyte.com>
References: <cover.1630770829.git.linux_oss@crudebyte.com>
Date: Sat, 4 Sep 2021 17:07:12 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMaRC-0002pd-1g
Subject: [V9fs-developer] [PATCH 1/2] net/9p: use macro to define default
 msize
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, Latchesar Ionkov <lucho@ionkov.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Use a macro to define the default value for the 'msize' option
at one place instead of using two separate integer literals.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index b7b958f61faf..1cb255587fff 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -30,6 +30,8 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/9p.h>
 
+#define DEFAULT_MSIZE 8192
+
 /*
   * Client Option Parsing (code inspired by NFS code)
   *  - a little lazy - parse all client options
@@ -65,7 +67,7 @@ EXPORT_SYMBOL(p9_is_proto_dotu);
 
 int p9_show_client_options(struct seq_file *m, struct p9_client *clnt)
 {
-	if (clnt->msize != 8192)
+	if (clnt->msize != DEFAULT_MSIZE)
 		seq_printf(m, ",msize=%u", clnt->msize);
 	seq_printf(m, ",trans=%s", clnt->trans_mod->name);
 
@@ -139,7 +141,7 @@ static int parse_opts(char *opts, struct p9_client *clnt)
 	int ret = 0;
 
 	clnt->proto_version = p9_proto_2000L;
-	clnt->msize = 8192;
+	clnt->msize = DEFAULT_MSIZE;
 
 	if (!opts)
 		return 0;
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7CC411CF5
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 19:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPl84BJAqD9atZ0BKhR+z2aAhUgVYPsira0sqLdFM0w=; b=cn8b1PDwGf59VL7ZOqJTDJ2FMH
	3MQj4IZQDdVzMRiUVBr/cELCPUn8zRnjvrA7sT+5ViehZaCdJrReSEZuJgPKVcsVm9U8r3GKfvipD
	SIc59p/wJBuze3/XuXPunq1t5+U0du3uTia27NbLckchyVVG7/wFehoYvr98F5kZwoHc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSMrT-0003ZB-0u; Mon, 20 Sep 2021 17:13:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <f7b1e09dcc15e91d7172ca91ca7990d39e6bb9de@lizzy.crudebyte.com>)
 id 1mSMrS-0003Z3-7j
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=E4s7vwkaMjGN67eMhfH+I330J
 anQAVW7os0bM3LsYIAd8fAAPYo7RFGdf+dljiwhkfkNMyjrdjSCD0zppcFmFYCCOt4/+9NbvIPXzp
 zXIWj4tva0/g7eu+R8BLugSkUDdjjJxKKTKVosFXoOF0WsRNgVLfRW7RTPV9DnfoH1+8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=e0ODUCYQiLoWvqnUCKOkHh6/MQ
 sdC1R7Q6g5TP7R3ePibJf9PxGgL1rN6AbkQ44EISPon7Hm+B/VeHNJ5uD21KUzDQbO2hBbPYFUEzU
 FLt5SXlbMnAzV9Jz4nzXjXPWycoJhXMj1FrayRw+4idf2rG7odpoLig77h7bmVlTdB60=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSMrR-0002TK-J0
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 17:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=C8DWS
 nm5XFVvn+wcj0ASjGzbv+8lAnVOswP9JUiYGrqKEZl7EofbEDrjquCBK+LHg/qnxMkpyerTD8gljt
 w0iq+go39AzEL+FG7nw1GnOgkky1be3NVLIaBd3I1j5UKpe1jzArU8fipKWl4uesW88w8kV7WiweR
 wPQ4YzUWyya/YR55ZWDPncRHaPkqHLFpZs9Jb0yeCBLdx5TwuwSEKFDIIN4lPDtBcbvDuVhmD3iJO
 SJbMl/FC9hCQhKPiWgjcmKxMyJZFI+qChrSjiD2loWn5L4tSZ5eWjs3FIDPh7ZtAtdeIFVlUjal4p
 gduFM2dwt1PwABBh1UtKDroLCPs7g==;
Message-Id: <f7b1e09dcc15e91d7172ca91ca7990d39e6bb9de.1632156835.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632156835.git.linux_oss@crudebyte.com>
References: <cover.1632156835.git.linux_oss@crudebyte.com>
Date: Mon, 20 Sep 2021 18:43:34 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If user supplied a large value with the 'msize' option, then
 client would silently limit that 'msize' value to the maximum value supported
 by transport. That's a bit confusing for users of not having [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mSMrR-0002TK-J0
Subject: [V9fs-developer] [PATCH v2 1/7] net/9p: show error message if user
 'msize' cannot be satisfied
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
 Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If user supplied a large value with the 'msize' option, then
client would silently limit that 'msize' value to the maximum
value supported by transport. That's a bit confusing for users
of not having any indication why the preferred 'msize' value
could not be satisfied.

Reported-by: Vivek Goyal <vgoyal@redhat.com>
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 213f12ed76cd..4f4fd2098a30 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1044,8 +1044,13 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize)
+	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
+		pr_info("Limiting 'msize' to %d as this is the maximum "
+			"supported by transport %s\n",
+			clnt->msize, clnt->trans_mod->name
+		);
+	}
 
 	if (clnt->msize < 4096) {
 		p9_debug(P9_DEBUG_ERROR,
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

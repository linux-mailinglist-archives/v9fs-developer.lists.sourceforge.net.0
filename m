Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB1840EA8A
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Sep 2021 21:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J4Rjh59CSTliAlK0RmwGIAkwYDMNC5NY0jPlYssFYwY=; b=hkGNLdgm/yatTvlbIjDCwumIdL
	BgT83bNToTwf+EbUTHMPnh5jx9SWMyp3/jN20lvDcTHKGT03AtFWPH/CR+94WNDSPlKKAgWJRP2LR
	fkab/I50zZve28m3joghB+wnkzmT1Vc4bSRLuWcXHi1hhhfhAAuMpYYGspvArRzixZlE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQwem-0002IN-Ke; Thu, 16 Sep 2021 19:02:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <c9492a713e9fde483700c8eba2cb62d36f88f918@lizzy.crudebyte.com>)
 id 1mQwej-0002IE-Pv
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QPWFanfpCBF2qhY8OC7p/jDdXs1FdUBjf7+Y+u2GJu8=; b=TKCY+21+h2gcLcZ2QIOT/73yR
 eKWdAvG0BO6wTp0wfSCTLsoI6lkCSsNcZN+9vTRR79kzPhcKEh3zMuaenN6QQ49/yh/syCyFBVqAz
 yLeTMJI39qJjtLkSxX84kwV6n2HPzyBcvsxdKmPTtB4cjcAe1qkLHk61Gu4ygrSsn4ppE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QPWFanfpCBF2qhY8OC7p/jDdXs1FdUBjf7+Y+u2GJu8=; b=UvuPoM85p4DLahBLZHDSofzVMD
 2+l/xaM5T9RlsqvnPu4k5tvFwy5LCPdVSTddCbZ1sgGik67x98DjguGHhtDDTADsuQCRqjFSO3VWW
 CSEeqFp93q8eLtGT7Q9xoH2lTlLmIHZ+IOJoCF8jkUJO/mN1HkZoLjM54xWCsBEygLi4=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQweh-00D4ok-7T
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 19:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=QPWFanfpCBF2qhY8OC7p/jDdXs1FdUBjf7+Y+u2GJu8=; b=WMiIx
 B7BEmGI8Oka1l3oOmiaoLDtwgZxI10DZpnBDwu6RRSf+ZV+LfOor/dFeFsT0tDosgdUbmdE2Khugq
 rSIi1a3p6jp71f0iV0ig8l/3HzMXDGmQXr8WJg4gqQy3ef10l6sj1a5g8OjouGBfDDSeifztcrTrd
 f5rvRrVhlWL/YP8LQ7fANmz6ERNJdWxHdvywMBzfzX1jwZJzZN5XheBzJHxJqVrMcqJt0nrkVjfiC
 qPe0M7IG2siiO0FKvtMmik8BfxVaewswnCp/TPjxdftjS4qU1HgEJGlpQdWD6MAynuaPhWDcwNm/n
 /2xqQYVxcR/lBHlZJwClTIE6cRk1g==;
Message-Id: <c9492a713e9fde483700c8eba2cb62d36f88f918.1631816768.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1631816768.git.linux_oss@crudebyte.com>
References: <cover.1631816768.git.linux_oss@crudebyte.com>
Date: Thu, 16 Sep 2021 20:24:24 +0200
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mQweh-00D4ok-7T
Subject: [V9fs-developer] [PATCH 1/7] net/9p: show error message if user
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
 net/9p/client.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 213f12ed76cd..fa2afeaf1394 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1044,8 +1044,14 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize)
+	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
+		p9_debug(P9_DEBUG_ERROR,
+			 "Limiting 'msize' to %d as this is the maximum "
+			 "supported by transport %s\n",
+			 clnt->msize, clnt->trans_mod->name
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

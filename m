Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E293570DD
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Apr 2021 17:48:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUAPm-0005lN-Gx; Wed, 07 Apr 2021 15:48:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUAPZ-0005kQ-Dt
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CyPEeAcTKQx8RGoMbGB/HBds9zsaqzdPRLMV+TNb98=; b=DRlh9Ab+QKqQDgFvQo7tyBeOZE
 sm66+DHasuAlGlZA+hnGC/JFjFJVaEjJgNDW+5wngG1k5pDtDx3a6QVHjv438VpJ8U51vP3W8Hd1C
 CHCcwoY/Z/Dj6p4ynCJDmXau317SbO85unAJPzT230y+f475HJt0ak9d2yygVqQp1PUk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3CyPEeAcTKQx8RGoMbGB/HBds9zsaqzdPRLMV+TNb98=; b=TB8GrvTx3ZgkmTQFT+CJwvkU8t
 PRE6Q1EtVExbGQ7dXkiHfGCTC/+3VgoeycAGbZ0u6ZiE8+GshHqOpstiwH4eV83yCJ8nHccBI8V6i
 8EgWbdQsNhVvV2tmvaCnrrj9iFtADGtiGzUZArmTiITTXqrm/4Nvg1hmxRuA7acJRQ2I=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUAPS-00H1gv-Oe
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:48:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617810476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3CyPEeAcTKQx8RGoMbGB/HBds9zsaqzdPRLMV+TNb98=;
 b=hJkBvnfozgbj0Emy8HDeLh4IcLcWGVT48qmKe6wy6F7Rr8TokJs05KeVtkeG+28VV0CqUM
 XDf8TKmDdp24mxAZvP0myBO365WIxsOMXWc/a/mhgC+XbHkvRP770H91vE7Q7SORHasXCX
 Y/3IDAKbYbyAGpCMaOsdub4jhQWZLb4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-B4ol7rNSMWWLrHlE7ZDzNg-1; Wed, 07 Apr 2021 11:47:52 -0400
X-MC-Unique: B4ol7rNSMWWLrHlE7ZDzNg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B26D95B393;
 Wed,  7 Apr 2021 15:47:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-201.rdu2.redhat.com
 [10.10.115.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 670E95D9DC;
 Wed,  7 Apr 2021 15:47:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Wed, 07 Apr 2021 16:47:42 +0100
Message-ID: <161781046256.463527.18158681600085556192.stgit@warthog.procyon.org.uk>
In-Reply-To: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
References: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUAPS-00H1gv-Oe
Subject: [V9fs-developer] [PATCH 3/5] netfs: Don't record the copy
 termination error
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, dwysocha@redhat.com,
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Don't record the copy termination error in the subrequest.  We shouldn't
return it through netfs_readpage() or netfs_write_begin() as we don't let
the netfs see cache errors.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/netfs/read_helper.c |    2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 8040b76da1b6..ad0dc01319ce 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -270,10 +270,8 @@ static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error,
 	struct netfs_read_request *rreq = subreq->rreq;
 
 	if (IS_ERR_VALUE(transferred_or_error)) {
-		subreq->error = transferred_or_error;
 		netfs_stat(&netfs_n_rh_write_failed);
 	} else {
-		subreq->error = 0;
 		netfs_stat(&netfs_n_rh_write_done);
 	}
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

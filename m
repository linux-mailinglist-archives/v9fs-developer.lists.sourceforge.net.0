Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFBA428FBB
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Oct 2021 16:00:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZvr7-0002hR-8l; Mon, 11 Oct 2021 14:00:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mZvr5-0002hL-EU
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 14:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8NyYmXqlPxCaNdw5v5fi0/Nl+TdSkDoFEmfakLBy5M8=; b=f8LLTY5KVMqZ4PQvkB2fesVARM
 +ZYHLjCocEQSw/ggKydMsVL1lVFPTxI4U5jazDxd9Vyq8t3T4g6XCoXHyme8BU/Cnvv99bHTqIj8e
 4ETdPh+9FYdD3tOCn7/UxuWpGa/Mv1s3ffmoE7ZGflXzsDd0dtkRfuZKRhHjYnK3Xz+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8NyYmXqlPxCaNdw5v5fi0/Nl+TdSkDoFEmfakLBy5M8=; b=HnkqjOiNJs7siVhp0BR88COFD+
 5Elimbd+MVazsZJawU1/LcBeONWEul0geQeHRyJ6D1px8Ou/eTPTEE6A1eVVaGnpDELaB/FkIziNH
 CiDO/cfDQkPSJh1AAok5j6MnTAIYCCNJm4evFH7s8wx12/MqbwyUlGbSB6z6rqrw02PY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mZvqw-00064C-Tn
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 14:00:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F3F8E61214;
 Mon, 11 Oct 2021 14:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633960824;
 bh=50oME831S3Wg+JzgZ5JeOp45VWeZ+pM3vP9xiNjtWNk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wZqTxlRiBGbc5UDUhm/2VYFvoNcPqasJiUDU2TSf9U2WnPp+CEQTZBMBBVsSmpc27
 loCHOegMolWHoibcV1lXhszxQQ9q1gb48al9axrK9YK6HUdM4oT5k2dfD3y1shRuvT
 jhgkqEjuHy3cniWhuqFJMmCTktigYwq7lfSdbLjw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 11 Oct 2021 15:45:58 +0200
Message-Id: <20211011134520.620511034@linuxfoundation.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011134517.833565002@linuxfoundation.org>
References: <20211011134517.833565002@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: David Howells <dhowells@redhat.com> [ Upstream commit
 330de47d14af0c3995db81cc03cf5ca683d94d81 ] Fix netfs_clear_unread() to pass
 READ to iov_iter_xarray() instead of WRITE (the flag is about the operation
 accessing the buffer, not what sort of access it is doing to the buffer).
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mZvqw-00064C-Tn
Subject: [V9fs-developer] [PATCH 5.14 086/151] netfs: Fix READ/WRITE
 confusion when calling iov_iter_xarray()
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
Cc: Sasha Levin <sashal@kernel.org>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Layton <jlayton@kernel.org>, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: David Howells <dhowells@redhat.com>

[ Upstream commit 330de47d14af0c3995db81cc03cf5ca683d94d81 ]

Fix netfs_clear_unread() to pass READ to iov_iter_xarray() instead of WRITE
(the flag is about the operation accessing the buffer, not what sort of
access it is doing to the buffer).

Fixes: 3d3c95046742 ("netfs: Provide readahead and readpage netfs helpers")
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: ceph-devel@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: linux-nfs@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
cc: linux-mm@kvack.org
Link: https://lore.kernel.org/r/162729351325.813557.9242842205308443901.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/162886603464.3940407.3790841170414793899.stgit@warthog.procyon.org.uk
Link: https://lore.kernel.org/r/163239074602.1243337.14154704004485867017.stgit@warthog.procyon.org.uk
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/netfs/read_helper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 0b6cd3b8734c..994ec22d4040 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -150,7 +150,7 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
 {
 	struct iov_iter iter;
 
-	iov_iter_xarray(&iter, WRITE, &subreq->rreq->mapping->i_pages,
+	iov_iter_xarray(&iter, READ, &subreq->rreq->mapping->i_pages,
 			subreq->start + subreq->transferred,
 			subreq->len   - subreq->transferred);
 	iov_iter_zero(iov_iter_count(&iter), &iter);
-- 
2.33.0





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

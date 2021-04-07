Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D13583570C3
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Apr 2021 17:47:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUAOi-0005hj-AV; Wed, 07 Apr 2021 15:47:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUAOh-0005hc-5I
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vBa++ylKdM6FaV/AsB3jGOj59UUYHkh6Ww/V2KVEjbY=; b=F0T+Uoa9/UXkrqymuWxQblogYI
 mdsQegEBlYr5HVx0pzpDTeqRkYf1f/n/hLvDSliUMM/JCOz3RTY4w3PAU3LWLMei399xQqtfyY/hO
 SUDQmI74w6DCMAF6VjnqLll3ZMonZHDY37TBz4SfDEjz97WY+qAHUsxNFfnHlk/u/RYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vBa++ylKdM6FaV/AsB3jGOj59UUYHkh6Ww/V2KVEjbY=; b=S
 2JmDzOg8BfUIbkX+YsS255woaZq1zgvgo+VTHu9SHpngrbJXvbrLsTFQ+33SAHiT4tbQ+bvz68tZR
 Ad51/mNeSLSldLILOQiiJ8qbr/zIY4uSu3mhNlwzM6NdD+QRstWZ13Xq7lqClzbH4OzihIea49nwW
 iYi0m7zTkaSVlq4Q=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUAOe-0007IM-La
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617810419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=vBa++ylKdM6FaV/AsB3jGOj59UUYHkh6Ww/V2KVEjbY=;
 b=c+fq6CSqdPaXsDLjk9sZKP8XRYj6NBP4Ayk733j7mZRrDMp/hhImxZAo7bIJXbEdBZVrpE
 xbaT4DW+hmX4HiacOHBZ7994CJ3Jq8u5GV0eC68ATGn7DGrMYS6dtFCAjpqPnIEZxGr/Ur
 Ivunkv/6hj0Senn4/KUXNO9YMYSMytM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-vJ-WsKDbMdGZLbaNmZzTBw-1; Wed, 07 Apr 2021 11:46:57 -0400
X-MC-Unique: vJ-WsKDbMdGZLbaNmZzTBw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D7E51008076;
 Wed,  7 Apr 2021 15:46:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-201.rdu2.redhat.com
 [10.10.115.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 43E9D1893C;
 Wed,  7 Apr 2021 15:46:54 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Wed, 07 Apr 2021 16:46:53 +0100
Message-ID: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUAOe-0007IM-La
Subject: [V9fs-developer] [PATCH 0/5] netfs: Fixes for the netfs lib
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


Hi Jeff,

Here's a bunch of fixes plus a tracepoint for the netfs library.  I'm going
to roll them into other patches, but I'm posting them here for separate
review.

David
---
David Howells (5):
      netfs: Fix a missing rreq put in netfs_write_begin()
      netfs: Call trace_netfs_read() after ->begin_cache_operation()
      netfs: Don't record the copy termination error
      netfs: Fix copy-to-cache amalgamation
      netfs: Add a tracepoint to log failures that would be otherwise unseen


 fs/cachefiles/io.c           | 17 ++++++++++
 fs/netfs/read_helper.c       | 58 +++++++++++++++++++---------------
 include/linux/netfs.h        |  6 ++++
 include/trace/events/netfs.h | 60 ++++++++++++++++++++++++++++++++++++
 4 files changed, 116 insertions(+), 25 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

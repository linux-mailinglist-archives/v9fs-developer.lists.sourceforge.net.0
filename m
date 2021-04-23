Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B71BE36A66F
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Apr 2021 12:11:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1labjH-0001rK-Iw; Sun, 25 Apr 2021 10:11:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1labiT-0001pA-QW
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pvgob+fYGPMtZDIsB+MxD4bSZ+ZRezeauMcbONBVndM=; b=DdSYx0WDVhDfMDH51aWYKSJGjZ
 x2sePQSWNFbIm5K1KQ1p9HX6EClrU2Svw0tKphgGKNSbwnLSNQZmRlLPLAL9hu4eUNBZTBaQVsRNA
 3rbtOnFk17JB0blynsNak7S0UngNtMfzAkSLb5Zn61pgcjVDVocCbfYRnR2bS38I72uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pvgob+fYGPMtZDIsB+MxD4bSZ+ZRezeauMcbONBVndM=; b=VHNHOmWtUy/6K8O2HhvPjLQXc5
 W6ecIbgkfvF3NXKWkAkLsBF4wd4CpgyEnMd2in8oRzEaBbhBkBq4EPOI82oObbtF/7OacenaTk1OR
 pqn/A8TRlGpJYoDWClsq5RFy+1Q/v7UQuQHRi2tgEF9OxjwAV9X9QiaSOfN1qMVu3bko=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1labiM-006Cju-9h
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Apr 2021 10:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619345404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pvgob+fYGPMtZDIsB+MxD4bSZ+ZRezeauMcbONBVndM=;
 b=gh3mNmVAqROdYjI6Ut69Sp+Xyp/4HgJNMgdQc4xwQLPl/R2aP5l9+8nKhMzhBg07k/U+an
 dAOJy+jiSAd4244WXjjxM0RCjLwddl6ojkdQFboRDpp2dOG+8JUQsmofTMUi5Gnx6OjwQB
 W0iKS97g2Sefw6gkU3zMywi9M1qy8sk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-_6mHLeGyNXaScbp0ao4ENw-1; Fri, 23 Apr 2021 09:29:27 -0400
X-MC-Unique: _6mHLeGyNXaScbp0ao4ENw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46E1B18BA281;
 Fri, 23 Apr 2021 13:29:25 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-124.rdu2.redhat.com
 [10.10.112.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC4E56090F;
 Fri, 23 Apr 2021 13:29:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Fri, 23 Apr 2021 14:29:17 +0100
Message-ID: <161918455721.3145707.4063925145568978308.stgit@warthog.procyon.org.uk>
In-Reply-To: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
References: <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1labiM-006Cju-9h
Subject: [V9fs-developer] [PATCH v7 07/31] netfs: Make a netfs helper module
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make a netfs helper module to manage read request segmentation, caching
support and transparent huge page support on behalf of a network
filesystem.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-and-tested-by: Jeff Layton <jlayton@redhat.com>
Tested-by: Dave Wysochanski <dwysocha@redhat.com>
Tested-By: Marc Dionne <marc.dionne@auristor.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/160588496284.3465195.10102643717770106661.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118135638.1232039.1622182202673126285.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161031028.2537118.1213974428943508753.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340391427.1303470.14884950716721956560.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539531569.286939.18317119181653706665.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653790328.2770958.6710423217716151549.stgit@warthog.procyon.org.uk/ # v5
Link: https://lore.kernel.org/r/161789071202.6155.16519256513958534906.stgit@warthog.procyon.org.uk/ # v6
---

 fs/netfs/Kconfig |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 fs/netfs/Kconfig

diff --git a/fs/netfs/Kconfig b/fs/netfs/Kconfig
new file mode 100644
index 000000000000..2ebf90e6ca95
--- /dev/null
+++ b/fs/netfs/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config NETFS_SUPPORT
+	tristate "Support for network filesystem high-level I/O"
+	help
+	  This option enables support for network filesystems, including
+	  helpers for high-level buffered I/O, abstracting out read
+	  segmentation, local caching and transparent huge page support.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

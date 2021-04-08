Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338453585C6
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:05:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVIB-0005YB-TR; Thu, 08 Apr 2021 14:05:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUVIB-0005Y4-5h
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wJTWsok/SqAEDjDYfE9ZBtK+085x6ZzfcdZ93ZJqu30=; b=ciQfxUBOy49D0kSmCQkQx5XCbK
 UtGc9lMDvF93vHMb8Jj1wp5gXSzuyGWJEy5dt2VsrrBXrzUykuiFlc7OpHJPIauL9IpCX6d6Y/Fl0
 HIoeUwOXUVU8cZm2c9ADu5a9fWlWIBOgdOdjjmLK6SKStoo/Cae2T3zhe31ud0Id2aXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wJTWsok/SqAEDjDYfE9ZBtK+085x6ZzfcdZ93ZJqu30=; b=giJ4UxCbyJSWxQT82mocJ2Ypmj
 xE1Gi8vRoIubvU5rD+NWCE9y5E4P20mxDCeAULfFf5/Y9v4rrUhMDz2qCWkE9/K2W+lTF990t+djP
 PBY+UidVZzhnJaWOpEKpOyE5WKoPVZLJIWjs761CLtHIvIi+PFqT70UcAAqlplZjhyHc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUVHm-004uLK-EZ
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890724;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wJTWsok/SqAEDjDYfE9ZBtK+085x6ZzfcdZ93ZJqu30=;
 b=b+X1sc67LoXoy7dUsU6QI4SPKqp0uj6GohBN0wPrdK7Nii6kL6BgJkuP9QNioVKZ8KwtCs
 LqYPGlS0ytAV4uwxB3RLpNaXLTMIB1LzNCfe11fRA+XnYtaJZHGYwH8mhnSk5/zZnRMdS7
 M/UjdDzIdX2/3/YoKiFQI30njHWQ+ss=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-760Lky5pPISgGhXUdCWx1g-1; Thu, 08 Apr 2021 10:05:22 -0400
X-MC-Unique: 760Lky5pPISgGhXUdCWx1g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB2ED107ACE4;
 Thu,  8 Apr 2021 14:05:20 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E042B6E401;
 Thu,  8 Apr 2021 14:05:12 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:05:12 +0100
Message-ID: <161789071202.6155.16519256513958534906.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kvack.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUVHm-004uLK-EZ
Subject: [V9fs-developer] [PATCH v6 06/30] netfs: Make a netfs helper module
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Steve French <sfrench@samba.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make a netfs helper module to manage read request segmentation, caching
support and transparent huge page support on behalf of a network
filesystem.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@redhat.com>
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

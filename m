Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5190B3A843A
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Jun 2021 17:41:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ltBBo-0003qo-Jc; Tue, 15 Jun 2021 15:41:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1ltBBo-0003qh-6X
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 15:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+FBbMlPbm2yEsz/fG8YH2jekqKDOwBTLfpao5h+P4iE=; b=f1neOMSFbNXwOu+jkvWW9aSw2C
 fYaa+415xFFLkEkOvWd6rsGoOglSxBN8Qn2Gr8t8ycXKKoiGzWtJQdOQGYtTe0/JeidBX2ZT3gfiP
 1YB+QZ41ReX5aRJxhyi+RbR1ScrMwHlUTsWX0nDr/wsuDNFBCESyJo3uDexhYFnMihgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+FBbMlPbm2yEsz/fG8YH2jekqKDOwBTLfpao5h+P4iE=; b=h
 JeICrBbHy6f9Xj94K7krKRb5cAXpfw8zJSNuulccpcFuAQ1UN0LmQa2+wl1BwieT/KGB+71acraqX
 A3i0L8hsvFndVB1oPnvMBeDYGV+JkLZgVb/Kotf30ojySfN3HDjUJxQSWFZ+KrGl8qkZDoVMY4J5i
 RmNy+oxvjHh8tSws=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltBBf-00AvAP-Oj
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Jun 2021 15:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623771665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+FBbMlPbm2yEsz/fG8YH2jekqKDOwBTLfpao5h+P4iE=;
 b=achTvUJCk9CTMJom2MVNv10T8by8FZE7TDSUvrxFA6Kp6a7Cj9NE+dnURCVVyVVtBR4ouw
 K8iqTe3mf9SKwT8UOenBNGfsJwhEH7D4Y9k7NlL2QG8LZj2z1ZSATCArVrtmgj3fDGHFs5
 g1r2ErTgHmIyYWRNfsQpcHy6LOsS+Gw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-HYLFvtjLPVmsp_FlL6GAug-1; Tue, 15 Jun 2021 11:41:04 -0400
X-MC-Unique: HYLFvtjLPVmsp_FlL6GAug-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D3941936B79;
 Tue, 15 Jun 2021 15:41:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-65.rdu2.redhat.com
 [10.10.118.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC15160C13;
 Tue, 15 Jun 2021 15:40:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Tue, 15 Jun 2021 16:40:59 +0100
Message-ID: <162377165897.729347.292567369593752239.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ltBBf-00AvAP-Oj
Subject: [V9fs-developer] [PATCH] netfs: Add MAINTAINERS record
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a MAINTAINERS record for the new netfs helper library.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Jeff Layton <jlayton@kernel.org>
cc: Matthew Wilcox (Oracle) <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
---

 MAINTAINERS |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index bc0ceef87b73..364465f20e81 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12878,6 +12878,15 @@ NETWORKING [WIRELESS]
 L:	linux-wireless@vger.kernel.org
 Q:	http://patchwork.kernel.org/project/linux-wireless/list/
 
+NETWORK FILESYSTEM HELPER LIBRARY
+M:	David Howells <dhowells@redhat.com>
+M:	Jeff Layton <jlayton@kernel.org>
+L:	linux-cachefs@redhat.com (moderated for non-subscribers)
+S:	Supported
+F:	Documentation/filesystems/netfs_library.rst
+F:	fs/netfs/
+F:	include/linux/netfs.h
+
 NETXEN (1/10) GbE SUPPORT
 M:	Manish Chopra <manishc@marvell.com>
 M:	Rahul Verma <rahulv@marvell.com>




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

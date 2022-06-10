Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB054546DC0
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jun 2022 21:57:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzkkx-0006C4-Lh; Fri, 10 Jun 2022 19:57:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nzkkv-0006By-Nw
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 19:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:From:Subject:Sender:Reply-To:To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3jeCJ0CjL8hICbgbmxyJPv0Y5Yht4wCE++YK2OlK3WY=; b=HEyyx4dzifqMUtUFXiKLay0pFu
 vrCf6gMFtwCwSpZ9l6Uw/RKvJ0KHV6eW/9mZn/nhrRyBVM+men8t3bDFa0CqTM+OcicYPVN0rdHNN
 rIDvBB3pkXr0s9gCe+fu9UqyxHG0B/H90N/MFHc0Je9oVMksWQQ8NiDN/H3hzwWOikno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:From:Subject:Sender:Reply-To:To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3jeCJ0CjL8hICbgbmxyJPv0Y5Yht4wCE++YK2OlK3WY=; b=S8k7/LGOSoLv2Rbe53g4TcYZ5n
 9U2wZr9qdzxvqEaeahw2pgIIUc75WZdSgKZT26hrZWZkPfG2cJ6OGpFLpDnOuoSpy7TzgcFi3lpVH
 /zF0W1frWD+BaZa9pn5KJit2fj7EgYlJlAS2rz+ZLLzFxoXK2DQ0RrzbiNCXcbwGORBc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzkko-00E5Kf-V1
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jun 2022 19:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654891019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3jeCJ0CjL8hICbgbmxyJPv0Y5Yht4wCE++YK2OlK3WY=;
 b=gY8j8127OHS8/tKKgFOdYa8ZMqbDowdVCwBoRLLFEgaQ6GiBL8+uqBbMgPIHIfOlu+43Nk
 0i5vFGrV6GKS/PrLboml/39Y7ZAs4phwgMWer9+vENnN3hV9Lo2cB6VzGGpGgwYzHT8bAL
 xlPFG+a6K6xYMyWpxHbABGrFrPMc08o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569-M8QfIXxwP5OeAGJTwAbgMw-1; Fri, 10 Jun 2022 15:56:56 -0400
X-MC-Unique: M8QfIXxwP5OeAGJTwAbgMw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03FE238164CF;
 Fri, 10 Jun 2022 19:56:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5DA042166B26;
 Fri, 10 Jun 2022 19:56:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
Date: Fri, 10 Jun 2022 20:56:53 +0100
Message-ID: <165489101362.703883.116656646897687627.stgit@warthog.procyon.org.uk>
In-Reply-To: <165489100590.703883.11054313979289027590.stgit@warthog.procyon.org.uk>
References: <165489100590.703883.11054313979289027590.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove an unused global variable and make another static as
 reported by make C=1. Signed-off-by: David Howells <dhowells@redhat.com>
 cc: linux-afs@lists.infradead.org --- fs/afs/volume.c | 3 +-- 1 file changed, 
 1 insertion(+), 2 deletions(-) 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzkko-00E5Kf-V1
Subject: [V9fs-developer] [PATCH 1/3] afs: Fix some checker issues
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
 linux-erofs@lists.ozlabs.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Remove an unused global variable and make another static as reported by
make C=1.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/volume.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/afs/volume.c b/fs/afs/volume.c
index 94a3d247924b..cc665cef0abe 100644
--- a/fs/afs/volume.c
+++ b/fs/afs/volume.c
@@ -9,8 +9,7 @@
 #include <linux/slab.h>
 #include "internal.h"
 
-unsigned __read_mostly afs_volume_gc_delay = 10;
-unsigned __read_mostly afs_volume_record_life = 60 * 60;
+static unsigned __read_mostly afs_volume_record_life = 60 * 60;
 
 /*
  * Insert a volume into a cell.  If there's an existing volume record, that is




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

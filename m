Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A887A422130
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 10:50:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXg9D-0004Yb-FU; Tue, 05 Oct 2021 08:50:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mXg9C-0004YV-8B
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TosRxRN3WQ/up4K+sevrujbcFo3VdyvSQBYM4g+OCZ8=; b=cortPfKPbK6UkWO74n7ttJeT9q
 9sAcZkIPoUni6Jv1eKSBmpmINqJUBMI4bLJTA9Aldm0yk3yq4uBJ0Rtmy8VcF9U8Vl2XRUpcAQOb5
 7TknUjw6Efo+PKDOofZF1k+N5bqzCmj2lFA/isHh8Mucijbr2eZwIgbLrZvbiaVcepEo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TosRxRN3WQ/up4K+sevrujbcFo3VdyvSQBYM4g+OCZ8=; b=j1yPgQiizcyp8DPHkMz9MRGpYe
 EM0SOPmK/0OeAtUFFURD6X5qwbFVnoFReMMOW0mwYpzUbn3q9nk2qXvkP31FFVnPITnOd0b/2munn
 dvzuEP4L2NDeAn9+/bzxWqBtognm93XBgUpCawzgBbyTJQ3lmyHuq66WeR0xEYTZysxU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXg98-006C9L-Lh
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633423792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TosRxRN3WQ/up4K+sevrujbcFo3VdyvSQBYM4g+OCZ8=;
 b=ZhwHVMD5QoI8jSFXmCAECg60xtmZI3H+62iz3PnPWXMm4t6ZFojC8xeNpHfmHfYkBjgF1Z
 sFvrQVKrkr0Za1Cy/pbnvDj+IbjXcxOqI1x4dInYt88lzN8jT2zW80XqUSGyF8n3ZTML/M
 TcnlBIAw1J3Vvbo2Su+2e7ltMYV3tCo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-y7FN56EqNL6ai9kMOm7Viw-1; Tue, 05 Oct 2021 04:49:51 -0400
X-MC-Unique: y7FN56EqNL6ai9kMOm7Viw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1DBCF1006AA2;
 Tue,  5 Oct 2021 08:49:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E7D560843;
 Tue,  5 Oct 2021 08:49:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 05 Oct 2021 09:49:41 +0100
Message-ID: <163342378161.876192.6553771342861206270.stgit@warthog.procyon.org.uk>
In-Reply-To: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
References: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fix a kerneldoc warning in nfs due to documentation for a
 parameter that isn't present. Signed-off-by: David Howells
 <dhowells@redhat.com>
 Reviewed-by: Jeff Layton <jlayton@kernel.org> cc: Trond Myklebust
 <trond.myklebust@hammerspace.com>
 cc: Anna Schumaker <anna.schumaker@netapp.com> cc [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mXg98-006C9L-Lh
Subject: [V9fs-developer] [PATCH v3 1/5] nfs: Fix kerneldoc warning shown up
 by W=1
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
Cc: linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, torvalds@linux-foundation.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Fix a kerneldoc warning in nfs due to documentation for a parameter that
isn't present.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: Trond Myklebust <trond.myklebust@hammerspace.com>
cc: Anna Schumaker <anna.schumaker@netapp.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>
cc: linux-nfs@vger.kernel.org
cc: linux-fsdevel@vger.kernel.org
cc: linux-doc@vger.kernel.org
Link: https://lore.kernel.org/r/163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk/ # rfc v1
Link: https://lore.kernel.org/r/163281899704.2790286.9177774252843775348.stgit@warthog.procyon.org.uk/ # rfc v2
---

 fs/nfs_common/grace.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/nfs_common/grace.c b/fs/nfs_common/grace.c
index edec45831585..0a9b72685f98 100644
--- a/fs/nfs_common/grace.c
+++ b/fs/nfs_common/grace.c
@@ -42,7 +42,6 @@ EXPORT_SYMBOL_GPL(locks_start_grace);
 
 /**
  * locks_end_grace
- * @net: net namespace that this lock manager belongs to
  * @lm: who this grace period is for
  *
  * Call this function to state that the given lock manager is ready to




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

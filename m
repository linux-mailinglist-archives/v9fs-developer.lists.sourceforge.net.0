Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E0B422147
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 10:51:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXgAZ-0004ag-PU; Tue, 05 Oct 2021 08:51:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mXgAX-0004aa-PR
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aS5R4ZQ0gp+0Ysi3i/mjuS/AbU0dkZMW30EtcC6cCAk=; b=CmUgvRF9oVUGggwtplD6t3FY8R
 y8k/w73rwtzEmiyXkenplTJmSTvVBNexYTCnx1B1ACMT4JX17qu0oljJuOcdiOq/KX6d11YwHMfgH
 J5GJiBaVXXExy8BK3miJO3mJGBMClgS1I4LcNgB9ZkXdos55Z19ZPv45vsPWzKV1NDYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aS5R4ZQ0gp+0Ysi3i/mjuS/AbU0dkZMW30EtcC6cCAk=; b=Jviy46dzzjfPQaCAb/Fasq4Wyf
 4yLqmk1+w4PJnofjL70ps7DZbQ0MGb+1y3h3PW6ki391COz5M2t18FAp+hrJt9eXAanixKlqtpZBV
 5qfA0+Xz43rNcIO/bC4CAyc8to5abFksiIFlx3TFxSsK5Nf2758LgeRsfGkY6JfQYU5o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXgAW-0005Gc-Vb
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633423878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aS5R4ZQ0gp+0Ysi3i/mjuS/AbU0dkZMW30EtcC6cCAk=;
 b=U30be6omKMWmG1FiWgNIa9hne3Wt5E0lg7lf37+0wNhTEW6xsukspnV0C3pvA211BZI+uz
 eJB7YNYJM7QIhbQWFVK0k/eqn1WHcSw1t+YZNBPXs9pwIX62J/IBrGFvHDEuv/lrplDXhy
 otYrpxTYH7FwUfAT3jj8mVnDZaGlSkM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-6CB-PjIINViFNtvEUn2b8Q-1; Tue, 05 Oct 2021 04:51:15 -0400
X-MC-Unique: 6CB-PjIINViFNtvEUn2b8Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A63DA19057A0;
 Tue,  5 Oct 2021 08:51:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C6EF60BF4;
 Tue,  5 Oct 2021 08:50:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 05 Oct 2021 09:50:54 +0100
Message-ID: <163342385474.876192.4489461265011092810.stgit@warthog.procyon.org.uk>
In-Reply-To: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
References: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fix some kerneldoc warnings in the fscache driver that are
 shown up by W=1. Signed-off-by: David Howells <dhowells@redhat.com>
 Reviewed-by:
 Jeff Layton <jlayton@kernel.org> cc: Mauro Carvalho Chehab
 <mchehab@kernel.org>
 cc: linux-fsdevel@vger.kernel.org cc: linux-doc@vger.ker [...] 
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
X-Headers-End: 1mXgAW-0005Gc-Vb
Subject: [V9fs-developer] [PATCH v3 4/5] fscache: Fix some kerneldoc
 warnings shown up by W=1
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

Fix some kerneldoc warnings in the fscache driver that are shown up by W=1.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>
cc: linux-fsdevel@vger.kernel.org
cc: linux-doc@vger.kernel.org
Link: https://lore.kernel.org/r/163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk/ # rfc v1
Link: https://lore.kernel.org/r/163281899704.2790286.9177774252843775348.stgit@warthog.procyon.org.uk/ # rfc v2
---

 fs/fscache/object.c    |    1 +
 fs/fscache/operation.c |    3 +++
 2 files changed, 4 insertions(+)

diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index f346a78f4bd6..7b9e7a366226 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -907,6 +907,7 @@ static void fscache_dequeue_object(struct fscache_object *object)
  * @object: The object to ask about
  * @data: The auxiliary data for the object
  * @datalen: The size of the auxiliary data
+ * @object_size: The size of the object according to the server.
  *
  * This function consults the netfs about the coherency state of an object.
  * The caller must be holding a ref on cookie->n_active (held by
diff --git a/fs/fscache/operation.c b/fs/fscache/operation.c
index 433877107700..e002cdfaf3cc 100644
--- a/fs/fscache/operation.c
+++ b/fs/fscache/operation.c
@@ -22,7 +22,10 @@ static void fscache_operation_dummy_cancel(struct fscache_operation *op)
 
 /**
  * fscache_operation_init - Do basic initialisation of an operation
+ * @cookie: The cookie to operate on
  * @op: The operation to initialise
+ * @processor: The function to perform the operation
+ * @cancel: A function to handle operation cancellation
  * @release: The release function to assign
  *
  * Do basic initialisation of an operation.  The caller must still set flags,




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

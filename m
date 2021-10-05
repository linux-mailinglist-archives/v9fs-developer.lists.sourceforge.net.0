Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4DE42214B
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 10:51:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXgAm-0004bK-RO; Tue, 05 Oct 2021 08:51:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mXgAl-0004bD-R5
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SzIKShd8U21M23BZYRLg2njihFTOZw5S9K9ysZYMhAI=; b=Hq2IHywoUMNA29fl5oG2oK4462
 WWua5u7mDJcLWWVToI4pvPVRbE6eVx5kJcSQgIoZ14SUeCk7Kc0mjN9R8qfxPCjaQUSJCRG3Say/L
 AnGlt2kKx1A0qKCmXuRKRCG9v49rLXlIdYzt70zDLmCF0c2B2oDGhXvwGrlmxhXpq4XQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SzIKShd8U21M23BZYRLg2njihFTOZw5S9K9ysZYMhAI=; b=Q+NCLNIlLMh1rkitAjnaJrN4Tc
 +EQrUwu+rEmZyTDZla1UAELGMOj71Yo3hJyNELBV7iAO7TaNfJQhOWtiavrbIfNmC2M4mY75nJkmF
 sCnCVigqxAG+8BbR9ad9oHrB0tkyWktvFpnM/Eqk7YBjP5OizHNxyCGNmf2zrga0lUNM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXgAl-0005I9-6g
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633423893;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SzIKShd8U21M23BZYRLg2njihFTOZw5S9K9ysZYMhAI=;
 b=bvVxMUIbpdi3HzGQ1QqzeS7vCJREOJysSt20DwLYm6cN7BCcjLi7ono2/ECzr7IQIqkKG/
 qOxMSpZvc52u6t94ulnOemMkQpwUABWPaDl6wFQdjYxLVfzpHDqH6+AumR+kiN+SSlYKNv
 0oP6C7rJfYjlE8Qewa7GMUrOULhDJ0s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-4-VfjO1uPCCAi3wRDiEUYA-1; Tue, 05 Oct 2021 04:51:30 -0400
X-MC-Unique: 4-VfjO1uPCCAi3wRDiEUYA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19F991084694;
 Tue,  5 Oct 2021 08:51:28 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1FB39AA36;
 Tue,  5 Oct 2021 08:51:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 05 Oct 2021 09:51:18 +0100
Message-ID: <163342387890.876192.10223297869496086216.stgit@warthog.procyon.org.uk>
In-Reply-To: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
References: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The fscache object CREATE_OBJECT work state isn't ever
 referred to,
 so remove it and avoid the unused variable warning caused by W=1.
 Signed-off-by:
 David Howells <dhowells@redhat.com> Reviewed-by: Jeff Layton
 <jlayton@kernel.org>
 cc: linux-fsdevel@vger.kernel.org cc: linux-doc@vger.kernel.org Link:
 https://lore.kernel.org/r/1632140 [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mXgAl-0005I9-6g
Subject: [V9fs-developer] [PATCH v3 5/5] fscache: Remove an unused static
 variable
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

The fscache object CREATE_OBJECT work state isn't ever referred to, so
remove it and avoid the unused variable warning caused by W=1.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@kernel.org>
cc: linux-fsdevel@vger.kernel.org
cc: linux-doc@vger.kernel.org
Link: https://lore.kernel.org/r/163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk/ # rfc v1
Link: https://lore.kernel.org/r/163281899704.2790286.9177774252843775348.stgit@warthog.procyon.org.uk/ # rfc v2
---

 fs/fscache/object.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/fscache/object.c b/fs/fscache/object.c
index 7b9e7a366226..6a675652129b 100644
--- a/fs/fscache/object.c
+++ b/fs/fscache/object.c
@@ -77,7 +77,6 @@ static WORK_STATE(INIT_OBJECT,		"INIT", fscache_initialise_object);
 static WORK_STATE(PARENT_READY,		"PRDY", fscache_parent_ready);
 static WORK_STATE(ABORT_INIT,		"ABRT", fscache_abort_initialisation);
 static WORK_STATE(LOOK_UP_OBJECT,	"LOOK", fscache_look_up_object);
-static WORK_STATE(CREATE_OBJECT,	"CRTO", fscache_look_up_object);
 static WORK_STATE(OBJECT_AVAILABLE,	"AVBL", fscache_object_available);
 static WORK_STATE(JUMPSTART_DEPS,	"JUMP", fscache_jumpstart_dependents);
 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

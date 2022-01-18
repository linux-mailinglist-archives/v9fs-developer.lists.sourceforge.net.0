Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37549279F
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 14:54:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9owK-0003il-GM; Tue, 18 Jan 2022 13:54:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9owI-0003iT-OX
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fr5/mO03Eh5zUsIqinEzhvjD7us57tEwXFItTFwYtZU=; b=PEMy88mLx65dPmT3Pxs7DBskaO
 T1+aDqYdXrzpoEY+ksE+qqecdeATRLX5jIUB+IkgvtcttlLIAt1aspPBk12agw082YNjV1/JjE02M
 fK2rr/+0DD//8nHuXv5y1Nw95cuXUK+vYoZ4510/ILpNuf4/+m98Swf0fwHrERP49tKI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fr5/mO03Eh5zUsIqinEzhvjD7us57tEwXFItTFwYtZU=; b=FFA19pGhV6pz6uzGBU8+bay/dv
 Zp93FPVJrSL1Ap3NtTug3ehJlb1kUR2SgZZj1Lnfl1bvhrOdgxtV6C1H1LwCGuq3EbMF3nvNyFKCK
 4AoCgqas5N07p4WrPj8ZrwHufEHyBs9VllVZUnk0Jn2h9tSqU6RT9oYwIeD0zAIHkX+o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9owG-0005uZ-Kl
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 13:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642514054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fr5/mO03Eh5zUsIqinEzhvjD7us57tEwXFItTFwYtZU=;
 b=V2+/gWzD2yh9Ufp0rDB6XMhnc9igEnqyAit1ndGeOkHGmPGVRNmva85fsvJh0hs1f97TEs
 POMR6NUQvse3+M1VEJDRv+5bRWdc+feBrZ87cz+TV86VHQdMY4g9PvcriAWf6wzF2A6Z7o
 RTRdntOOsXtm2aL23HnTEsyKQ8pZLx8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-459-pH-mfP1eOZqcIhYXlI8mdA-1; Tue, 18 Jan 2022 08:54:13 -0500
X-MC-Unique: pH-mfP1eOZqcIhYXlI8mdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F288483DD2B;
 Tue, 18 Jan 2022 13:54:10 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 81BC978AB5;
 Tue, 18 Jan 2022 13:54:07 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 18 Jan 2022 13:54:06 +0000
Message-ID: <164251404666.3435901.17331742792401482190.stgit@warthog.procyon.org.uk>
In-Reply-To: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a tracepoint to log failure to apply an active mark to
 a file in addition to tracing successfully setting and unsetting the mark.
 Also include the backing file inode number in the message logged to dmesg.
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9owG-0005uZ-Kl
Subject: [V9fs-developer] [PATCH 05/11] cachefiles: Trace active-mark failure
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a tracepoint to log failure to apply an active mark to a file in
addition to tracing successfully setting and unsetting the mark.

Also include the backing file inode number in the message logged to dmesg.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com
---

 fs/cachefiles/namei.c             |    4 +++-
 include/trace/events/cachefiles.h |   21 +++++++++++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 52c9f0864a87..f256c8aff7bb 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -25,7 +25,9 @@ static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
 		trace_cachefiles_mark_active(object, inode);
 		can_use = true;
 	} else {
-		pr_notice("cachefiles: Inode already in use: %pd\n", dentry);
+		trace_cachefiles_mark_failed(object, inode);
+		pr_notice("cachefiles: Inode already in use: %pd (B=%lx)\n",
+			  dentry, inode->i_ino);
 	}
 
 	return can_use;
diff --git a/include/trace/events/cachefiles.h b/include/trace/events/cachefiles.h
index 093c4acb7a3a..c6f5aa74db89 100644
--- a/include/trace/events/cachefiles.h
+++ b/include/trace/events/cachefiles.h
@@ -573,6 +573,27 @@ TRACE_EVENT(cachefiles_mark_active,
 		      __entry->obj, __entry->inode)
 	    );
 
+TRACE_EVENT(cachefiles_mark_failed,
+	    TP_PROTO(struct cachefiles_object *obj,
+		     struct inode *inode),
+
+	    TP_ARGS(obj, inode),
+
+	    /* Note that obj may be NULL */
+	    TP_STRUCT__entry(
+		    __field(unsigned int,		obj		)
+		    __field(ino_t,			inode		)
+			     ),
+
+	    TP_fast_assign(
+		    __entry->obj	= obj ? obj->debug_id : 0;
+		    __entry->inode	= inode->i_ino;
+			   ),
+
+	    TP_printk("o=%08x B=%lx",
+		      __entry->obj, __entry->inode)
+	    );
+
 TRACE_EVENT(cachefiles_mark_inactive,
 	    TP_PROTO(struct cachefiles_object *obj,
 		     struct inode *inode),




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

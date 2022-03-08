Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 359294D24CC
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 00:26:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nRjDL-0006oE-3r; Tue, 08 Mar 2022 23:25:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nRjDJ-0006o2-EI
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UdOgDnE1tPhxPwKj+dzga7GCH2QN5VPxiT3X8/my5Mg=; b=BnQVWZP9Dl74GuMu7hnMMDCYFB
 bhQtX6AU20V/1KGk2pquJkrxO+FTO3Q08jpw4lC8hnmkIOVlapPaUNM52tLRNYQ0schYCT8S+gn3h
 eQE1bRIwX6EzkLCMyiDBsLNr9E3b0P9oAnoxLEIVMeOLEm21Pu5E3B3iS4QWMCpEI9NM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UdOgDnE1tPhxPwKj+dzga7GCH2QN5VPxiT3X8/my5Mg=; b=fs9Ck5NmwYpcoLI3Sqj6bcNnas
 VPuqlQi50ufg36erqZYR0mOmyTSj5+yIr9tXmfH5oykTjToVgr/O/SGSr+HllrgJNaQCMX+64kMo0
 OPsxlAlXevtJCTcqV3X2Bez3lcfYEk1dEFZvhNFEevHLLN7j9aCM6txjjcTe9QibGUXI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRjDH-0097DG-6K
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Mar 2022 23:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646781949;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UdOgDnE1tPhxPwKj+dzga7GCH2QN5VPxiT3X8/my5Mg=;
 b=FHCnOWsJiqVlzckm4knOCwE0Dk3ExqqMIyhelOZ79b0Ddc+AC5rHqjbuW1DP/6Sd9Vwytz
 9MtVHESgcJmfOj0P9M6jb6f1IeyPZVxuyhxxuEE/U2/GWZaqWpD7QnyEJ82nU/xSCn/NrE
 G+FQRe2J8LFr1ypksnjZxMOmdyeu0JY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-390-7r9rJDxVPWWPW0jfCOA-5Q-1; Tue, 08 Mar 2022 18:25:48 -0500
X-MC-Unique: 7r9rJDxVPWWPW0jfCOA-5Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55F98801AEB;
 Tue,  8 Mar 2022 23:25:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 66E2C2D1F4;
 Tue,  8 Mar 2022 23:25:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Tue, 08 Mar 2022 23:25:24 +0000
Message-ID: <164678192454.1200972.4428834328108580460.stgit@warthog.procyon.org.uk>
In-Reply-To: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  netfs has a number of lists of symbols for use in tracing,
 listed in an enum and then listed again in a symbol->string mapping for use
 with __print_symbolic(). This is, however, redundant. Instead,
 use the symbol->string
 mapping list to also generate the enum where the enum is in the same file.
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRjDH-0097DG-6K
Subject: [V9fs-developer] [PATCH v2 02/19] netfs: Generate enums from trace
 symbol mapping lists
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

netfs has a number of lists of symbols for use in tracing, listed in an
enum and then listed again in a symbol->string mapping for use with
__print_symbolic().  This is, however, redundant.

Instead, use the symbol->string mapping list to also generate the enum
where the enum is in the same file.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-cachefs@redhat.com

Link: https://lore.kernel.org/r/164622980839.3564931.5673300162465266909.stgit@warthog.procyon.org.uk/ # v1
---

 include/trace/events/netfs.h |   57 ++++++++++--------------------------------
 1 file changed, 14 insertions(+), 43 deletions(-)

diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index e6f4ebbb4c69..88d9a74dd346 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -15,49 +15,6 @@
 /*
  * Define enums for tracing information.
  */
-#ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
-#define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
-
-enum netfs_read_trace {
-	netfs_read_trace_expanded,
-	netfs_read_trace_readahead,
-	netfs_read_trace_readpage,
-	netfs_read_trace_write_begin,
-};
-
-enum netfs_rreq_trace {
-	netfs_rreq_trace_assess,
-	netfs_rreq_trace_done,
-	netfs_rreq_trace_free,
-	netfs_rreq_trace_resubmit,
-	netfs_rreq_trace_unlock,
-	netfs_rreq_trace_unmark,
-	netfs_rreq_trace_write,
-};
-
-enum netfs_sreq_trace {
-	netfs_sreq_trace_download_instead,
-	netfs_sreq_trace_free,
-	netfs_sreq_trace_prepare,
-	netfs_sreq_trace_resubmit_short,
-	netfs_sreq_trace_submit,
-	netfs_sreq_trace_terminated,
-	netfs_sreq_trace_write,
-	netfs_sreq_trace_write_skip,
-	netfs_sreq_trace_write_term,
-};
-
-enum netfs_failure {
-	netfs_fail_check_write_begin,
-	netfs_fail_copy_to_cache,
-	netfs_fail_read,
-	netfs_fail_short_readpage,
-	netfs_fail_short_write_begin,
-	netfs_fail_prepare_write,
-};
-
-#endif
-
 #define netfs_read_traces					\
 	EM(netfs_read_trace_expanded,		"EXPANDED ")	\
 	EM(netfs_read_trace_readahead,		"READAHEAD")	\
@@ -98,6 +55,20 @@ enum netfs_failure {
 	EM(netfs_fail_short_write_begin,	"short-write-begin")	\
 	E_(netfs_fail_prepare_write,		"prep-write")
 
+#ifndef __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
+#define __NETFS_DECLARE_TRACE_ENUMS_ONCE_ONLY
+
+#undef EM
+#undef E_
+#define EM(a, b) a,
+#define E_(a, b) a
+
+enum netfs_read_trace { netfs_read_traces } __mode(byte);
+enum netfs_rreq_trace { netfs_rreq_traces } __mode(byte);
+enum netfs_sreq_trace { netfs_sreq_traces } __mode(byte);
+enum netfs_failure { netfs_failures } __mode(byte);
+
+#endif
 
 /*
  * Export enum symbols via userspace.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

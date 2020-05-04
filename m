Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0C61C40FF
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:08:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVeaQ-0007n2-Pw; Mon, 04 May 2020 17:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVeaO-0007mn-Ng
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0zbaY5aCZkhnyOx8006Ksv6GYkB1XDRbS6vVZoSyWsQ=; b=ElYp9lCMGh3BqBN/h8of5y6fj2
 DfXBA/U1hNHDcV65PH5opN4FyhgDrATPwhkWbIvWm8fCArds2k0EqCMlbu4BTcVUo553hlsMi0SZU
 8gR5mfuHTVcMEFMlOYLZ2OwvswB2Qt81K8U96eyXFbnJimqdV2lk6+Ar3Sc4nXBfugzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0zbaY5aCZkhnyOx8006Ksv6GYkB1XDRbS6vVZoSyWsQ=; b=P1ZtIr1W1zpVn68obhzeC9q1/C
 7VE0pozXfAlIdy+CymJ8GIyYVifNWtaAcslPvzz3rcXufQ9Msgc+6ElDfOTLJnR+Tz97p3qDWXhw2
 nyN11D8hwlTZjCN8/O9r1jK8MLs3Lf1lpj1l+BzUmqDqtMzVlfqUssZU7bpYg8xvK8So=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVeaK-0079fo-7E
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:08:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0zbaY5aCZkhnyOx8006Ksv6GYkB1XDRbS6vVZoSyWsQ=;
 b=H3i6P4V74gLEI7ZEEVukx+Qn3j5+aUgbUugyrAbrgvkkc/qjDfpiyr7jDRT2E1o8GdYK+p
 +Jp0b9mus4POoDnvG3frYuJTPhlT4mFpE2gZDcKF9ljuYAcSLuCEmBZvty04H+RQPSbg+s
 X5AQNm3FI4+119+nbVj/R3W3SNGSvUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-llX5EtH4Mji7MqgIXODwbg-1; Mon, 04 May 2020 13:07:34 -0400
X-MC-Unique: llX5EtH4Mji7MqgIXODwbg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31AC8107ACCD;
 Mon,  4 May 2020 17:07:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAB3C5D9E8;
 Mon,  4 May 2020 17:07:27 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:07:26 +0100
Message-ID: <158861204690.340223.9682983562368438550.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeaK-0079fo-7E
Subject: [V9fs-developer] [RFC PATCH 01/61] afs: Make afs_zap_data() static
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make afs_zap_data() static as it's only used in the file in which it is
defined.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/inode.c    |    2 +-
 fs/afs/internal.h |    1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 281470fe1183..67ccfbab683c 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -568,7 +568,7 @@ struct inode *afs_iget(struct super_block *sb, struct key *key,
  * mark the data attached to an inode as obsolete due to a write on the server
  * - might also want to ditch all the outstanding writes and dirty pages
  */
-void afs_zap_data(struct afs_vnode *vnode)
+static void afs_zap_data(struct afs_vnode *vnode)
 {
 	_enter("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);
 
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index 80255513e230..03487f1bef07 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -1017,7 +1017,6 @@ extern struct inode *afs_iget(struct super_block *, struct key *,
 			      struct afs_iget_data *, struct afs_status_cb *,
 			      struct afs_cb_interest *,
 			      struct afs_vnode *);
-extern void afs_zap_data(struct afs_vnode *);
 extern bool afs_check_validity(struct afs_vnode *);
 extern int afs_validate(struct afs_vnode *, struct key *);
 extern int afs_getattr(const struct path *, struct kstat *, u32, unsigned int);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

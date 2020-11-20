Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A75772BAD0C
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:08:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg81X-000218-FR; Fri, 20 Nov 2020 15:08:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg81D-000203-IS
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cSBKZMQQx7IJOONTQG4My1SW3PCF/Wugv/7xWXwL1pA=; b=AsF0kvjwa84/DzLqdQIWsBQokp
 cTM/VsWs951iosHfWEoVX4SubzA+FIEV5tJohNGu+1VA9K39QpfWYlQBu8vIm4hz3boki6wnQi0SQ
 lIfoIwGxT2bj4Zg6Z9fRzWwlwT8mwyK1I1WWzub/2rZygxDjswnAEvmHwt8kV5TMHmIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cSBKZMQQx7IJOONTQG4My1SW3PCF/Wugv/7xWXwL1pA=; b=MByTPDQvlvKT4f0sdswlrNizPS
 A2mX06txX4g5EYVCAB7MV3jjjliYxCCFTp/ZdL+rPNRNRj5c6Xqej7jymoBKbAt1rKJXMqnXKpLmZ
 6dVAOD6/2ild8xRnayCzWhECwJivAHYSkTYnXuLvrkXmYSBNO3+opSHl7bUj+/eLYnOk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg814-003B4M-7v
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605884876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cSBKZMQQx7IJOONTQG4My1SW3PCF/Wugv/7xWXwL1pA=;
 b=aE2Yek84fP1YWIsBJaLuKH6C/G3BfRha02JiKRxb/r8uowi88Xzd0agAkF4uNdpdHZQ8Pf
 GW1ztDnbu5toysKZSbJwchr3dV5c68E87haLbpw7XDmkzgQcLwPIqrou19aocYHxxWUV0q
 FPlwh4aoDZb37DfQtZ05d5qU5RYhkck=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-VjKu89TTMnqjhHpXjpmX3g-1; Fri, 20 Nov 2020 10:07:52 -0500
X-MC-Unique: VjKu89TTMnqjhHpXjpmX3g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24D958144F3;
 Fri, 20 Nov 2020 15:07:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 072DB5D9D0;
 Fri, 20 Nov 2020 15:07:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:07:43 +0000
Message-ID: <160588486318.3465195.8936971598684341062.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg814-003B4M-7v
Subject: [V9fs-developer] [RFC PATCH 24/76] fscache: Provide a simple thread
 pool for running ops asynchronously
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
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Provide a simple thread pool that can be used to run cookie management
operations in the background and a dispatcher infrastructure to punt
operations to the pool if threads are available or to just run the
operation in the calling thread if not.

A future patch will replace all the object state machine stuff with whole
routines that do all the work in one go without trying to interleave bits
from various objects.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fscache/Makefile            |    1 
 fs/fscache/dispatcher.c        |  145 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    8 ++
 fs/fscache/main.c              |    7 ++
 include/trace/events/fscache.h |    6 +-
 5 files changed, 166 insertions(+), 1 deletion(-)
 create mode 100644 fs/fscache/dispatcher.c

diff --git a/fs/fscache/Makefile b/fs/fscache/Makefile
index ac3fcd909fff..7b10c6aad157 100644
--- a/fs/fscache/Makefile
+++ b/fs/fscache/Makefile
@@ -6,6 +6,7 @@
 fscache-y := \
 	cache.o \
 	cookie.o \
+	dispatcher.o \
 	fsdef.o \
 	main.o \
 	netfs.o \
diff --git a/fs/fscache/dispatcher.c b/fs/fscache/dispatcher.c
new file mode 100644
index 000000000000..3d957e499da3
--- /dev/null
+++ b/fs/fscache/dispatcher.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Object dispatcher
+ *
+ * Copyright (C) 2020 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ */
+
+#define FSCACHE_DEBUG_LEVEL OPERATION
+#include <linux/kthread.h>
+#include <linux/slab.h>
+#include <linux/wait.h>
+#include <linux/freezer.h>
+#include "internal.h"
+
+#define FSCACHE_DISPATCHER_POOL_SIZE 8
+
+static LIST_HEAD(fscache_pending_work);
+static DEFINE_SPINLOCK(fscache_work_lock);
+static DECLARE_WAIT_QUEUE_HEAD(fscache_dispatcher_pool);
+static struct completion fscache_dispatcher_pool_done[FSCACHE_DISPATCHER_POOL_SIZE];
+static bool fscache_dispatcher_stop;
+
+struct fscache_work {
+	struct list_head	link;
+	struct fscache_cookie	*cookie;
+	struct fscache_object	*object;
+	int			param;
+	void (*func)(struct fscache_cookie *, struct fscache_object *, int);
+};
+
+/*
+ * Attempt to queue some work to do.  If there's too much asynchronous work
+ * already queued, we'll do it here in this thread instead.
+ */
+void fscache_dispatch(struct fscache_cookie *cookie,
+		      struct fscache_object *object,
+		      int param,
+		      void (*func)(struct fscache_cookie *,
+				   struct fscache_object *, int))
+{
+	struct fscache_work *work;
+	bool queued = false;
+
+	work = kzalloc(sizeof(struct fscache_work), GFP_KERNEL);
+	if (work) {
+		work->cookie = cookie;
+		work->object = object;
+		work->param = param;
+		work->func = func;
+
+		spin_lock(&fscache_work_lock);
+		if (waitqueue_active(&fscache_dispatcher_pool) ||
+		    list_empty(&fscache_pending_work)) {
+			fscache_cookie_get(cookie, fscache_cookie_get_work);
+			list_add_tail(&work->link, &fscache_pending_work);
+			wake_up(&fscache_dispatcher_pool);
+			queued = true;
+		}
+		spin_unlock(&fscache_work_lock);
+	}
+
+	if (!queued) {
+		kfree(work);
+		func(cookie, object, param);
+	}
+}
+
+/*
+ * A dispatcher thread.
+ */
+static int fscache_dispatcher(void *data)
+{
+	struct completion *done = data;
+
+	for (;;) {
+		if (!list_empty(&fscache_pending_work)) {
+			struct fscache_work *work = NULL;
+
+			spin_lock(&fscache_work_lock);
+			if (!list_empty(&fscache_pending_work)) {
+				work = list_entry(fscache_pending_work.next,
+						  struct fscache_work, link);
+				list_del_init(&work->link);
+			}
+			spin_unlock(&fscache_work_lock);
+
+			if (work) {
+				work->func(work->cookie, work->object, work->param);
+				fscache_cookie_put(work->cookie, fscache_cookie_put_work);
+				kfree(work);
+			}
+			continue;
+		} else if (fscache_dispatcher_stop) {
+			break;
+		}
+
+		wait_event_freezable(fscache_dispatcher_pool,
+				     (fscache_dispatcher_stop ||
+				      !list_empty(&fscache_pending_work)));
+	}
+
+	complete_and_exit(done, 0);
+}
+
+/*
+ * Start up the dispatcher threads.
+ */
+int fscache_init_dispatchers(void)
+{
+	struct task_struct *t;
+	int i;
+
+	for (i = 0; i < FSCACHE_DISPATCHER_POOL_SIZE; i++) {
+		init_completion(&fscache_dispatcher_pool_done[i]);
+		t = kthread_create(fscache_dispatcher,
+				   &fscache_dispatcher_pool_done[i],
+				   "kfsc/%d", i);
+		if (IS_ERR(t))
+			goto failed;
+		wake_up_process(t);
+	}
+
+	return 0;
+
+failed:
+	fscache_dispatcher_stop = true;
+	wake_up_all(&fscache_dispatcher_pool);
+	for (i--; i >= 0; i--)
+		wait_for_completion(&fscache_dispatcher_pool_done[i]);
+	return PTR_ERR(t);
+}
+
+/*
+ * Kill off the dispatcher threads.
+ */
+void fscache_kill_dispatchers(void)
+{
+	int i;
+
+	fscache_dispatcher_stop = true;
+	wake_up_all(&fscache_dispatcher_pool);
+
+	for (i = 0; i < FSCACHE_DISPATCHER_POOL_SIZE; i++)
+		wait_for_completion(&fscache_dispatcher_pool_done[i]);
+}
diff --git a/fs/fscache/internal.h b/fs/fscache/internal.h
index bc5539d2157b..2100e2222884 100644
--- a/fs/fscache/internal.h
+++ b/fs/fscache/internal.h
@@ -75,6 +75,14 @@ extern struct fscache_cookie *fscache_hash_cookie(struct fscache_cookie *);
 extern void fscache_cookie_put(struct fscache_cookie *,
 			       enum fscache_cookie_trace);
 
+/*
+ * dispatcher.c
+ */
+extern void fscache_dispatch(struct fscache_cookie *, struct fscache_object *, int,
+			     void (*func)(struct fscache_cookie *, struct fscache_object *, int));
+extern int fscache_init_dispatchers(void);
+extern void fscache_kill_dispatchers(void);
+
 /*
  * fsdef.c
  */
diff --git a/fs/fscache/main.c b/fs/fscache/main.c
index c1e6cc9091aa..c8f1beafa8e1 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -125,6 +125,10 @@ static int __init fscache_init(void)
 	for_each_possible_cpu(cpu)
 		init_waitqueue_head(&per_cpu(fscache_object_cong_wait, cpu));
 
+	ret = fscache_init_dispatchers();
+	if (ret < 0)
+		goto error_dispatchers;
+
 	ret = fscache_proc_init();
 	if (ret < 0)
 		goto error_proc;
@@ -159,6 +163,8 @@ static int __init fscache_init(void)
 	unregister_sysctl_table(fscache_sysctl_header);
 error_sysctl:
 #endif
+	fscache_kill_dispatchers();
+error_dispatchers:
 	fscache_proc_cleanup();
 error_proc:
 	destroy_workqueue(fscache_op_wq);
@@ -183,6 +189,7 @@ static void __exit fscache_exit(void)
 	unregister_sysctl_table(fscache_sysctl_header);
 #endif
 	fscache_proc_cleanup();
+	fscache_kill_dispatchers();
 	destroy_workqueue(fscache_op_wq);
 	destroy_workqueue(fscache_object_wq);
 	pr_notice("Unloaded\n");
diff --git a/include/trace/events/fscache.h b/include/trace/events/fscache.h
index 08d7de72409d..fb3fdf2921ee 100644
--- a/include/trace/events/fscache.h
+++ b/include/trace/events/fscache.h
@@ -26,11 +26,13 @@ enum fscache_cookie_trace {
 	fscache_cookie_get_attach_object,
 	fscache_cookie_get_reacquire,
 	fscache_cookie_get_register_netfs,
+	fscache_cookie_get_work,
 	fscache_cookie_put_acquire_nobufs,
 	fscache_cookie_put_dup_netfs,
 	fscache_cookie_put_relinquish,
 	fscache_cookie_put_object,
 	fscache_cookie_put_parent,
+	fscache_cookie_put_work,
 };
 
 #endif
@@ -45,11 +47,13 @@ enum fscache_cookie_trace {
 	EM(fscache_cookie_get_attach_object,	"GET obj")		\
 	EM(fscache_cookie_get_reacquire,	"GET raq")		\
 	EM(fscache_cookie_get_register_netfs,	"GET net")		\
+	EM(fscache_cookie_get_work,		"GET wrk")		\
 	EM(fscache_cookie_put_acquire_nobufs,	"PUT nbf")		\
 	EM(fscache_cookie_put_dup_netfs,	"PUT dnt")		\
 	EM(fscache_cookie_put_relinquish,	"PUT rlq")		\
 	EM(fscache_cookie_put_object,		"PUT obj")		\
-	E_(fscache_cookie_put_parent,		"PUT prn")
+	EM(fscache_cookie_put_parent,		"PUT prn")		\
+	E_(fscache_cookie_put_work,		"PUT wrk")
 
 /*
  * Export enum symbols via userspace.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

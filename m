Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FDE21DC5C
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:32:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1NK-00077w-Qq; Mon, 13 Jul 2020 16:32:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1NJ-00077j-VA
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:32:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FFWzOvKlQKljLhANCdGMPaz1s06wEFCG5wrNzS5w+bY=; b=bf6Fa4+FKh5RUoU2DPC5/VSSa5
 SF4BlasAVGtgv5lRafD1Sz7KzX9SWRuGg/OSAY6X7xf8l/I49AGhWWzgXueYvzEfUFKBgaM8V6T6T
 LDqI5TYMjnYr8j8008+PbeHwWONEh49gSa3qhrvV52GTigdCqyBhoXt1GU67na6Hxl1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FFWzOvKlQKljLhANCdGMPaz1s06wEFCG5wrNzS5w+bY=; b=CB72Mb2sy+dT/c97A5GSdLgfL0
 fwlzM0dWlySSZlZD9p/qxmS7fqZad1zApoEyDp8TUApnjHACEOIqpiFHysqEKsioB/V22MW+vcpR8
 XsY1CMmT+118jWe7/lSmcwnQmKIrtAEkHXgu6O84J37Qyraq88EuTAU/T7wm3Wt2fdP4=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1NE-001hKz-IR
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594657926;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FFWzOvKlQKljLhANCdGMPaz1s06wEFCG5wrNzS5w+bY=;
 b=QscXOp+Kixilq7eyPleSOZKDPCtHAfJ5f9rrqcD+/aLVg7LhSAxKD+n0iCHvEX2Z5dJo+e
 CWdcItKp5D5R0j4ruIF1S5vt/5AKFv66/LYJNZtoKUXgtor8e6n+On8yJ+OsYOfdYWILXy
 mekSLQFId5kSFeLCzPU+ZD4rpHj4koM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-tfYVvGyfMaSbVREs3bDUZA-1; Mon, 13 Jul 2020 12:32:04 -0400
X-MC-Unique: tfYVvGyfMaSbVREs3bDUZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B290A80183C;
 Mon, 13 Jul 2020 16:32:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 06AD310013C0;
 Mon, 13 Jul 2020 16:31:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:31:56 +0100
Message-ID: <159465791622.1376674.11171480091432676587.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
References: <159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Headers-End: 1jv1NE-001hKz-IR
Subject: [V9fs-developer] [PATCH 07/32] fscache: Provide a simple thread
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
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
 fs/fscache/dispatcher.c        |  144 ++++++++++++++++++++++++++++++++++++++++
 fs/fscache/internal.h          |    8 ++
 fs/fscache/main.c              |    7 ++
 include/trace/events/fscache.h |    6 +-
 5 files changed, 165 insertions(+), 1 deletion(-)
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
index 000000000000..fba71b99c951
--- /dev/null
+++ b/fs/fscache/dispatcher.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Object dispatcher
+ *
+ * Copyright (C) 2019 Red Hat, Inc. All Rights Reserved.
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

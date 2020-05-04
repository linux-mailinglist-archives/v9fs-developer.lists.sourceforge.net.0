Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D191C4143
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 May 2020 19:11:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jVecN-0002Iw-Aa; Mon, 04 May 2020 17:10:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jVecL-0002Io-Qf
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M4oL6N/GpwLquZZlVllSUfD/UnpVAy0bEt1/6IbnbUs=; b=AUtLUvBhWzj8ylwdzBNDxZqrfx
 wE5oPjM7sedcKGEBi4qFWH5JkSSjfsVtyGkTORf4oAovrJZiNUOtBc30AeRzHR+McuTWHgtpVCe5t
 1tsK+QjtwQgh0xKKytv/3N//G8SW0Wdgumm8cZTyA2MmLo7YD8ke54CxkdGRo47Gg1RA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M4oL6N/GpwLquZZlVllSUfD/UnpVAy0bEt1/6IbnbUs=; b=cpT4ZsPB99ohvLoQ6prlyvMWjE
 MA2/hel6Ecm+bIWwJVvKb2f0r/er+UC89pGlXvRGRfg2x/BJwovS+0nBnumG71zpIj8yk3PzdMK+s
 P5VD5ideYHA905K8pTs/eRz06YL5aeW78vJxYk8omQTcM7n5a5hKhlfkVaO2JmkMDA5M=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jVecK-0079rX-1A
 for v9fs-developer@lists.sourceforge.net; Mon, 04 May 2020 17:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588612250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M4oL6N/GpwLquZZlVllSUfD/UnpVAy0bEt1/6IbnbUs=;
 b=WGI1hHp2BCae4Hcg1ji5fCy5JouSaoG3kjQxnY8OAoNa53PjVDCSFytyvH64B+dtv17Lyk
 UWWVk/MrHhBaSeayYKo46CVkKowBYjmqEM0FIwlkWtvnNjXRGovw5xkeUp+kfplVDU/aob
 QyMdRQipeiPSeb7n2fbT9Cqy8kPQxoU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-ULOBpGAKNc27T0SHgXQAxQ-1; Mon, 04 May 2020 13:10:46 -0400
X-MC-Unique: ULOBpGAKNc27T0SHgXQAxQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FEBB872FEB;
 Mon,  4 May 2020 17:10:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D47BD5C1B2;
 Mon,  4 May 2020 17:10:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Jeff Layton <jlayton@redhat.com>
Date: Mon, 04 May 2020 18:10:41 +0100
Message-ID: <158861224099.340223.12658954309881846480.stgit@warthog.procyon.org.uk>
In-Reply-To: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
References: <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVecK-0079rX-1A
Subject: [V9fs-developer] [RFC PATCH 21/61] fscache: Provide a simple thread
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
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
index 59c2494efda3..6f225ae0fd99 100644
--- a/fs/fscache/main.c
+++ b/fs/fscache/main.c
@@ -126,6 +126,10 @@ static int __init fscache_init(void)
 	for_each_possible_cpu(cpu)
 		init_waitqueue_head(&per_cpu(fscache_object_cong_wait, cpu));
 
+	ret = fscache_init_dispatchers();
+	if (ret < 0)
+		goto error_dispatchers;
+
 	ret = fscache_proc_init();
 	if (ret < 0)
 		goto error_proc;
@@ -160,6 +164,8 @@ static int __init fscache_init(void)
 	unregister_sysctl_table(fscache_sysctl_header);
 error_sysctl:
 #endif
+	fscache_kill_dispatchers();
+error_dispatchers:
 	fscache_proc_cleanup();
 error_proc:
 	destroy_workqueue(fscache_op_wq);
@@ -184,6 +190,7 @@ static void __exit fscache_exit(void)
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

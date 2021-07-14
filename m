Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E44243C920C
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Jul 2021 22:24:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3lQP-00033n-7Z; Wed, 14 Jul 2021 20:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <vgoyal@redhat.com>) id 1m3lQL-00033d-BV
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GD652Dv0mO/EqFC8MlYZcI3PTfmYv/h39ouJ4ycGzec=; b=hTfWSeGmbBzwH0M1PBnTzPGP4r
 iYGTm7DG7FdKlQvsFSmFvcsmJp2cF9G80iyTd80dHj8/c2elKXIPDld155tTEEmklOJfjZytrSser
 PlztpNRcOYJGcx9cRzVS3s6nUFJcOTA0w9gBnpBIxOGNme4Fii8DmqFfS2/sZnTO1yGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GD652Dv0mO/EqFC8MlYZcI3PTfmYv/h39ouJ4ycGzec=; b=mYsGBR2JTctTJsh98aJltdfvcf
 npoEzE/aP/cuSW1lBYQHqFojm5nmK9YG7N0pYyuxsSXkRoUpuKB9XOkPzSYEllHmeRx5lg1SFS9Uf
 qtDpZ1O8APlagWsqTC4x7C7y7I/NoHvOaX9IfNqQvT1sexeCwI9fIGSKvAhurkB5r/AQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3lQE-0004qy-LQ
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626294232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GD652Dv0mO/EqFC8MlYZcI3PTfmYv/h39ouJ4ycGzec=;
 b=HBKU65irmFw4uz0ejz5bdtqNii2a6ViW3KRb8EsWLLnGvmMgyXoRRq9DRdJkxBx/8CuMej
 TJtgeZBkrRoXV65R1GjaiV4VWB2RQJXq/rthS68LeHpwP0f5JAQk7uJlfhFMPoFOKQ8Cgx
 iM3so507nHPX7ImZQGrkx9J7EFTxVRg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-A9qbPfj_NXuVRandrNoQcw-1; Wed, 14 Jul 2021 16:23:48 -0400
X-MC-Unique: A9qbPfj_NXuVRandrNoQcw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AAB8F612D9;
 Wed, 14 Jul 2021 20:23:41 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-201.rdu2.redhat.com [10.10.114.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB83B10074F8;
 Wed, 14 Jul 2021 20:23:40 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 5F978226A1B; Wed, 14 Jul 2021 16:23:40 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Wed, 14 Jul 2021 16:23:19 -0400
Message-Id: <20210714202321.59729-2-vgoyal@redhat.com>
In-Reply-To: <20210714202321.59729-1-vgoyal@redhat.com>
References: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m3lQE-0004qy-LQ
Subject: [V9fs-developer] [PATCH v3 1/3] init: split get_fs_names
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
Cc: miklos@szeredi.hu, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Christoph Hellwig <hch@lst.de>

Split get_fs_names into one function that splits up the command line
argument, and one that gets the list of all registered file systems.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 init/do_mounts.c | 48 ++++++++++++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index 74aede860de7..ec32de3ad52b 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -338,30 +338,31 @@ __setup("rootflags=", root_data_setup);
 __setup("rootfstype=", fs_names_setup);
 __setup("rootdelay=", root_delay_setup);
 
-static void __init get_fs_names(char *page)
+static void __init split_fs_names(char *page, char *names)
 {
-	char *s = page;
-
-	if (root_fs_names) {
-		strcpy(page, root_fs_names);
-		while (*s++) {
-			if (s[-1] == ',')
-				s[-1] = '\0';
-		}
-	} else {
-		int len = get_filesystem_list(page);
-		char *p, *next;
+	strcpy(page, root_fs_names);
+	while (*page++) {
+		if (page[-1] == ',')
+			page[-1] = '\0';
+	}
+	*page = '\0';
+}
 
-		page[len] = '\0';
-		for (p = page-1; p; p = next) {
-			next = strchr(++p, '\n');
-			if (*p++ != '\t')
-				continue;
-			while ((*s++ = *p++) != '\n')
-				;
-			s[-1] = '\0';
-		}
+static void __init get_all_fs_names(char *page)
+{
+	int len = get_filesystem_list(page);
+	char *s = page, *p, *next;
+
+	page[len] = '\0';
+	for (p = page - 1; p; p = next) {
+		next = strchr(++p, '\n');
+		if (*p++ != '\t')
+			continue;
+		while ((*s++ = *p++) != '\n')
+			;
+		s[-1] = '\0';
 	}
+
 	*s = '\0';
 }
 
@@ -411,7 +412,10 @@ void __init mount_block_root(char *name, int flags)
 
 	scnprintf(b, BDEVNAME_SIZE, "unknown-block(%u,%u)",
 		  MAJOR(ROOT_DEV), MINOR(ROOT_DEV));
-	get_fs_names(fs_names);
+	if (root_fs_names)
+		split_fs_names(fs_names, root_fs_names);
+	else
+		get_all_fs_names(fs_names);
 retry:
 	for (p = fs_names; *p; p += strlen(p)+1) {
 		int err = do_mount_root(name, p, flags, root_mount_data);
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

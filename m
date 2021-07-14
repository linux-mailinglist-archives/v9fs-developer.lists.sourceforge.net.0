Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C711E3C920E
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Jul 2021 22:24:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3lQR-0001P1-Uy; Wed, 14 Jul 2021 20:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1m3lQQ-0001Oo-4F
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2fqywrBRfZ6vIlprnLyQxXJUpVoCVyWeCRv1boXOkNA=; b=BYmlOPMZhuWnnWhhbe2K/UuMiF
 O2QD9JaAghNOQwIa7lBYg7Zjw0qf3k8JjF4cy9W41WBOp+cYk6vW0pW8pwWSstPEW52COnT40GKc8
 Z/QtAuudnKdI4w5D0Lq86+SuYCUOXJQPAUfKCIWF9cqDTIDhG3QQ0ewPTZejM5oO4F5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2fqywrBRfZ6vIlprnLyQxXJUpVoCVyWeCRv1boXOkNA=; b=NV/4lkvs5LmNtbqJ+wFvlVCGAc
 45r+6eVjcMfb7FY7cOe4Zh59VMvgCYTsJLrSxATy4fsjCWlci3hdC+VEcZZeYWyROhfaa5q71sUwh
 Ij9khGq0LOUbns1UEpwkpZQSEaekn7N9VWoimricbU1iBPm+RWP+z517E4iEgvEW6lxg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3lQD-0004qv-LO
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626294231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2fqywrBRfZ6vIlprnLyQxXJUpVoCVyWeCRv1boXOkNA=;
 b=ZrcfcrAZ4ssZ4dnCZ744wn7NBAFZ+4xjvtlcTFFwMjEjKHwlCXi1S6ocx4QV+w3EcZE6fn
 PBaUlGRk7saJ7h/4OsVMxNcmc13qz7KAmqcw2NrAy579VSMu+1djss6ixJ7QP3SsrGOLCF
 PgXH2faZ4DMXx7zKvEYb92PzWxCM6ys=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-dddLU69fMQaRfSlmLakEgA-1; Wed, 14 Jul 2021 16:23:49 -0400
X-MC-Unique: dddLU69fMQaRfSlmLakEgA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11F0381C86D;
 Wed, 14 Jul 2021 20:23:42 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-201.rdu2.redhat.com [10.10.114.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C534560871;
 Wed, 14 Jul 2021 20:23:40 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 66E61226DF0; Wed, 14 Jul 2021 16:23:40 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Wed, 14 Jul 2021 16:23:21 -0400
Message-Id: <20210714202321.59729-4-vgoyal@redhat.com>
In-Reply-To: <20210714202321.59729-1-vgoyal@redhat.com>
References: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m3lQD-0004qv-LO
Subject: [V9fs-developer] [PATCH v3 3/3] fs: simplify get_filesystem_list /
 get_all_fs_names
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
 v9fs-developer@lists.sourceforge.net, hch@lst.de,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Christoph Hellwig <hch@lst.de>

Just output the '\0' separate list of supported file systems for block
devices directly rather than going through a pointless round of string
manipulation.

Based on an earlier patch from Al Viro <viro@zeniv.linux.org.uk>.

Vivek:
Modified list_bdev_fs_names() and split_fs_names() to return number of
null terminted strings to caller. Callers now use that information to
loop through all the strings instead of relying on one extra null char
being present at the end.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Vivek Goyal <vgoyal@redhat.com>
---
 fs/filesystems.c   | 27 +++++++++++++++----------
 include/linux/fs.h |  2 +-
 init/do_mounts.c   | 49 ++++++++++++++++++++--------------------------
 3 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/fs/filesystems.c b/fs/filesystems.c
index 90b8d879fbaf..58b9067b2391 100644
--- a/fs/filesystems.c
+++ b/fs/filesystems.c
@@ -209,21 +209,28 @@ SYSCALL_DEFINE3(sysfs, int, option, unsigned long, arg1, unsigned long, arg2)
 }
 #endif
 
-int __init get_filesystem_list(char *buf)
+int __init list_bdev_fs_names(char *buf, size_t size)
 {
-	int len = 0;
-	struct file_system_type * tmp;
+	struct file_system_type *p;
+	size_t len;
+	int count = 0;
 
 	read_lock(&file_systems_lock);
-	tmp = file_systems;
-	while (tmp && len < PAGE_SIZE - 80) {
-		len += sprintf(buf+len, "%s\t%s\n",
-			(tmp->fs_flags & FS_REQUIRES_DEV) ? "" : "nodev",
-			tmp->name);
-		tmp = tmp->next;
+	for (p = file_systems; p; p = p->next) {
+		if (!(p->fs_flags & FS_REQUIRES_DEV))
+			continue;
+		len = strlen(p->name) + 1;
+		if (len > size) {
+			pr_warn("%s: truncating file system list\n", __func__);
+			break;
+		}
+		memcpy(buf, p->name, len);
+		buf += len;
+		size -= len;
+		count++;
 	}
 	read_unlock(&file_systems_lock);
-	return len;
+	return count;
 }
 
 #ifdef CONFIG_PROC_FS
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 640574294216..c76dfc01cf9d 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3622,7 +3622,7 @@ int proc_nr_dentry(struct ctl_table *table, int write,
 		  void *buffer, size_t *lenp, loff_t *ppos);
 int proc_nr_inodes(struct ctl_table *table, int write,
 		   void *buffer, size_t *lenp, loff_t *ppos);
-int __init get_filesystem_list(char *buf);
+int __init list_bdev_fs_names(char *buf, size_t size);
 
 #define __FMODE_EXEC		((__force int) FMODE_EXEC)
 #define __FMODE_NONOTIFY	((__force int) FMODE_NONOTIFY)
diff --git a/init/do_mounts.c b/init/do_mounts.c
index bdeb90b8d669..9b4a1f877e47 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -338,32 +338,22 @@ __setup("rootflags=", root_data_setup);
 __setup("rootfstype=", fs_names_setup);
 __setup("rootdelay=", root_delay_setup);
 
-static void __init split_fs_names(char *page, char *names)
+static int __init split_fs_names(char *page, char *names)
 {
-	strcpy(page, root_fs_names);
-	while (*page++) {
-		if (page[-1] == ',')
-			page[-1] = '\0';
-	}
-	*page = '\0';
-}
-
-static void __init get_all_fs_names(char *page)
-{
-	int len = get_filesystem_list(page);
-	char *s = page, *p, *next;
+	int count = 0;
+	char *p = page;
 
-	page[len] = '\0';
-	for (p = page - 1; p; p = next) {
-		next = strchr(++p, '\n');
-		if (*p++ != '\t')
-			continue;
-		while ((*s++ = *p++) != '\n')
-			;
-		s[-1] = '\0';
+	strcpy(p, root_fs_names);
+	while (*p++) {
+		if (p[-1] == ',')
+			p[-1] = '\0';
 	}
+	*p = '\0';
+
+	for (p = page; *p; p += strlen(p)+1)
+		count++;
 
-	*s = '\0';
+	return count;
 }
 
 static int __init do_mount_root(const char *name, const char *fs,
@@ -409,15 +399,16 @@ void __init mount_block_root(char *name, int flags)
 	char *fs_names = page_address(page);
 	char *p;
 	char b[BDEVNAME_SIZE];
+	int num_fs, i;
 
 	scnprintf(b, BDEVNAME_SIZE, "unknown-block(%u,%u)",
 		  MAJOR(ROOT_DEV), MINOR(ROOT_DEV));
 	if (root_fs_names)
-		split_fs_names(fs_names, root_fs_names);
+		num_fs = split_fs_names(fs_names, root_fs_names);
 	else
-		get_all_fs_names(fs_names);
+		num_fs = list_bdev_fs_names(fs_names, PAGE_SIZE);
 retry:
-	for (p = fs_names; *p; p += strlen(p)+1) {
+	for (i = 0, p = fs_names; i < num_fs; i++, p += strlen(p)+1) {
 		int err = do_mount_root(name, p, flags, root_mount_data);
 		switch (err) {
 			case 0:
@@ -450,7 +441,7 @@ void __init mount_block_root(char *name, int flags)
 	printk("List of all partitions:\n");
 	printk_all_partitions();
 	printk("No filesystem could mount root, tried: ");
-	for (p = fs_names; *p; p += strlen(p)+1)
+	for (i = 0, p = fs_names; i < num_fs; i++, p += strlen(p)+1)
 		printk(" %s", p);
 	printk("\n");
 	panic("VFS: Unable to mount root fs on %s", b);
@@ -551,13 +542,15 @@ static int __init mount_nodev_root(void)
 {
 	char *fs_names, *fstype;
 	int err = -EINVAL;
+	int num_fs, i;
 
 	fs_names = (void *)__get_free_page(GFP_KERNEL);
 	if (!fs_names)
 		return -EINVAL;
-	split_fs_names(fs_names, root_fs_names);
+	num_fs = split_fs_names(fs_names, root_fs_names);
 
-	for (fstype = fs_names; *fstype; fstype += strlen(fstype) + 1) {
+	for (i = 0, fstype = fs_names; i < num_fs;
+	     i++, fstype += strlen(fstype) + 1) {
 		if (!fs_is_nodev(fstype))
 			continue;
 		err = do_mount_root(root_device_name, fstype, root_mountflags,
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

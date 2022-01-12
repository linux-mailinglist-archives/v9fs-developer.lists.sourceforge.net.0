Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7624448BEF3
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 Jan 2022 08:21:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n7XwU-000452-Bb; Wed, 12 Jan 2022 07:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n7XwS-00044w-HS
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Jan 2022 07:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FtIbmDuJfaFcyPVq4lejO1YQT8JqBoet7CpPdE4P+Vs=; b=MUC9YGTshzyfpbXee2McpHnMr8
 AqiQMEmnFV0Oqyo+mRJfsum6E/EOal9zR3NV5v5E/T2GdnT47FCGsNztg621KRoZPmEogEzS5l5jB
 pHRHIWHTUV96mi+Zag6zr27T8yggZYj9NKYa1+xWROtGif6jVLo9aKz2Qeb19U0CjYl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FtIbmDuJfaFcyPVq4lejO1YQT8JqBoet7CpPdE4P+Vs=; b=DODZ6DNHN2EMhx32Mx99WaPrEo
 UAOmBIJ3+JjKF8NTmXaV2/9eLnCizRiA90+5RGEFfqs5u580HU2ZALwFhfVZWYWA8WZPgspZBl9+G
 gw1Ux373O3z/t/OpdqE5t+plxM4a5/xqQtSnbh2wkp++fkFSpFa8IXU2dtoNh4dzGN1E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7XwJ-00CaUZ-TX
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Jan 2022 07:21:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641972053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FtIbmDuJfaFcyPVq4lejO1YQT8JqBoet7CpPdE4P+Vs=;
 b=MOI+9DAG5J3JCTcOAqBQmZ93F+A7iqx/bXmPQgngs2jsUjQamyFs2eqvFMFGojcgkOX57c
 MyUxV8PolV1nnr1m6ilSniCBItH3n2CACp4aTAr7FFM6/DVGpbftllBSCwkLbjZ71R1Qfa
 QdJ0nQepZdjohSZGeCPzccR0Xb/CDeo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-iG6Fe2TPNT6yCUhnGs8TxA-1; Wed, 12 Jan 2022 02:20:50 -0500
X-MC-Unique: iG6Fe2TPNT6yCUhnGs8TxA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 158141023F50;
 Wed, 12 Jan 2022 07:20:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 914407B9D2;
 Wed, 12 Jan 2022 07:20:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <3462849.1641593783@warthog.procyon.org.uk>
References: <3462849.1641593783@warthog.procyon.org.uk>
 <164021579335.640689.2681324337038770579.stgit@warthog.procyon.org.uk>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <534839.1641972040.1@warthog.procyon.org.uk>
Date: Wed, 12 Jan 2022 07:20:40 +0000
Message-ID: <534840.1641972040@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Steve, I think this needs the further changes below, which
 I will fold in. The issues are: (1) One of the error paths in
 cifs_atomic_open()
 uses the cookie when it should jump around that. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
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
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7XwJ-00CaUZ-TX
Subject: Re: [V9fs-developer] [PATCH v5 63/68] cifs: Support fscache
 indexing rewrite
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Steve,

I think this needs the further changes below, which I will fold in.  The
issues are:

 (1) One of the error paths in cifs_atomic_open() uses the cookie when it
     should jump around that.

 (2) There's an additional successful return from the middle of cifs_open()
     that I mistook for an error path, but does need to use the cookie on
     the way out.

David
---
diff --git a/fs/cifs/dir.c b/fs/cifs/dir.c
index 6186824b366e..bf3b4c9901b9 100644
--- a/fs/cifs/dir.c
+++ b/fs/cifs/dir.c
@@ -508,6 +508,7 @@ cifs_atomic_open(struct inode *inode, struct dentry *direntry,
 			server->ops->close(xid, tcon, &fid);
 		cifs_del_pending_open(&open);
 		rc = -ENOMEM;
+		goto out;
 	}
 
 	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
diff --git a/fs/cifs/file.c b/fs/cifs/file.c
index 44da7646f789..47333730c963 100644
--- a/fs/cifs/file.c
+++ b/fs/cifs/file.c
@@ -568,7 +568,7 @@ int cifs_open(struct inode *inode, struct file *file)
 			spin_lock(&CIFS_I(inode)->deferred_lock);
 			cifs_del_deferred_close(cfile);
 			spin_unlock(&CIFS_I(inode)->deferred_lock);
-			goto out;
+			goto use_cache;
 		} else {
 			_cifsFileInfo_put(cfile, true, false);
 		}
@@ -630,19 +630,6 @@ int cifs_open(struct inode *inode, struct file *file)
 		goto out;
 	}
 
-
-	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
-			   file->f_mode & FMODE_WRITE);
-	if (file->f_flags & O_DIRECT &&
-	    (!((file->f_flags & O_ACCMODE) != O_RDONLY) ||
-	     file->f_flags & O_APPEND)) {
-		struct cifs_fscache_inode_coherency_data cd;
-		cifs_fscache_fill_coherency(file_inode(file), &cd);
-		fscache_invalidate(cifs_inode_cookie(file_inode(file)),
-				   &cd, i_size_read(file_inode(file)),
-				   FSCACHE_INVAL_DIO_WRITE);
-	}
-
 	if ((oplock & CIFS_CREATE_ACTION) && !posix_open_ok && tcon->unix_ext) {
 		/*
 		 * Time to set mode which we can not set earlier due to
@@ -661,6 +648,19 @@ int cifs_open(struct inode *inode, struct file *file)
 				       cfile->pid);
 	}
 
+use_cache:
+	fscache_use_cookie(cifs_inode_cookie(file_inode(file)),
+			   file->f_mode & FMODE_WRITE);
+	if (file->f_flags & O_DIRECT &&
+	    (!((file->f_flags & O_ACCMODE) != O_RDONLY) ||
+	     file->f_flags & O_APPEND)) {
+		struct cifs_fscache_inode_coherency_data cd;
+		cifs_fscache_fill_coherency(file_inode(file), &cd);
+		fscache_invalidate(cifs_inode_cookie(file_inode(file)),
+				   &cd, i_size_read(file_inode(file)),
+				   FSCACHE_INVAL_DIO_WRITE);
+	}
+
 out:
 	free_dentry_path(page);
 	free_xid(xid);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9FF48DB9B
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 Jan 2022 17:20:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n82qE-0003ZB-7x; Thu, 13 Jan 2022 16:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n82qC-0003Z4-KO
 for v9fs-developer@lists.sourceforge.net; Thu, 13 Jan 2022 16:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HS16jLN7unkxFPQM4nOJZ2m0CdE5wbqWBb1jBUddR4w=; b=IKXBfVBkr8757gv7YaomdLlzV/
 PzP4FH+IiLHeWFD0is80RfkUFa1AybJg3a0xvyFDbp4mwgZyPZPzE97yMsLnChgSANKZU07pp069Q
 eMKZPwK+d+wzOsPIEWe5plPIZFuOORZ7L0EIe5YAWDrYNDYtZNGcP9kBXOXhm1Mj5KT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HS16jLN7unkxFPQM4nOJZ2m0CdE5wbqWBb1jBUddR4w=; b=aa0MX43JcTCM2+5+StWaIBT6ji
 hkX0jUWnOpiWkbXmQ9n5qGcQiRqF7W3+4xpFsGUE0h7gH0MPIRnSOohcTgwF9CcGt76OjKlVJuhYJ
 4iRt62xhxhTJRor4qJfcP+fPAL9fahun+W7JccoCXa50YzCCSWUWrQ9MwWVH2NcAFwDE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n82qC-00032v-G4
 for v9fs-developer@lists.sourceforge.net; Thu, 13 Jan 2022 16:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642090838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HS16jLN7unkxFPQM4nOJZ2m0CdE5wbqWBb1jBUddR4w=;
 b=ZORGs6/j62WbnIVoaWZ3/3PNUgZdvhVbCVMoV04WQ/ZSLVITX1aGaUTnXSjrE5GBjuK0u/
 FYtCLW3uevhdnmM61nmKBqIscB5JRmJl+BhZ1djjoBbHks46AEjJ3FaQDHLy7m26VUoeWo
 XltSuI+tQyXt2rolJlq2TsQXcw0u4FE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-8x3gcAjBM2aWgWXKN56oZg-1; Thu, 13 Jan 2022 11:20:34 -0500
X-MC-Unique: 8x3gcAjBM2aWgWXKN56oZg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B791E10CDB66;
 Thu, 13 Jan 2022 16:20:32 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0FC447D3D2;
 Thu, 13 Jan 2022 16:20:29 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1318953.1642024578@warthog.procyon.org.uk>
References: <1318953.1642024578@warthog.procyon.org.uk>
 <164021579335.640689.2681324337038770579.stgit@warthog.procyon.org.uk>
 <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <1886509.1642090829.1@warthog.procyon.org.uk>
Date: Thu, 13 Jan 2022 16:20:29 +0000
Message-ID: <1886510.1642090829@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: David Howells <dhowells@redhat.com> wrote: > - /* > - * The
 cookie is initialized from volume info returned above. > - * Inside
 cifs_fscache_get_super_cookie
 it checks > - * that we do not get super cookie twice. > - */ > -
 cifs_fscache_get_su [...] 
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
X-Headers-End: 1n82qC-00032v-G4
Subject: Re: [V9fs-developer] [PATCH v6] cifs: Support fscache indexing
 rewrite
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
 linux-nfs@vger.kernel.org, Murphy Zhou <jencce.kernel@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> -	/*
> -	 * The cookie is initialized from volume info returned above.
> -	 * Inside cifs_fscache_get_super_cookie it checks
> -	 * that we do not get super cookie twice.
> -	 */
> -	cifs_fscache_get_super_cookie(tcon);
> +	if (!rc &&
> +	    (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE)) {
> +		/*
> +		 * The cookie is initialized from volume info returned above.
> +		 * Inside cifs_fscache_get_super_cookie it checks
> +		 * that we do not get super cookie twice.
> +		 */
> +		rc = cifs_fscache_get_super_cookie(tcon);
> +		if (rc < 0) {
> +			iget_failed(inode);
> +			inode = ERR_PTR(rc);
> +		}
> +	}

This bit should've been removed - and the bit it is modifying was removed by
commit b774302e885697dde027825f8de9beb985d037bd which is now upstream.

The invocation of cifs_fscache_get_super_cookie() added by that commit should
be altered to make it conditional.

To this end, I've rebased the patch on linus/master and something
approximating the attached change needs to be made.

David
---
diff --git a/fs/cifs/connect.c b/fs/cifs/connect.c
index f977e02bd21e..598be9890f2a 100644
--- a/fs/cifs/connect.c
+++ b/fs/cifs/connect.c
@@ -3057,7 +3057,8 @@ static int mount_get_conns(struct mount_ctx *mnt_ctx)
 	 * Inside cifs_fscache_get_super_cookie it checks
 	 * that we do not get super cookie twice.
 	 */
-	cifs_fscache_get_super_cookie(tcon);
+	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE)
+		cifs_fscache_get_super_cookie(tcon);
 
 out:
 	mnt_ctx->server = server;
diff --git a/fs/cifs/inode.c b/fs/cifs/inode.c
index 3c3bc28090d8..9b93e7d3e0e1 100644
--- a/fs/cifs/inode.c
+++ b/fs/cifs/inode.c
@@ -1368,20 +1368,6 @@ struct inode *cifs_root_iget(struct super_block *sb)
 		inode = ERR_PTR(rc);
 	}
 
-	if (!rc &&
-	    (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_FSCACHE)) {
-		/*
-		 * The cookie is initialized from volume info returned above.
-		 * Inside cifs_fscache_get_super_cookie it checks
-		 * that we do not get super cookie twice.
-		 */
-		rc = cifs_fscache_get_super_cookie(tcon);
-		if (rc < 0) {
-			iget_failed(inode);
-			inode = ERR_PTR(rc);
-		}
-	}
-
 out:
 	kfree(path);
 	free_xid(xid);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

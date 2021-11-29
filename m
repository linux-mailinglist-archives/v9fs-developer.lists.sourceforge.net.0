Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F95462891
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 00:49:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrqOI-0005JK-0Y; Mon, 29 Nov 2021 23:48:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrqO8-0005Iu-AU
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 23:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QCFD7Ah5IiTcd1a6Gpk3m6ibgmYONE5XP5yWvVfmZ5A=; b=Leo9LHwXcfhxTgpX455zQ/V+v2
 WBtKq7S5F3mSgiu16Ja/L4IfYa4Eg3LmotHhvS/8xqY2SNVk6jNUPT4Vam7sZgXAPhgn/gtHvT7zq
 h6s/rNP59+dJAmuvfYnWyDP7lcapbyI22i3M+HawaCygCwOmLXxpCKdT+q6X9qSqjiFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QCFD7Ah5IiTcd1a6Gpk3m6ibgmYONE5XP5yWvVfmZ5A=; b=fMsqCG6NpmlL7IK6k8OccpcRLF
 OYc/l6saOGQU4V4++4DzRpVClwSzN/33lSMeEenwzH0WBjDCZMkr0guE7hSpy4dtxNt0p1S4PZLml
 1hzbH6ejyjZg6ajaC/vnXCSKx9wEj6bogLlLE63eob4/7JIc/R43UwjK7j9/hqm27maM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrqNZ-00Evb9-7L
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 23:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638229686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QCFD7Ah5IiTcd1a6Gpk3m6ibgmYONE5XP5yWvVfmZ5A=;
 b=Bc6Ij0TKTpeppipHRzxZSOWZO6okbRKKNc4nL1wP5RCsDaYrsL0JXeBboMWS+qdQC6uZJf
 NxlEVFuiWvrjxrDO7CPw8Rxdzqdx2eJKDBANqB4KX0hDh2EbopQZMj9tif/6mMqI9f4sWh
 0CiolhDrIHnw6AzZXAJ47aakvg4ve30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-115-5Dz_xYvhN12pm6HYXYz0Bg-1; Mon, 29 Nov 2021 16:41:02 -0500
X-MC-Unique: 5Dz_xYvhN12pm6HYXYz0Bg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83E5C1927807;
 Mon, 29 Nov 2021 21:40:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 21F1160BF4;
 Mon, 29 Nov 2021 21:40:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <163819627469.215744.3603633690679962985.stgit@warthog.procyon.org.uk>
References: <163819627469.215744.3603633690679962985.stgit@warthog.procyon.org.uk>
 <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
To: linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <302430.1638222055.1@warthog.procyon.org.uk>
Date: Mon, 29 Nov 2021 21:40:55 +0000
Message-ID: <302431.1638222055@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Headers-End: 1mrqNZ-00Evb9-7L
Subject: Re: [V9fs-developer] [PATCH 35/64] cachefiles: Add security
 derivation
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I missed out the patch description:

    cachefiles: Add security derivation
    
    Implement code to derive a new set of creds for the cachefiles to use when
    making VFS or I/O calls and to change the auditing info since the
    application interacting with the network filesystem is not accessing the
    cache directly.  Cachefiles uses override_creds() to change the effective
    creds temporarily.
    
    set_security_override_from_ctx() is called to derive the LSM 'label' that
    the cachefiles driver will act with.  set_create_files_as() is called to
    determine the LSM 'label' that will be applied to files and directories
    created in the cache.  These functions alter the new creds.
    
    Also implement a couple of functions to wrap the calls to begin/end cred
    overriding.
    
    Signed-off-by: David Howells <dhowells@redhat.com>
    cc: linux-cachefs@redhat.com

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

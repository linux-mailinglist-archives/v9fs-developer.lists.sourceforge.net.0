Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51A463FA7
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 22:06:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1msAKR-0000QZ-J6; Tue, 30 Nov 2021 21:06:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1msAKQ-0000QT-CI
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 21:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ovfGlfFYOBiNEdFFUCvznobAjXbygpnoFNwMXB/Sg+Q=; b=m70W/OVNR6PBMegPXqI/Cr1aQy
 cxrIuNdIX4F6RasOaJl7HoNeVArewxzDmdnpC+BS8ONc6ldjxQdeOUzMl8nNJUrCQQh2c2wn/HM4P
 urd1Zwpck0+oD3TwdVQHeFj2cCqMKUkSFGQVadt68LWY+yB7BbNcvmQDykScoKGRveDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ovfGlfFYOBiNEdFFUCvznobAjXbygpnoFNwMXB/Sg+Q=; b=jl0LgWERM6yVFg4ft70bVYf9NM
 qUdaFBMwcT7AJcLx4vkXSC/cwfBYpej95BG3jn95H0cabwQFGY1Ev0PcVzEfxOZcrMgB3iLFdhAzc
 sZnihCftrkFlY+Dsbs8DwuD2Ay2GsPN9tnD4I+vv4z+wUu/DE27oVM4niXkOJ5c8hXBw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msAKQ-00GpFe-IV
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 21:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638306372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ovfGlfFYOBiNEdFFUCvznobAjXbygpnoFNwMXB/Sg+Q=;
 b=Mojq/3f57P3vL35aj0nv84JsD8o1gdi/mvMS4s3oIAKQNqVI1DKWLUjsPCF4fEvU4+q9B0
 p59jxUNYO/y5c78ctC9Gp5RIB8W0pOINOvXsCan3498p6r8ady8nmZMKsE7RDeswDeuwRT
 AfcN6HALZ+h75ElLBwp2+1xzPZqx3/Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-ojpTxzvvOhGXgffSsKK03g-1; Tue, 30 Nov 2021 16:06:08 -0500
X-MC-Unique: ojpTxzvvOhGXgffSsKK03g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 712C91853026;
 Tue, 30 Nov 2021 21:06:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BABF910013D7;
 Tue, 30 Nov 2021 21:05:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YaZOCk9zxApPattb@archlinux-ax161>
References: <YaZOCk9zxApPattb@archlinux-ax161>
 <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
 <163819647945.215744.17827962047487125939.stgit@warthog.procyon.org.uk>
To: Nathan Chancellor <nathan@kernel.org>
MIME-Version: 1.0
Content-ID: <503521.1638306348.1@warthog.procyon.org.uk>
Date: Tue, 30 Nov 2021 21:05:48 +0000
Message-ID: <503522.1638306348@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Nathan Chancellor <nathan@kernel.org> wrote: > This patch
 as commit 0443b01eccbb ("cachefiles: Implement the I/O > routines") in -next
 causes the following clang warning/error: > > fs/cachefiles/io.c:489:6: error:
 variable 'ret' is used uninitia [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1msAKQ-00GpFe-IV
Subject: Re: [V9fs-developer] [PATCH 51/64] cachefiles: Implement the I/O
 routines
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
 linux-cifs@vger.kernel.org, llvm@lists.linux.dev,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Nathan Chancellor <nathan@kernel.org> wrote:

> This patch as commit 0443b01eccbb ("cachefiles: Implement the I/O
> routines") in -next causes the following clang warning/error:
> 
> fs/cachefiles/io.c:489:6: error: variable 'ret' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (pos == 0)
>             ^~~~~~~~
> fs/cachefiles/io.c:492:6: note: uninitialized use occurs here
>         if (ret < 0) {
>             ^~~
> fs/cachefiles/io.c:489:2: note: remove the 'if' if its condition is always true
>         if (pos == 0)
>         ^~~~~~~~~~~~~
> fs/cachefiles/io.c:440:9: note: initialize the variable 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> 1 error generated.

	pos = cachefiles_inject_remove_error();
	if (pos == 0)
		ret = vfs_fallocate(file, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,

That should be:

	ret = cachefiles_inject_remove_error();
	if (ret == 0)
		ret = vfs_fallocate(file, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

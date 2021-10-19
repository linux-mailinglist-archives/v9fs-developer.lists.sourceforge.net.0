Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F5B433EF1
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 21:03:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcuOl-0002oI-2R; Tue, 19 Oct 2021 19:03:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcuOk-0002oA-54
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 19:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tRaOIrF08dbh2ftF+sxbGCRY/m5+9tQxqmnUi1VRrmU=; b=YlEbmBAyn8ESr5/pX8glSeZLZl
 RdxX1lDyTEIkI432dtTDL8bLTUFkITYl3ULTDqWpr9qozPtS97ecoxeRK1M9Qzucvpf86DC2oJuxy
 8CqdV28uKj0HifAoKyQ8Bd2hrVCmgpRigv0ok4THbbEvZfujN6MeXdEW1gVYpr1LD+bA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tRaOIrF08dbh2ftF+sxbGCRY/m5+9tQxqmnUi1VRrmU=; b=YkR8IgZ1MybkT6Y/3fl4u70BhM
 u1CmbQ7T95FUxyrsAy5lyd7ZqCoOVxFwioOsMLJwoSkBvnXPIzHVvTLRPocPiPCmR3MicU1n74ZGC
 JU8wbvxQrGdwMzXCpGmKzhZ31AfIoRNKkcpasYDYjR5eKkglVLHSlznH+hD33eLWeYRA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcuOj-0007MB-I8
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 19:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634670215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tRaOIrF08dbh2ftF+sxbGCRY/m5+9tQxqmnUi1VRrmU=;
 b=cxYWsbVGDxtdX6PUrQGxEWJrCezBqBm7rIbFOA9CvECn2eDHz9PIRlU+/P/fejho7QVXIo
 Hum994lqFoKHrTPnDyUtIB3DJdrlSOyNqQLnBNAQUqo0NE0SXjNFYv7+0CBehknBBOf2Yp
 fX6e1NMUHicoaqH06u15UYiCLlOLAkA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-Tw0CSNocOwyVLRRe_70G4A-1; Tue, 19 Oct 2021 15:03:30 -0400
X-MC-Unique: Tw0CSNocOwyVLRRe_70G4A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7B6F8143FD;
 Tue, 19 Oct 2021 19:03:27 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 01C8D103BAAF;
 Tue, 19 Oct 2021 19:02:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <39bc040e9bb88b47f386baa09ed4a508281ce7d6.camel@redhat.com>
References: <39bc040e9bb88b47f386baa09ed4a508281ce7d6.camel@redhat.com>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456865277.2614702.2064731306330022896.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <2972194.1634670175.1@warthog.procyon.org.uk>
Date: Tue, 19 Oct 2021 20:02:55 +0100
Message-ID: <2972195.1634670175@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@redhat.com> wrote: > It'd be better to
 fold this in with the patch where the first user is > added. That would make
 it easier to see how you intend to use it. Yeah - I didn't put it in there
 because as I zip backwards and forwards through the patch stack,
 applying/deapplying this change triggers a complete rebuild. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcuOj-0007MB-I8
Subject: Re: [V9fs-developer] [PATCH 02/67] vfs: Provide S_KERNEL_FILE inode
 flag
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> It'd be better to fold this in with the patch where the first user is
> added. That would make it easier to see how you intend to use it.

Yeah - I didn't put it in there because as I zip backwards and forwards
through the patch stack, applying/deapplying this change triggers a complete
rebuild.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

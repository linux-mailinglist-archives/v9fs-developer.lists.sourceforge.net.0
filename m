Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78D536E733
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Apr 2021 10:42:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lc2FN-0004Mw-Oe; Thu, 29 Apr 2021 08:42:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lc2FM-0004Mp-Lx
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nhLq7LUYLoOj4b9P22BfA2y71v1kgsQwevldanfEtCY=; b=Nv8QkHmGJ5iJpxGeBQrv40cJoE
 hqq24oHtxEGAOxIW/IvUp3jNsZWXZC1znZIY3Fey0GfqxlmVTgPWspyjbcIHNPo7Wgr8VIx3kv2QY
 lM54JF52X/wSaxL1z/vbjL7khAVlyoS39jvqA4mbceZxlTRfr1BdEJis/YyYYOwb1lhk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nhLq7LUYLoOj4b9P22BfA2y71v1kgsQwevldanfEtCY=; b=QSPBhOVW4t2rPkl6F0r9yU6Ndn
 B1GEEuFdMoAPbT4sZf7697BpLf3FfGMgKwfWhB7yLZAYjdJF+2YcUZOX8h6em11st3V1s7jcvz3Th
 tyMNAgjozQLbxI9IMb5m8BQ7+f8wtNBDImFs0DSDFfEwQjPteISOa8mxkFiGLsANv2Zo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lc2FC-0007FE-4k
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619685709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nhLq7LUYLoOj4b9P22BfA2y71v1kgsQwevldanfEtCY=;
 b=jTcgpuDnMaor46sSjvHYYNJDkotn5CANnA3B7HOJsOmkKq1KwWuxE8MshpgjQayg07Iy+b
 oB3PgHRBqZ67mLdaBWEAioR4VwXg3FxGpGZtzbWKBkANn/ohqxE+Npl01Ag0ko0A0hsVBr
 NMe6UIb5HRS+KxarcOFsu0w7WWF4Yfc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-pgMPVsLoOwWuQOuEz2kDFQ-1; Thu, 29 Apr 2021 04:41:47 -0400
X-MC-Unique: pgMPVsLoOwWuQOuEz2kDFQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B34C9F933;
 Thu, 29 Apr 2021 08:41:45 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-20.rdu2.redhat.com
 [10.10.112.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 928387012B;
 Thu, 29 Apr 2021 08:41:38 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com>
References: <CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918455721.3145707.4063925145568978308.stgit@warthog.procyon.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
MIME-Version: 1.0
Content-ID: <442392.1619685697.1@warthog.procyon.org.uk>
Date: Thu, 29 Apr 2021 09:41:37 +0100
Message-ID: <442393.1619685697@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-m68k.org]
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lc2FC-0007FE-4k
Subject: Re: [V9fs-developer] [PATCH v7 07/31] netfs: Make a netfs helper
 module
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 "open list:NFS, 
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Linux MM <linux-mm@kvack.org>, Steve French <sfrench@samba.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> I see later patches make AFS and FSCACHE select NETFS_SUPPORT.  If this
> is just a library of functions, to be selected by its users, then please
> make the symbol invisible.

Ideally, yes, it would be an invisible symbol enabled by select from the
network filesystems that use it - but doing that means that you can't choose
whether to build it in or build it as a module.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

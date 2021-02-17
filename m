Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D6C31E264
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 23:35:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCVPk-0002vp-7a; Wed, 17 Feb 2021 22:35:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lCVPi-0002vi-IQ
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zG7FxA5GztnCQS45ZSuVJT+MqV0RLaZ+4XZ4Hnsp3v0=; b=c+v4xXs+6RBUuOLYUQh7etfQ6X
 8qR/0qcCa73s6pmLuNhmMo6FSNK7kQEFKD0hAGl/KPdnZK4ZayGx3mwXfizwoPZjVzEdptHsmSrL/
 LFH204E0Deh+t4IvRWVpJXqlVztg5OYgyMRi8IOC0thpJxYtSwABfs2i55ZX0ybYwezw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zG7FxA5GztnCQS45ZSuVJT+MqV0RLaZ+4XZ4Hnsp3v0=; b=dQ8FC8QXlWA7VcNevXUh/DQuKl
 QdgzjO0fOP9lD9kbmQTfBwiWzkzl6lJYeLjTjz+y/TjZQAKK5MgblT1EinhdIRohJpoCQUSAa2SFq
 mz4T5kd9mJfSnEF1KfkYYD6O5446n2/DrPTdNluVLmDKq02rTDkCL6+c1okOQpRfsHDI=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lCVPX-0004dd-Nx
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613601301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zG7FxA5GztnCQS45ZSuVJT+MqV0RLaZ+4XZ4Hnsp3v0=;
 b=CpM4WhmBRay0voC79V0t7fgc+U+Foegh/AQ4GYaammhRlqMA78vr1JafD30KzBr/6Ibzi9
 b7jphbSUyo+v5sTLUc2rVgGOeRgGaKqLuNGN+oU+5BmPOeTPezWslLC0toVPYArRw00icx
 /NZjRES/oAkCFXaNBuvXZu6SPCYuoAE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-q2CSv0q5Mky64VzDZGuXqA-1; Wed, 17 Feb 2021 17:34:57 -0500
X-MC-Unique: q2CSv0q5Mky64VzDZGuXqA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BEC63189CD2E;
 Wed, 17 Feb 2021 22:34:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D0F6E60C61;
 Wed, 17 Feb 2021 22:34:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210217161358.GM2858050@casper.infradead.org>
References: <20210217161358.GM2858050@casper.infradead.org>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1901186.1613601279.1@warthog.procyon.org.uk>
Date: Wed, 17 Feb 2021 22:34:39 +0000
Message-ID: <1901187.1613601279@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lCVPX-0004dd-Nx
Subject: Re: [V9fs-developer] [PATCH 03/33] mm: Implement readahead_control
 pageset expansion
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> We're defeating the ondemand_readahead() algorithm here.  Let's suppose
> userspace is doing 64kB reads, the filesystem is OrangeFS which only
> wants to do 4MB reads, the page cache is initially empty and there's
> only one thread doing a sequential read.  ondemand_readahead() calls
> get_init_ra_size() which tells it to allocate 128kB and set the async
> marker at 64kB.  Then orangefs calls readahead_expand() to allocate the
> remainder of the 4MB.  After the app has read the first 64kB, it comes
> back to read the next 64kB, sees the readahead marker and tries to trigger
> the next batch of readahead, but it's already present, so it does nothing
> (see page_cache_ra_unbounded() for what happens with pages present).

It sounds like Christoph is right on the right track and the vm needs to ask
the filesystem (and by extension, the cache) before doing the allocation and
before setting the trigger flag.  Then we don't need to call back into the vm
to expand the readahead.

Also, there's Steve's request to try and keep at least two requests in flight
for CIFS/SMB at the same time to consider.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3954049058A
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Jan 2022 10:57:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9Olw-0000yW-CZ; Mon, 17 Jan 2022 09:57:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n9Olu-0000yQ-Hi
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 09:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ko6OUF03NtREbd4Ba6uZksPkCXStJRahIx6FjvF3q4=; b=YeozBa7utw4srrFMv1ugsQ77rP
 CHzGErB/z9JfX46QsyPOoMdrOHgVBwkKjkGqm8S4iDSyaHxp5coUVWm5rKKkwHhf0ETOuUrIwtwpg
 uapIyLyF16aN3/Y5CGnE14nZfOFxsrP4QguM5wabLjHWXyWyOsTGJjW5zgjsPgd63LqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:
 Sender:Reply-To:Content-Transfer-Encoding:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0ko6OUF03NtREbd4Ba6uZksPkCXStJRahIx6FjvF3q4=; b=W
 lmtrJcqhjLhyM8HjXirbY8uPqgNsDOY1JqR8NnRwY1/t1QfIej1f44PdmEMllPYDPiUBy9qxJwDXi
 o6EiNnRSogKvTRCqRGbeHW4Wh5etNw4gkMnb2gyq9TsWDtigogQado9v/StMq2Aaq3FV7l9AQyyAP
 Fj2qVjr7RYTu7tqQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9Ols-00041d-KE
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 09:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642413466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=0ko6OUF03NtREbd4Ba6uZksPkCXStJRahIx6FjvF3q4=;
 b=TA8V1DPeqGcEES7H3aKLsuK2yYnEyJIoVrIrzZxRkj5oQyu19uKGFQBYWcXRWfTySC77+9
 XjS4Pkc1XbpHZcI7sS0Ha4pHLhvtK72yhWaVL9hrctuEaHOMcv+sWj0KWlEOvUdzHniXOG
 JFgvZ/u1hRPcPUKUdnQZeE0SaLkZWqg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-300-In4HevWtNs-JnAKOIck5mg-1; Mon, 17 Jan 2022 04:57:42 -0500
X-MC-Unique: In4HevWtNs-JnAKOIck5mg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B59F7100C663;
 Mon, 17 Jan 2022 09:57:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1D7227B9E5;
 Mon, 17 Jan 2022 09:57:17 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <2752207.1642413437.1@warthog.procyon.org.uk>
Date: Mon, 17 Jan 2022 09:57:17 +0000
Message-ID: <2752208.1642413437@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Al, Linus,
 Do you have an opinion on whether it's permissible
 for a filesystem to write into the read() buffer beyond the amount it claims
 to return, though still within the specified size of the buffer? 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9Ols-00041d-KE
Subject: [V9fs-developer] Out of order read() completion and buffer filling
 beyond returned amount
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Peter Zijlstra <peterz@infradead.org>,
 dhowells@redhat.com, linux-mm@kvack.org,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Al, Linus,

Do you have an opinion on whether it's permissible for a filesystem to write
into the read() buffer beyond the amount it claims to return, though still
within the specified size of the buffer?

I'm working on common DIO routines for 9p, afs, ceph and cifs in netfs lib,
and I can see that at least three of those four filesystems either can or must
split a read, possibly being required to distribute across multiple servers.

If a filesystem was to emit multiple read RPCs in parallel, there is the
possibility that they would complete out of order - particularly if they go to
multiple servers.

Would it be a violation of the way the read() family of syscalls work to write
the data into the buffers out of order, and then abandon the extra data
written at the end if one of the RPCs returned a short read?  We would have
clobbered some of the buffer that we haven't said we've modified.

For buffered reads, it's not a problem as we can fill the pagecache out of
order with no issue.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

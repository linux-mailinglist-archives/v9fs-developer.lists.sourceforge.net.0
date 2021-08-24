Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 083DE3F609B
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:39:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIXaC-0001BZ-FT; Tue, 24 Aug 2021 14:39:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mIXaA-0001BO-TA
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bIzJFNtN7r1shXWsohSNVJgyFOeYy/KSnJVcAMNs8DQ=; b=apQfrLCPAvsqbEL/XorQt5NZka
 N8zIPt1vd8ll3tDZTOpf8bLV6f543G1SDvW5uuKzj7GHwISOlwOnSkbdJ3sfS/gKIVmZP3nzU6Hf5
 cIgOhQmyWu5gg0ttFhjjmV3i4ZjXibFoF88cguYAB53iYEDfNbe7+ki+Jy3dqFoQEA4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bIzJFNtN7r1shXWsohSNVJgyFOeYy/KSnJVcAMNs8DQ=; b=Cgzwo2detvLVjfwvCyrk5/yoyE
 f/nGSjQIpPaxQaabVfv+5rtiXBT/Ay9QBgPs7FUZ7MTd+h8OBYAxxDSs1DBZQekkcDKP63e6PE/ov
 EidAC6wo1udPtiZjT0Is8WsrTTbDmFHyxzEUVFMVWU/bjhKjy1uujX6oOw6yukhiXQFw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIXa5-0006Ie-DA
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629815947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bIzJFNtN7r1shXWsohSNVJgyFOeYy/KSnJVcAMNs8DQ=;
 b=WZd65Hsyj5t7EiBvIuXsWtTQdSZm4XjyAazo+vt6KXKMeDi2TqPMDr6iMCSZl/7LjRK5Os
 QHiAkP4oYJSlFsOHXPvW/pxUj5N9W6HfuydidWEwB/75c/A4ci61td1LqkRoZQut8HW0fn
 9ydkYcw+9XGI5dw6x/p2KHq3LJUlz+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-ukmS65bfOAWoX3lGu4KGeA-1; Tue, 24 Aug 2021 10:39:03 -0400
X-MC-Unique: ukmS65bfOAWoX3lGu4KGeA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DADBC1082921;
 Tue, 24 Aug 2021 14:39:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 697AD1036D27;
 Tue, 24 Aug 2021 14:38:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YST/0e92OdSH0zjg@casper.infradead.org>
References: <YST/0e92OdSH0zjg@casper.infradead.org>
 <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
 <162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1953536.1629815935.1@warthog.procyon.org.uk>
Date: Tue, 24 Aug 2021 15:38:55 +0100
Message-ID: <1953537.1629815935@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mIXa5-0006Ie-DA
Subject: Re: [V9fs-developer] [PATCH 1/6] afs: Fix afs_launder_page() to set
 correct start file position
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeffrey Altman <jaltman@auristor.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> 
> This could be page_offset(page), which reads better to me:
> 
> 		ret = afs_store_data(vnode, &iter, page_offset(page) + f, true);

True.  It gets converted to folio_pos() in patch #5 - will that do?

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

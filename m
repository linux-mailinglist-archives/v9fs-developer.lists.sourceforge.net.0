Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7997E344CF9
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Mar 2021 18:14:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOO8L-00079V-RV; Mon, 22 Mar 2021 17:14:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lOO81-00076I-6B
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Mar 2021 17:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMbmUNAFvNWl2qhZsFpoWOGxDUGbmddTSEhEjr5Mf7I=; b=NTfmeWvwyhP3eJAt4Lv6MA297X
 PEUUjh6Hwe/f8EtPdI4qXqxVC8kFnKnmHynqe3XD+uPzdqq/MAGe24l2aTVKkDHVzM4Gf50DPb7cO
 Q2FSDn4NXba/C1AkYVqhXj59skRK0Xjnud96eTkPKliYgHUstLb6usa7q/K6gH+IYP5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aMbmUNAFvNWl2qhZsFpoWOGxDUGbmddTSEhEjr5Mf7I=; b=af2pQ0CZm7y8py6Zu1Ulexfx+7
 za42Y59wF0jEAyKptu7RU6PmjPAlfcQYH/PNrSi4ZCie4AmnVVO78bGKngBvJJi2p2jbAr3OzP6pi
 1JH5OLpMjjbFLc+Futgenv22dN/+3R+edqhk6DT0mjOqjvSykRt3H0PCyu0mHc0OYutM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lOO7w-00F2Hi-MS
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Mar 2021 17:14:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616433238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aMbmUNAFvNWl2qhZsFpoWOGxDUGbmddTSEhEjr5Mf7I=;
 b=gAM22rBbJFJ2eXkIzQ3JMSPhPCNkekCpAj2d07RUslS3SgjBobqh4tXx742ng3euvmL5MS
 yQLLv0OvqOaaqtrYxRq6h+Bc8CD4HkvgLkGo0/HAWIK5lWBhjTHCE06q0qLGzN7r8ttCP9
 WHmI4DzXd9hUho8swUNKOjJ8qU2yCiA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-03ysOJ7_MVCEbA-orqBIWQ-1; Mon, 22 Mar 2021 13:13:56 -0400
X-MC-Unique: 03ysOJ7_MVCEbA-orqBIWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 803B0801817;
 Mon, 22 Mar 2021 17:13:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A8BF860C0F;
 Mon, 22 Mar 2021 17:13:48 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210321014202.GF3420@casper.infradead.org>
References: <20210321014202.GF3420@casper.infradead.org>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539537375.286939.16642940088716990995.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <2285031.1616433227.1@warthog.procyon.org.uk>
Date: Mon, 22 Mar 2021 17:13:47 +0000
Message-ID: <2285032.1616433227@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOO7w-00F2Hi-MS
Subject: Re: [V9fs-developer] [PATCH v4 08/28] netfs: Provide readahead and
 readpage netfs helpers
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
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > +	while ((page = readahead_page(ractl)))
> > +		put_page(page);
> 
> You don't need this pair of lines (unless I'm missing something).
> read_pages() in mm/readahead.c puts the reference and unlocks any
> pages which are not read by the readahead op.  Indeed, I think doing
> this is buggy because you don't unlock the page.

Actually, I do need them.  The pages haven't been removed from the ractl at
this point so just returning would cause them all to be unlocked prematurely.

I don't pass the ractl to the filesystem or the cache because I may be calling
them for partial pages, I may be issuing multiple ops sequentially on a page
and the ractl may have ceased to exist by the time I issue an op.

The unlocking is done by netfs_rreq_unlock(), even for pages that didn't get
read.

I've added a comment to this effect.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

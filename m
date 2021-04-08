Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 300E63587A4
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:56:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUW5C-0007h7-UP; Thu, 08 Apr 2021 14:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lUW5B-0007gb-HP
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ngPzXydGHBjskx5cUB/06uGvBv1ng+f09FOLsWljv8=; b=OrgZ9Bhash3tpWE0zPCTC8lOkx
 Nb5rAo1z4STe6MQRyLSwSB73DPrrcGfrGrMKSD9qsuf+sXsPN/tZLDbfP64oEZb8fxfFExNUwf7wU
 F+rGgX74wzEwgiYqIGJ1omEY0cGOX7T0YwSr2eXMnCir8oio2CZxDKLQ2S423m/Mfsxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ngPzXydGHBjskx5cUB/06uGvBv1ng+f09FOLsWljv8=; b=aM4uxuvkwEb8zJY+SvWaFJykm8
 lQ6a0tCJSXIdL4O/MlHknh5DWYvbyJgSN1j4pNpeHPOB/PKXc5tEmD5nNH2bdieAZVzi0mN9LzwFt
 jGSbE9iFXJS2iO/JxWZW0DgjZjb1tldSVyoHfFv3eeBcI6YySoCtmaNWhzBwOqg7ALgU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUW55-0004pm-5w
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9ngPzXydGHBjskx5cUB/06uGvBv1ng+f09FOLsWljv8=; b=JmqiGWaoPyP0M/wyjvEambr2hQ
 Pqfhp0rW3/YWQSEW67k7BqrjIQoQAHIbjqS/Ov+4EVqS9oYAxYFObB143hXed3ldwgU9EPF4Xw5Xs
 mOMGA4NF7eOLQt/RM4MdXGRqBa7Iy7T8wJSU+ghg3wes7SBZ/XEtD8y6cInb1UTB/pwAY0K6mlReR
 N96yrQ0ZtYi4KD9lCpm1g76pst1pbgLT4KckVkbUWxGFC97tUtXN6puarzldUCUYnQRyRVYLYP5yh
 yKV5ashBhese4KOWcF6ZJNu7cCKhHd/6ZbA5ZK/v9CFVDq4ZVFs9SerOLlEUccOAaEejb6sfUGfh2
 9TrgBE/g==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lUW3g-00GNjJ-Br; Thu, 08 Apr 2021 14:55:03 +0000
Date: Thu, 8 Apr 2021 15:55:00 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210408145500.GO2531743@casper.infradead.org>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789069829.6155.4295672417565512161.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161789069829.6155.4295672417565512161.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
X-Headers-End: 1lUW55-0004pm-5w
Subject: Re: [V9fs-developer] [PATCH v6 05/30] mm: Implement
 readahead_control pageset expansion
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
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Apr 08, 2021 at 03:04:58PM +0100, David Howells wrote:
> Suggested-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> Signed-off-by: David Howells <dhowells@redhat.com>

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

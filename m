Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F211835A291
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 18:04:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUtcS-0003D4-EB; Fri, 09 Apr 2021 16:04:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUtcQ-0003Cs-Q0
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:References:In-Reply-To:From:Sender:Reply-To:To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l/YtRHbaNxAvJJBbIoYtFy0sDOmcZWRbIs4MjOEQB/k=; b=WLB9BXowN0ks59i0y10aJDz7fB
 ds4Leu2A+30OVnNHOjoHOXh/qmL6xba8TsUgX4xFxqBioNpbewP8zKPuDsgmLnVlG5suzMqY9c/Yq
 eMknImvuU+LNkuW+QQfVS+Hge4r7egZpvr50tOfQwCJK7Rr9u1OZAVuyVNjxgWkveGIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:
 References:In-Reply-To:From:Sender:Reply-To:To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l/YtRHbaNxAvJJBbIoYtFy0sDOmcZWRbIs4MjOEQB/k=; b=TjUABV3LHAWrjd9S/54Gkxs9x7
 iNr5am42eQ9dq/vRrvg45NJws1WeObxwjv+lQAXTafTEfmGFJ5GIYxcdiWDxnqzcqFVnObsi8t5JY
 +Kbm+xzBHqIzsFCZCtm6bcFF2S4XMZNTI0yRa3OzaliM1pGYDg6RQbfVz9JmEsj/pSFc=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUtc0-0004oc-Tx
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617984234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=l/YtRHbaNxAvJJBbIoYtFy0sDOmcZWRbIs4MjOEQB/k=;
 b=MbrfZzL3UIdk1KlQ+svyyTKMeUegGG/KBL3rYz3j2jDCKEa/nqOQnTHQfWVmflzacwsbJY
 Wbc1fIs9mFrmSUafO5ymi07fjJpkclY0YgF7xPO/TjBiFPhpKXkHtMPsyWHAWbYx3cV/5S
 cvZ5dIlEG4XYKCNxKQLrj9jvJnoObFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-VKd9VOlPMEOH6PW381t7Pg-1; Fri, 09 Apr 2021 12:03:50 -0400
X-MC-Unique: VKd9VOlPMEOH6PW381t7Pg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54C20801814;
 Fri,  9 Apr 2021 16:03:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E36435C1D5;
 Fri,  9 Apr 2021 16:03:38 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <625171.1617971734@warthog.procyon.org.uk>
References: <625171.1617971734@warthog.procyon.org.uk>
 <20210409111636.GR2531743@casper.infradead.org>
 <CAHk-=wi_XrtTanTwoKs0jwnjhSvwpMYVDJ477VtjvvTXRjm5wQ@mail.gmail.com>
 <161796595714.350846.1547688999823745763.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <838189.1617984218.1@warthog.procyon.org.uk>
Date: Fri, 09 Apr 2021 17:03:38 +0100
Message-ID: <838190.1617984218@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUtc0-0004oc-Tx
Subject: Re: [V9fs-developer] [RFC PATCH 2/3] mm: Return bool from pagebit
 test functions
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, jlayton@kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 torvalds@linux-foundation.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> add/remove: 2/2 grow/shrink: 15/16 up/down: 408/-599 (-191)
> Function                                     old     new   delta
> iomap_write_end_inline                         -     128    +128

I can get rid of the iomap_write_end_inline() increase for my config by
marking it __always_inline, thereby getting:

add/remove: 1/2 grow/shrink: 15/15 up/down: 280/-530 (-250)

It seems that the decision whether or not to inline iomap_write_end_inline()
is affected by the switch to bool.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

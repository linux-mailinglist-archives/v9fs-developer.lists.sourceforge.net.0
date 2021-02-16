Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492231C818
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 10:31:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBwhc-0006Kf-JG; Tue, 16 Feb 2021 09:31:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBwhb-0006KO-23
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQwBpcCMDRihoSLkY0nXiJYZq45llCzJSk2sVrYmZu4=; b=JGHCegR8oQqeV3kd2TOU1ZVQ0S
 fQB8vwsT1HdTjs8Rzjm2JsohZLYRPV2PMZcof6DUKRHkGFnRzFctc/zgzcjuOVxvqR61A5AQhMrwa
 Ds/BqlP03WElMGu4EUMPHuIGVm/Xi7OhlNaJly8TB5JRLGzrGZSkUj3q65C9U1BvBoPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WQwBpcCMDRihoSLkY0nXiJYZq45llCzJSk2sVrYmZu4=; b=V679UyRkrt69UooAi8hDzBQgM6
 IdfE4kIne/fhVtST2zUf0FbefBrvZH+dgPR8FjLhbBOmuY/U2sOl6TCMLeoIKYOoEif//0EajY2P3
 Jp8MKsgZ6iw+vnlRlueCvFXmr0/lYtvTDxiXZjFNK5nnVd5H+O+yUuijG79Se80gIvNk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBwhM-00AhTP-Qb
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613467866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WQwBpcCMDRihoSLkY0nXiJYZq45llCzJSk2sVrYmZu4=;
 b=TooI1TevZrAvNtDKmhx7leAB+rZNjQQPO5q+mHS7+E2MyVf5ykZg7iLqbDM5HycAgDzcXI
 cZdFETUEfbVQ76vY62BFGCKY+lgRANxj6y4LCHQSulyP1qYVCeyn2110L6Ed4bEH7z/h46
 86aQ1MUDbQIP+Mp0Yl5A11jyHkTXozE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-Zx6-8XXBP9WnKXi9yDelKg-1; Tue, 16 Feb 2021 04:29:43 -0500
X-MC-Unique: Zx6-8XXBP9WnKXi9yDelKg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BA5A100A8E8;
 Tue, 16 Feb 2021 09:29:40 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 709A110023AB;
 Tue, 16 Feb 2021 09:29:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210216084230.GA23669@lst.de>
References: <20210216084230.GA23669@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-ID: <1419964.1613467771.1@warthog.procyon.org.uk>
Date: Tue, 16 Feb 2021 09:29:31 +0000
Message-ID: <1419965.1613467771@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1lBwhM-00AhTP-Qb
Subject: Re: [V9fs-developer] [PATCH 34/33] netfs: Use in_interrupt() not
 in_softirq()
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@lst.de> wrote:

> On Mon, Feb 15, 2021 at 10:46:23PM +0000, David Howells wrote:
> > The in_softirq() in netfs_rreq_terminated() works fine for the cache being
> > on a normal disk, as the completion handlers may get called in softirq
> > context, but for an NVMe drive, the completion handler may get called in
> > IRQ context.
> > 
> > Fix to use in_interrupt() instead of in_softirq() throughout the read
> > helpers, particularly when deciding whether to punt code that might sleep
> > off to a worker thread.
> 
> We must not use either check, as they all are unreliable especially
> for PREEMPT-RT.

Is there a better way to do it?  The intent is to process the assessment phase
in the calling thread's context if possible rather than bumping over to a
worker thread.  For synchronous I/O, for example, that's done in the caller's
thread.  Maybe that's the answer - if it's known to be asynchronous, I have to
punt, but otherwise don't have to.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

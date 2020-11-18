Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6221C2B801E
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 16:11:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfP7M-00053O-Qp; Wed, 18 Nov 2020 15:11:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kfOzZ-0004c6-Sf
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H8m9xlk+wKmmL3enreHjDmbAIg8ywAmVm1AGESujBoc=; b=h72XfPTXeDB8sknXgnWTUiKdpb
 Ougw0sxQTaFhG/lyfpw7fWH8wmBGclfsEY+psklj4XwYk5WyPSh1U6qzXeVS7ddyGGU/44ZnZsgv8
 e4CkRuYWL77pGo+/eDZIVNXtx6Px/tcp4sxreQxlc0Do4ffmxsGEvZaQuUQrXGKf8hwk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H8m9xlk+wKmmL3enreHjDmbAIg8ywAmVm1AGESujBoc=; b=fmA9crmveYc6IAaRQ9ejSKRttw
 CDzG5KVUNbztpYQBTDabhH3TXPmt3PuP6nn47AfGpErrKa4vaWuo2+RpNKyfKKHz+NkQ/Bn8Lv+LI
 fbF6WCS4LImpTYeYGpAxlpqb0smIdeFND4qo/X0SLdS5khPnlMmeYhZFcEIs2RsKGr1k=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kfOzR-00DqCt-HX
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 15:03:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605711788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H8m9xlk+wKmmL3enreHjDmbAIg8ywAmVm1AGESujBoc=;
 b=MRsQvDhezE9cKvHe9DKFQbclvBtG319sBILlaggCfh2u8MO5VOmBhkZx18eSqG4dz9sSWG
 dTx499X6IEIkGJutehmpHVc2YHg2zQpw4JI5eTZ2RUW0dcSqWTlZLfJh3XhS5KsHmDJTVq
 2oNkvETS7udqyiCG0WZr6rGY8uBVSJw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-ym6SNh0sMo-XNxsTHr83pg-1; Wed, 18 Nov 2020 10:03:04 -0500
X-MC-Unique: ym6SNh0sMo-XNxsTHr83pg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D809100C661;
 Wed, 18 Nov 2020 15:03:03 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1ACB510016DB;
 Wed, 18 Nov 2020 15:02:58 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20201118141649.GA14211@nautica>
References: <20201118141649.GA14211@nautica> <20201118124826.GA17850@nautica>
 <1514086.1605697347@warthog.procyon.org.uk>
 <1561011.1605706707@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1787399.1605711778.1@warthog.procyon.org.uk>
Date: Wed, 18 Nov 2020 15:02:58 +0000
Message-ID: <1787400.1605711778@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kfOzR-00DqCt-HX
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> I take it the read helper would just iterate as long as there's data
> still required to read, writing from THPs wouldn't do that?

Yep.  As long as you read some data, the helper will call you again if you
didn't read everything.  subreq->transferred keeps track of what has been read
so far.  You can also tell the helper just to clear the rest by setting
NETFS_SREQ_CLEAR_TAIL.

The helper tries to hide the pages from you as far as possible.  Using
ITER_XARRAY hides that even more.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

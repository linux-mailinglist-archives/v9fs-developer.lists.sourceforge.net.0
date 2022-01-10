Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B582489730
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 12:19:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6shZ-0006bn-30; Mon, 10 Jan 2022 11:18:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n6shY-0006bh-C7
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:18:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a1mKixw3piLB47kAb+NgNKbQU1uo3Pje5s8quzB5jk0=; b=jvyCD4Eunz+HUVesd1F+t5Crhx
 GCJcNrzpwasTAVqywkXawoFbT85vlPxhSAn5iqvSlgFTxH5TMsMfDWDl3/RS7fYq3bZdFnAx9ENiq
 uL9I7EsJj0n6chCsq5ZOMlu+tUBIFYeIL1sFLuwUjpRTCNZQBMWLju4iEpby0j3kp2Js=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a1mKixw3piLB47kAb+NgNKbQU1uo3Pje5s8quzB5jk0=; b=FaX7GkFp8yf/nmeACCPuXRF203
 HLc0q8Bx66YhvZb1JiYXAy2zAGeHkxuDKc/OsaqAPwso2lfYq7dKK1+I3Ngb0nGb6EhHrEK4+j0nG
 4NLzYvX7QyAhlK8ixxAVeupP8VY0dN9RF03lSvLZzb3MYtMzA77EF+mP0eRkHWp/KL10=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6shV-0002sf-8P
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 11:18:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1641813529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a1mKixw3piLB47kAb+NgNKbQU1uo3Pje5s8quzB5jk0=;
 b=EqaXD6pdaCfOOSB1dggh+mcmja7mdQvKdJG+AR+bsGJRVUX4MhZkt5KJVBiged528n88uk
 xFdZQxTmqvXymi6sZQS4GctDtGTbuycR2l6DKsCa9wLtiUXblbWveDVEBAS59xfHtZxHXz
 PLpMCtOYUN1KNQ6+ZksvVSiYrwjmYzc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-367-wSmpKZGjN6GuPbqk0EwnZQ-1; Mon, 10 Jan 2022 06:18:46 -0500
X-MC-Unique: wSmpKZGjN6GuPbqk0EwnZQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C87ED1017965;
 Mon, 10 Jan 2022 11:18:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 742B77D4D0;
 Mon, 10 Jan 2022 11:18:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20220110111444.926753-1-asmadeus@codewreck.org>
References: <20220110111444.926753-1-asmadeus@codewreck.org>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <3730530.1641813522.1@warthog.procyon.org.uk>
Date: Mon, 10 Jan 2022 11:18:42 +0000
Message-ID: <3730531.1641813522@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dominique Martinet <asmadeus@codewreck.org> wrote: > Reading
 from a file that was just extended by a write, but the write had > not yet
 reached the server would return ENODATA as illustrated by this > command:
 > $ xfs_io -c 'open -ft test' -c 'w 4096 [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n6shV-0002sf-8P
Subject: Re: [V9fs-developer] [PATCH] 9p: fix enodata when reading growing
 file
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> Reading from a file that was just extended by a write, but the write had
> not yet reached the server would return ENODATA as illustrated by this
> command:
> $ xfs_io -c 'open -ft test' -c 'w 4096 1000' -c 'r 0 1000'
> wrote 1000/1000 bytes at offset 4096
> 1000.000000 bytes, 1 ops; 0.0001 sec (5.610 MiB/sec and 5882.3529 ops/sec)
> pread: No data available
> 
> Fix this case by having netfs assume zeroes when reads from server come
> short like AFS and CEPH do
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> Co-authored-by: David Howells <dhowells@redhat.com>
> Cc: stable@vger.kernel.org

I think you want this also:

Fixes: eb497943fa21 ("9p: Convert to using the netfs helper lib to do reads and caching")

Reviewed-by: David Howells <dhowells@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

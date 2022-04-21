Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E90509DC0
	for <lists+v9fs-developer@lfdr.de>; Thu, 21 Apr 2022 12:36:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nhUAt-0003b9-Pu; Thu, 21 Apr 2022 10:36:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nhUAs-0003aq-8E
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Apr 2022 10:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CUudNcrJ1xRNDS1+KVl4Z0t857WYmRRKh3nXvmEZfk0=; b=kLxU4v4N8sO2E/IAzHmwo5Vhgn
 NaiqHJIcz8r6mEXAkf1ZLkszW7i9khntGTzCAXlPS0fTqATp+NlsGB6N8SRdinfn6ZSAwaQrJrSdu
 9EE/g6Brc/LBORrgWKWyOZGygPRiUqxi5k0INDt3AdBjCrx+NPfgrmK6y/XKbw/trw+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CUudNcrJ1xRNDS1+KVl4Z0t857WYmRRKh3nXvmEZfk0=; b=L3VZP4HrpvaBsa1zK3DfyyoAZ+
 j00KDpTb1VSbpXpIYMSt0L8Ys0Prf+BlP7qZib9bzd33jrXtRITogJ7DyHloV4bi9LWYrp7hDTusY
 45BAreTbW6CsMCkPGQlL/6fOnCUnyh2tRrEpDjcsc2KeAEeXuAiHzUmH2Kggb2d2lbso=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhUAm-0000Up-UD
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Apr 2022 10:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650537382;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CUudNcrJ1xRNDS1+KVl4Z0t857WYmRRKh3nXvmEZfk0=;
 b=TbmG6Kdw896XkeFz3snxMOvQBC3uPhdoohb8yHsua2yEqY/84VYZKYK8svv7GrRbAt24eM
 T7QSehDklcWYVB1/BAOXnzzjqMrBNCQ8lM+3u3VF4rBS9Lt6rN2mxkd9F64U5s4w5OjqCH
 FIbU14glS4+iC55G/XG/jamK+fQQ2jo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-nLlxoeJ0O0OU8ItYH0q6RA-1; Thu, 21 Apr 2022 06:36:16 -0400
X-MC-Unique: nLlxoeJ0O0OU8ItYH0q6RA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DF5D29DD992;
 Thu, 21 Apr 2022 10:36:15 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C67C140F4940;
 Thu, 21 Apr 2022 10:36:13 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YlySEa6QGmIHlrdG@codewreck.org>
References: <YlySEa6QGmIHlrdG@codewreck.org>
 <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2551609.RCmPuZc3Qn@silver> <YlwOdqVCBZKFTIfC@codewreck.org>
 <8420857.9FB56xACZ5@silver> <YlyFEuTY7tASl8aY@codewreck.org>
To: asmadeus@codewreck.org
MIME-Version: 1.0
Content-ID: <1050015.1650537372.1@warthog.procyon.org.uk>
Date: Thu, 21 Apr 2022 11:36:12 +0100
Message-ID: <1050016.1650537372@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: asmadeus@codewreck.org wrote: > int fd = open(argv[1],
 O_WRONLY|O_APPEND); 
 > if (fd < 0) > return 1; > if (write(fd, "test\n", 5) < 0) I think I need
 to implement the ability to store writes in non-uptodate pages without needing
 to read from the server as NFS does. This may fix the performance drop also.
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nhUAm-0000Up-UD
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Greg Kurz <groug@kaod.org>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

asmadeus@codewreck.org wrote:

> 	int fd = open(argv[1], O_WRONLY|O_APPEND);
> 	if (fd < 0)
> 		return 1;
> 	if (write(fd, "test\n", 5) < 0)

I think I need to implement the ability to store writes in non-uptodate pages
without needing to read from the server as NFS does.  This may fix the
performance drop also.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

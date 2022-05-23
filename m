Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1AA53095D
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 May 2022 08:09:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nt1Fe-0001wQ-9i; Mon, 23 May 2022 06:09:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nt1Fc-0001wD-WA
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 06:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zdXvbxe9TBvQlL5k5IXJSGdtX0v6lNlLaY17sAtSeoo=; b=OuURQZLJIwOrFloFb1lG+rq/9U
 rcP8BihjvfEcibjbToAGi6PrRoSY1y7ToQSiCr9Ar2iS7pv9LiWFkyJicCAmW9z46doHQBJtWa6u0
 ujV4mh3fab6+xd88fAQknKqYzfzkDdarhnZIxPylHqjenNlBpxsvXlgWvbPlLR1f7z5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zdXvbxe9TBvQlL5k5IXJSGdtX0v6lNlLaY17sAtSeoo=; b=EsGGm6Fy+2xh2lQRCFTBiKsaKC
 j0OrAj5zn4Durdem9JY5yrDI8qbSubO+I6g9XrQNG8Eaq0ZdcpYCMcJXX6Wgmu0ABsXfztcDeOLwQ
 m1+zQZYLBhe7BhOZoCwxA6/825QUg1o12sL1vfJaBkxVmibX+FzOtzmFbft5dTmslLaE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nt1FV-0001A1-IA
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 06:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653286135;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zdXvbxe9TBvQlL5k5IXJSGdtX0v6lNlLaY17sAtSeoo=;
 b=aia7k1IGeFM2DE0OUrbfO0Gah6Fatih4kcHKmaTa+o6dDI4wkjQlNQKYik6s41tX9eEvRM
 SpYVkDU3991BDHV5U47/l4pFtJKht2JR+h8eLBUOz1y/Be+AD/XcOIWtGi3pO09t6CQ5dx
 noi85NfHMZpYNKYkDwBDFMgSSprwFjc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-520--Ln86PXDPeW6kkOhtvqsjg-1; Mon, 23 May 2022 02:08:52 -0400
X-MC-Unique: -Ln86PXDPeW6kkOhtvqsjg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F6C7384F801;
 Mon, 23 May 2022 06:08:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C42B2C27E97;
 Mon, 23 May 2022 06:08:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <e5f6fee5518ce8e1b4fc5aa7038de1617a341c2f.camel@kernel.org>
References: <e5f6fee5518ce8e1b4fc5aa7038de1617a341c2f.camel@kernel.org>
 <165296980082.3595490.3561111064004493810.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>, Xiubo Li <xiubli@redhat.com>
MIME-Version: 1.0
Content-ID: <460692.1653286129.1@warthog.procyon.org.uk>
Date: Mon, 23 May 2022 07:08:49 +0100
Message-ID: <460693.1653286129@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@kernel.org> wrote: > Do we need
 free_subrequest?
 It looks like nothing defines it in this > series. These two patches add
 stuff that's used by stuff on my netfs-lib branch, but that's not going to
 be pushed this window, so I won't push these two patches for now. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nt1FV-0001A1-IA
Subject: Re: [V9fs-developer] [PATCH 1/2] netfs: ->cleanup() op is always
 given a rreq pointer now
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
Cc: Steve French <sfrench@samba.org>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> Do we need free_subrequest? It looks like nothing defines it in this
> series.

These two patches add stuff that's used by stuff on my netfs-lib branch, but
that's not going to be pushed this window, so I won't push these two patches
for now.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

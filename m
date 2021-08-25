Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FC13F76D2
	for <lists+v9fs-developer@lfdr.de>; Wed, 25 Aug 2021 16:04:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mItWB-0007cW-56; Wed, 25 Aug 2021 14:04:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mItW9-0007cD-Ij
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Aug 2021 14:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kE8Hzeh9FYFuKZ/G19btpp2uodcRTcaVsAerPbdqFCE=; b=LDod7OAJ+PCtkRGMNHJVwh2dOz
 y6nJrxYL8ueRGhGG2i0ZIOxQqqDQTH0rm6QwjCOa811rzZPqee2N2D7DJ/Mn+VGNLyRRRj+JP+P2a
 pgTTJ56h+xoweIZImdSKWfqPUuDsYMM9EJkJkHHelk70a8Ixpi2pXdsVK3k+D3xdBDOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kE8Hzeh9FYFuKZ/G19btpp2uodcRTcaVsAerPbdqFCE=; b=D80gN/0+LGiAFG7ZP6NNtAeD9a
 2NltDrRLJrhFwcrm71/KjTA/GSvQLgvgwJGf8HvyNXko7s7C1phci3hW+IXIi0JM8OWwxK8BIuMWf
 zDUBg9QgB+X5LUqLdvveBo1Q4I7AsSx4IarYRjzPAMSXd35b6bJPvX+TN139oHuqdiPk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mItW8-000hUP-Lh
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Aug 2021 14:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629900267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kE8Hzeh9FYFuKZ/G19btpp2uodcRTcaVsAerPbdqFCE=;
 b=H9T1W8aU6dFiayAryoqAZouyz1/N+VBNPEaoexKdb8l8VET3xSNjigaXAmJh6mJSgu0Nm7
 UasECGeJBAX8YYZ+NqZfjUd6C0tMJQIAfkZdtf9YcPWwh6KfLbM69z3Pfo18cd/mtZL3Kw
 0Q6d/Zc2jPOcs6x7Xsx/NgsmEIRoyJ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-ASdezzy4PASj34NJfVUMLw-1; Wed, 25 Aug 2021 10:04:25 -0400
X-MC-Unique: ASdezzy4PASj34NJfVUMLw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28BC01853026;
 Wed, 25 Aug 2021 14:04:24 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB6F72B3DF;
 Wed, 25 Aug 2021 14:04:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <3d98729b59c2afcad1299a7742211bcdf1598623.camel@redhat.com>
References: <3d98729b59c2afcad1299a7742211bcdf1598623.camel@redhat.com>
 <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
 <162431201844.2908479.8293647220901514696.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <2030820.1629900248.1@warthog.procyon.org.uk>
Date: Wed, 25 Aug 2021 15:04:08 +0100
Message-ID: <2030821.1629900248@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@redhat.com> wrote: > What happens when
 this patch encounters a cache that was built before > it? Do you need to
 couple this with some sort of global cache > invalidation or rehashing event?
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mItW8-000hUP-Lh
Subject: Re: [V9fs-developer] [PATCH 10/12] fscache: Fix cookie key hashing
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> What happens when this patch encounters a cache that was built before
> it? Do you need to couple this with some sort of global cache
> invalidation or rehashing event?

At the moment, nothing.  cachefiles generates a second hash value, but doing
so is a duplication of effort.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

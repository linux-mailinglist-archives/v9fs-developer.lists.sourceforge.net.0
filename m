Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 808BF37BB72
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 13:10:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgmka-0004Um-FN; Wed, 12 May 2021 11:10:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lgmkY-0004Ue-9t
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:09:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T2nAX+YI+rHmYRD6uHviI2eVH1B3T1K/tAfcgp+hzVc=; b=FJvpGjrFrrZqKVv0/WnkkN2yqh
 NhpQJXQ/+sX2zznfquk+5bUpgxz+/yOwhu5hjPKPXHKNg0yb6EQf2dcj3wqRS2aghS9AMY/FhJ3+n
 GoXU9wOJcxP6fnQ6wEAiVLsB0H7Sf2ZQ9qAbCdC/Bt107KgwpjNQ+BOGj+1KXL2lDRjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T2nAX+YI+rHmYRD6uHviI2eVH1B3T1K/tAfcgp+hzVc=; b=AOBIPYLCr5Z9orK+u1iBZ4fJ3u
 +q51XBF0gSb+VE9Wvy2rVRniT1ffqziBzbgOsJt8oh6fQH0yF4wmRVN2fVb5q2t48StRpFFKSPqLR
 pqYActuAE/0jvvLBDiCyFng2pAmHKtGGu1D5/H0X9S4XYBz+NFpqqwzOcASoIOXykTzI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgmkO-0005jb-5U
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:09:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620817782;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T2nAX+YI+rHmYRD6uHviI2eVH1B3T1K/tAfcgp+hzVc=;
 b=f/iK+0IGpnJeGiZ1Ea8GrFGIhDSOBl5u/OH32iilUUAEYaNJK3XONC96ywKvYWJXqjQmPj
 oT44mMHMvJLpTWpeFQW3Gu3s0KadDjvambDbQsluPuOS73/huYguFFPFqavlvP9D8NnkPk
 6mPRFW6G295JHBGXTFLz8Rt18MwEghQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-z6KQVHAeNniOF27qXhovXg-1; Wed, 12 May 2021 07:09:39 -0400
X-MC-Unique: z6KQVHAeNniOF27qXhovXg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B8781009446;
 Wed, 12 May 2021 11:09:38 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC45270139;
 Wed, 12 May 2021 11:09:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <87tun8z2nd.fsf@suse.de>
References: <87tun8z2nd.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <2507722.1620736734@warthog.procyon.org.uk>
To: Luis Henriques <lhenriques@suse.de>
MIME-Version: 1.0
Content-ID: <2882502.1620817775.1@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 12:09:35 +0100
Message-ID: <2882503.1620817775@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgmkO-0005jb-5U
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Henriques <lhenriques@suse.de> wrote:

> > Note that my fscache-iter branch[1] improves the situation where the disk
> > I/O required to effect the destruction of a cache object delays the
> > completion of relinquishment by inserting waits, but that oughtn't to help
> > here.
> 
> Right, I haven't looked at it yet (I'll try to) but that could make things
> even worse, right?

It forces fscache_acquire_cookie() to wait for cookie relinquishment to
complete sufficiently; however, that doesn't seem to be the problem here since
the cookie hasn't been relinquished yet.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

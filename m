Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25037BB6D
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 13:04:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgmfT-0004ZX-FF; Wed, 12 May 2021 11:04:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lgmfR-0004Yq-Gq
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5TOZHAEO+pT8rcr0WlOUE07svgCrHh7uPmgeF208tgU=; b=XD6igkC8AOZbhy7PbGnv/S1XWp
 jWqBrFlpd+xXeZ18UTI0r2+Fd67Y9wogWboDSYVldMqtmjwCNZcZXf7cxgWxFYjdPAu9oDEUNzIYz
 U9+MENCmTv5e0eXgZZpeQCjeuEc5FimNcrQCw+mgi7zV0ANdc1PAbiJdu0/Bi0CdV0iM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5TOZHAEO+pT8rcr0WlOUE07svgCrHh7uPmgeF208tgU=; b=EOIOdZokXNSTO4WvJPLcijbuNB
 UJlxmrZCRJHFMG9Xiz+Y5UnQzERYt+l70DdjThcHvHX/GMD0VHKYb8N1oRs/Byoq1jaUi/2eNDteA
 cSv24CzcfQJXa0isRH2weQFDHi6Jc05Y0uj9iDrWbflT7uNHWZGXG3+qETOiUIInqZM0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lgmfB-005H1x-8Q
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 11:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620817459;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5TOZHAEO+pT8rcr0WlOUE07svgCrHh7uPmgeF208tgU=;
 b=AF+RRRrG1clyVAr+k645F6KhwYRq+X6I5uzOFE46l8EKMIUYeRFi53Jxe/+vDVaX//n88L
 O077fo/eGhb0Lb++H5kJ8RiC4mWcy4RIv8DzjU8MBEf1UFGimDliM+ZxfgQzJRVDdoZeWj
 RuxRhfajuJVa27qfRd3yuox3M7vkUjc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-pQdoI5l2MTmubJdgiyGqtw-1; Wed, 12 May 2021 07:04:17 -0400
X-MC-Unique: pQdoI5l2MTmubJdgiyGqtw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44FBA800D55;
 Wed, 12 May 2021 11:04:16 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E3032B6CC;
 Wed, 12 May 2021 11:04:14 +0000 (UTC)
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
Content-ID: <2882180.1620817453.1@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 12:04:13 +0100
Message-ID: <2882181.1620817453@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgmfB-005H1x-8Q
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

> [ I wonder why the timestamps don't match between the traces and the
>   kernel log... ]

I've seen that.  I wonder if the timestamping of printk lines is delayed by
the serial driver outputting things.

> So, can we infer from this trace that an evict could actually be on-going
> but the old cookie wasn't relinquished yet and hence the collision?

It might be illuminating if you can make it print a traceline at the beginning
of v9fs_evict_inode() and in v9fs_drop_inode().  Print the cookie pointer in
both.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5622B7F2B
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 15:12:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfOCA-0001yq-9c; Wed, 18 Nov 2020 14:12:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kfNfh-0007zi-CS
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 13:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GVUanouneBkgZu23QQLjtjHhi4h+JZ5xuyDpQF39nTs=; b=FzfN0KOsW9WWRBPlntH8sVl3OK
 KICq5M692H3ygVJDNJZS5f+tV4BFr6rDVMdRf8xTfN44DMw8V4ZrUARSIhXYKCdWeXGszUE8US1kn
 ciwivEzZkJKThKJNAnxESH2S47lQnEZ/x21/rVTCa/JZl5KX6pHMPBjXwfOJtiGxVYLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GVUanouneBkgZu23QQLjtjHhi4h+JZ5xuyDpQF39nTs=; b=hwEoLQ2G0L3AnQQ+pMH5KmVyY4
 QqWl+6657zanIaVxhnzGDmBpdiLZT6EWSDAuE75Nu6dxi6moY5aQigt2IxlAmkyj5pmQOhra9zbJu
 l4xVWmctnlOtkGMEC/L91vOIpHoXnR13Q7yrkRlYHDcvHvv5tVs1wIlmeWevy2oIsCIE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kfNfY-003tCT-UF
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 13:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605706718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GVUanouneBkgZu23QQLjtjHhi4h+JZ5xuyDpQF39nTs=;
 b=L26G0aKPUFMPLrd5XfktGNG8wwZqpg3COrtXfrmZBrC2HqTOheDAiokVS3SZAdWilqGCP3
 bw+/pgjSmFJyniE6kWPLilYtSP1FMoL9ern3/kP+/+esQzS1PW+T1XNKtRXhj6WQghMuuF
 bL0mWCif5k5i2qQsPrrwdr/8XKhFSsQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-519-qk5WILKIOxCB2TWzC_mkgw-1; Wed, 18 Nov 2020 08:38:34 -0500
X-MC-Unique: qk5WILKIOxCB2TWzC_mkgw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AE7ECE64B;
 Wed, 18 Nov 2020 13:38:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD6805B4BE;
 Wed, 18 Nov 2020 13:38:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20201118124826.GA17850@nautica>
References: <20201118124826.GA17850@nautica>
 <1514086.1605697347@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1561010.1605706707.1@warthog.procyon.org.uk>
Date: Wed, 18 Nov 2020 13:38:27 +0000
Message-ID: <1561011.1605706707@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
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
X-Headers-End: 1kfNfY-003tCT-UF
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

> What's the current schedule/plan for the fscache branch merging? Will
> you be trying this merge window next month?

That's the aim.  We have afs, ceph and nfs are about ready; I've had a go at
doing the 9p conversion, which I'll have to leave to you now, I think, and am
having a poke at cifs.

> >  (*) I have made an assumption that 9p_client_read() and write can handle I/Os
> >      larger than a page.  If this is not the case, v9fs_req_ops will need
> >      clamp_length() implementing.
> 
> There's a max driven by the client's msize

The netfs read helpers provide you with a couple of options here:

 (1) You can use ->clamp_length() to do multiple slices of at least 1 byte
     each.  The assumption being that these represent parallel operations.  A
     new subreq will be generated for each slice.

 (2) You can go with large slices that are larger than msize, and just read
     part of it with each read.  After reading, the netfs helper will keep
     calling you again to read some more of it, provided you didn't return an
     error and you at least read something.

> (client->msize - P9_IOHDRSZ ; unfortunately msize is just guaranted to be >=
> 4k so that means the actual IO size would be smaller in that case even if
> that's not intended to be common)

Does that mean you might be limited to reads of less than PAGE_SIZE on some
systems (ppc64 for example)?  This isn't a problem for the read helper, but
might be an issue for writing from THPs.

> >  (*) The cache needs to be invalidated if a 3rd-party change happens, but I
> >      haven't done that.
> 
> There's no concurrent access logic in 9p as far as I'm aware (like NFS
> does if the mtime changes for example), so I assume we can keep ignoring
> this.

By that, I presume you mean concurrent accesses are just not permitted?

> >  (*) If 9p supports DIO writes, it should invalidate a cache object with
> >      FSCACHE_INVAL_DIO_WRITE when one happens - thereby stopping caching for
> >      that file until all file handles on it are closed.
> 
> Not 100% sure actually there is some code about it but comment says it's
> disabled when cache is active; I'll check just found another problem
> with some queued patch that need fixing first...

Ok.

> > I forgot something: netfs_subreq_terminated() needs to be called when
> > the read is complete.  If p9_client_read() is synchronous, then that
> > would be here,
> 
> (it is synchronous; I'll add that suggestion)

Thanks.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

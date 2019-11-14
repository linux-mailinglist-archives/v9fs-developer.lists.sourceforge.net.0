Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6061BFC802
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Nov 2019 14:41:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iVFMw-0006J4-UT; Thu, 14 Nov 2019 13:41:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1iVFMv-0006Iu-NV
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Nov 2019 13:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 Date:Content-ID:MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M2J7Gf6SuzKWX47g7qh2y1AT+N7TUFXmW/HwIIlq/BU=; b=kxTWbSyiAL9ppCkrxz1cXhZbFs
 eYtfdlKaiQSKMf3BEEp4ls2yceBFACTxRjFAfPkkMYkzpjfTBzmU55O+rz5Jl/6bAVwR1ZHptpq2I
 1aaSajET2NsnBmcVABS3fWSjVuzZxgFNOsZNLpm1AJ3RI4voKjHe5QWaM5BoUgU1im5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:Date:Content-ID:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M2J7Gf6SuzKWX47g7qh2y1AT+N7TUFXmW/HwIIlq/BU=; b=B4txeBsvHOf/+9iVAWhqF2bNR3
 J0mJ2HWvKyd0wz87IJ45s+rls0lXgnQxF7gKZXZyenJTDkRP7TPTsff+AMVfSLtPylkweh8BoONbO
 I0/a0V1IYqmcwB/HDHxYVNZyDDyhIw1YXuO4cjRTkg11CU5BwLPeponhNLTiJh9dDXLU=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iVFMo-00GOPC-1A
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Nov 2019 13:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573738851;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M2J7Gf6SuzKWX47g7qh2y1AT+N7TUFXmW/HwIIlq/BU=;
 b=aXMZEQifHO/KlUv2Xj7nCo7CYLxtHzb0vEC+E2w5cnTAJA+FUW7A0KriGg7e8XIJgdA/S3
 qubLDvmR8tkumBlWQ/MmskQA3k1hVYFwMEWt8s9Fs7ygukXA/7qXMn0pluzBQ5bI4897ib
 dbWlgWILRNcj35c9vYaG//kXs2+fDCE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-uy07ckELPtiy0UFAGms6Ow-1; Thu, 14 Nov 2019 08:40:46 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA83D800C77;
 Thu, 14 Nov 2019 13:40:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-254.rdu2.redhat.com
 [10.10.120.254])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3751A60BD7;
 Thu, 14 Nov 2019 13:40:39 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <24942.1573667720@warthog.procyon.org.uk>
References: <24942.1573667720@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@lst.de>, Dave Chinner <dchinner@redhat.com>,
 "Theodore Ts'o" <tytso@mit.edu>
MIME-Version: 1.0
Content-ID: <30126.1573738838.1@warthog.procyon.org.uk>
Date: Thu, 14 Nov 2019 13:40:38 +0000
Message-ID: <30127.1573738838@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: uy07ckELPtiy0UFAGms6Ow-1
X-Mimecast-Spam-Score: 0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVFMo-00GOPC-1A
Subject: [V9fs-developer] How to avoid using bmap in cachefiles --
 FS-Cache/CacheFiles rewrite
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Christoph,

I've been rewriting cachefiles in the kernel and it now uses kiocbs to do
async direct I/O to/from the cache files - which seems to make a 40-48% speed
improvement.

However, I've replaced the use of bmap internally to detect whether data is
present or not - which is dodgy for a number of reasons, not least that
extent-based filesystems might insert or remove blocks of zeros to shape the
extents better, thereby rendering the metadata information useless for
cachefiles.

But using a separate map has a couple of problems:

 (1) The map is metadata kept outside of the filesystem journal, so coherency
     management is necessary

 (2) The map gets hard to manage for very large files (I'm using 256KiB
     granules, so 1 bit per granule means a 512-byte map block can span 1GiB)
     and xattrs can be of limited capacity.

I seem to remember you said something along the lines of it being possible to
tell the filesystem not to do discarding and insertion of blocks of zeros.  Is
there a generic way to do that?

Also, is it possible to make it so that I can tell an O_DIRECT read to fail
partially or, better, completely if there's no data to be had in part of the
range?  I can see DIO_SKIP_HOLES, but that only seems to affect writes

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

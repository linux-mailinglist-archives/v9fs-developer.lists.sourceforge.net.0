Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94854240842
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 17:17:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k59YK-0005Ns-Ad; Mon, 10 Aug 2020 15:17:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1k59YJ-0005Ng-5e
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:17:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tzFIJ6QrKu4yoI3w842fEVOcfFitxszWJPwA8w1tzak=; b=mVoAnhTaah0ZITzfZq5HRhu5rT
 Sq6PIv2CSIYUVlC39YM3g02Sf9Je2kzMrlTohSq+tkPKCGmZliDBGY5fzBR8HICVKoWBJK0OmptrF
 NLDhYFqpAGC0biicSRv6FiGe8SncQ8XOxcuYB+M1XVy8Yu/4Aav0Q4cBW+Y/3F591TNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tzFIJ6QrKu4yoI3w842fEVOcfFitxszWJPwA8w1tzak=; b=f35aKbWON4I3giMQbnom1nrGN4
 D0P1WhAPAigHw24NO7+5URuCDmMd5rVCjs4gMRzWWylNDfjVIZYCT9Wg8x5NAlaD0+/FkXGkHCAOv
 SbtSkuOZMb+YU9P2GdFx/V+WlhkbuDFMeH3gQicey4dvNDYQBgse+hMJIHSuhMxOZDbQ=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k59YI-002vE2-1g
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:17:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597072631;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tzFIJ6QrKu4yoI3w842fEVOcfFitxszWJPwA8w1tzak=;
 b=gsEV3+a5sDDGnwKPCs6FmFDggH72VBxwiPTk33brn0K1AakWALCRBnHdNXqjtMgfDyR6Hh
 8PKk1j0gFBI0+ALjumgmmCbD6XTmy1oRA3v1gsWBHDxH151CpgtSN20/EKHXbYba2yC+c9
 3waPk0gUCK4FoWv8mN9r8zhGkOKv2iY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-F6eKrt3VN1Knd3NgOWyHPg-1; Mon, 10 Aug 2020 11:17:09 -0400
X-MC-Unique: F6eKrt3VN1Knd3NgOWyHPg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D0288005B0;
 Mon, 10 Aug 2020 15:17:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-113-69.rdu2.redhat.com
 [10.10.113.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB1795D9CD;
 Mon, 10 Aug 2020 15:16:59 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1851200.1596472222@warthog.procyon.org.uk>
References: <1851200.1596472222@warthog.procyon.org.uk>
 <447452.1596109876@warthog.procyon.org.uk>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <667819.1597072619.1@warthog.procyon.org.uk>
Date: Mon, 10 Aug 2020 16:16:59 +0100
Message-ID: <667820.1597072619@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k59YI-002vE2-1g
Subject: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for now
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
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Can you drop the fscache rewrite pull for now.  We've seem an issue in NFS
integration and need to rework the read helper a bit.  I made an assumption
that fscache will always be able to request that the netfs perform a read of a
certain minimum size - but with NFS you can break that by setting rsize too
small.

We need to make the read helper able to make multiple netfs reads.  This can
help ceph too.

Thanks,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F35C3F76DB
	for <lists+v9fs-developer@lfdr.de>; Wed, 25 Aug 2021 16:06:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mItXe-000333-Dh; Wed, 25 Aug 2021 14:06:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mItXd-00032w-Gk
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Aug 2021 14:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ye7x7ROLpLa4uVII3MBvGoJurLkOurh44zhhrnNWmF8=; b=YIH9Xsgbe0qbbtLYmghCcaKYQF
 gPedRUduihOyvdEpITZ9GdAS5gz5oQcmaaNHtgJR8KXrjw5R3TPSOuY9Tn6H/ISmXo45Ane9seOE2
 cu1M1jell6xptQrAnrTeP3xFL5I5qYSigcfhySsN0ZfQCuKlIcUJfjHEvqXS8JJCAffI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ye7x7ROLpLa4uVII3MBvGoJurLkOurh44zhhrnNWmF8=; b=lxpzHSa+84iy+Voj6OdwAErQQR
 bhpd1bxZKSq0EOVXo014DBnLZWnw/Vr66UhzH/GEowbDX8HLEwF+x6uBF5X+AoLzW3lo4YWUkSx0l
 E8kC2r4dNcu6JtknGpbqI9k6t6MAOvefVOJcNw4OH2mouu55/Zbo69zvVBSEX/2I5aF4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mItXY-0002Ga-RX
 for v9fs-developer@lists.sourceforge.net; Wed, 25 Aug 2021 14:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629900358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ye7x7ROLpLa4uVII3MBvGoJurLkOurh44zhhrnNWmF8=;
 b=PlSp3eljiYjbFR7oDHpakV0l/I8O/eoK74I2CKLUu8qKqMPDq0e73IbwyW505RgkDNtDxP
 06uKZKZMkgo89yLbNGd6kzixho25gTB5bo6bzCJpEUTIsGCws9W35Yn3yfiEvnPlu00tyy
 n5/vTLkH6MaBuSKFD4kqyw66Yyj/WNY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-562-8zB0ShKZMiSW63FKSCZu_g-1; Wed, 25 Aug 2021 10:05:57 -0400
X-MC-Unique: 8zB0ShKZMiSW63FKSCZu_g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3302B101C8AE;
 Wed, 25 Aug 2021 14:05:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A820060C04;
 Wed, 25 Aug 2021 14:05:52 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <6370d0a74c3ceb79c53305a64ba7a982d16d34b4.camel@redhat.com>
References: <6370d0a74c3ceb79c53305a64ba7a982d16d34b4.camel@redhat.com>
 <162431188431.2908479.14031376932042135080.stgit@warthog.procyon.org.uk>
 <162431203107.2908479.3259582550347000088.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <2030918.1629900351.1@warthog.procyon.org.uk>
Date: Wed, 25 Aug 2021 15:05:51 +0100
Message-ID: <2030919.1629900351@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mItXY-0002Ga-RX
Subject: Re: [V9fs-developer] [PATCH 11/12] fscache: Fix
 fscache_cookie_put() to not deref after dec
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

> > fscache_cookie_put() accesses the cookie it has just put inside the
> > tracepoint that monitors the change - but this is something it's not
> > allowed to do if we didn't reduce the count to zero.
> 
> Do you mean "if the count went to zero." ?

No.  If *we* reduced the count to zero, it falls to us to destroy the object,
so we're allowed to look into it again.

If we didn't reduce the count to zero, then someone else might destroy it
before we look into it again.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

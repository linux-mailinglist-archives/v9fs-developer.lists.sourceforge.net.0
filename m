Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 413B94FB57A
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Apr 2022 09:59:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ndoxj-0007JM-55; Mon, 11 Apr 2022 07:59:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1ndoxh-0007J7-M4
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Apr 2022 07:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AodznpEAcBj+PXndSY80fSw2jJRVYRPcVB2yJinGzrY=; b=NVmW9cCHNeXm6ZAiCD184LGNU1
 yjM9R+mv/ARKBudp9LE1mc1U2Mr3M53p1KQ7VR8bDNsl00fuXYT+pTy7DSkIKCkkziam+CwiWZkXV
 9EMRaZs1nSvfclIUglvu0s4typr45kMxJbe64YZ/i4R7uUf0AkyG/iYEchGOv+WJ7RAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AodznpEAcBj+PXndSY80fSw2jJRVYRPcVB2yJinGzrY=; b=UkVXSnDWFHYC+gW08w+akbGPoB
 awA4b6H++uZnaoLuP04Ars62Q6EzCC7QuZ0ZInuYtkKmtR2vhneJAsq6ce3Eis7scsBxOriLBFu2y
 WYtzVWe/PdNq1K69dvSt/MkNsnJPKzCLURKwSa8o/2xqvvIrLN5UQ7Ms5Bo/IJW7KKs0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndoxd-0008CH-T1
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Apr 2022 07:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649663979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AodznpEAcBj+PXndSY80fSw2jJRVYRPcVB2yJinGzrY=;
 b=S2RdNKPjtF/CBVEs8H0tLCrrcIqujuCTIU1MONl5urPOf6vJP+QF8wc7+hAw+NYhbUmPCl
 SLXAlkr4v/FPGoWOLC1esArjutnvilllUAnE9IgFuqWgj1npGvpHhpNwlpb9vy5OcG5yUW
 VvMpzsqKdnQqcvPg26KfY1EUHlhpvgE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-226-50PXCoiLN1GrNixppGO-Tg-1; Mon, 11 Apr 2022 03:59:35 -0400
X-MC-Unique: 50PXCoiLN1GrNixppGO-Tg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E75C85A5BC;
 Mon, 11 Apr 2022 07:59:34 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E1A4140EC001;
 Mon, 11 Apr 2022 07:59:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YkTP/Talsy3KQBbf@codewreck.org>
References: <YkTP/Talsy3KQBbf@codewreck.org>
 <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2582025.XdajAv7fHn@silver> <Yj8WkjT+MsdFIfwr@codewreck.org>
 <3791738.ukkqOL8KQD@silver>
To: asmadeus@codewreck.org
MIME-Version: 1.0
Content-ID: <1077049.1649663972.1@warthog.procyon.org.uk>
Date: Mon, 11 Apr 2022 08:59:32 +0100
Message-ID: <1077050.1649663972@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: asmadeus@codewreck.org wrote: > I see fscache also uses the
 qid version as 'auxilliary data', but I'm > not sure what this is used for
 -- if it's a data version like thing then > it will also at least invalidate
 the cache content [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ndoxd-0008CH-T1
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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

> I see fscache also uses the qid version as 'auxilliary data', but I'm
> not sure what this is used for -- if it's a data version like thing then
> it will also at least invalidate the cache content all the time.

I should really have renamed "auxiliary data" to "coherency data".  It's used
by direct comparison when fscache binds a cookie to a backing cache object to
work out if the content of the backing object is still valid.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

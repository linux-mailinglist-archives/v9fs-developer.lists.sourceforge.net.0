Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 749BD646AE8
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 09:46:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3CYD-0000Bv-3F;
	Thu, 08 Dec 2022 08:46:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1p3CXt-00009L-Cr
 for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 08:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-ID:Content-Type:Message-ID:Date:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VQbFBa+O6Lbr2u89r/oNOW5gxWsiU/72H1+34SVCHYE=; b=nR0GDTRu0X7BNEnsVKEWDickZQ
 XaYVaREmlXPnR5Q9aClJ7vT0oDj4uVHL5XdT4zlR/2B79bbfSRy0JKWjd7N060m4inLoHB6uJo+VZ
 bc61102uxRNKxrOnMhuh4PnmAYFmJyZLVPt87TqVvJJZf5RdNTzYNCfLiSry58xm4488=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-ID:Content-Type:Message-ID:Date:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VQbFBa+O6Lbr2u89r/oNOW5gxWsiU/72H1+34SVCHYE=; b=ZDRkM/tzmZ6sedh8uqlXhxDDpk
 +CzKKOLUCMml8++57K69Y4wxZVQRmneo3SQH6ZcygW6Ny79gYsgVTEPio/wLUug7FA9BodxVMA9am
 sIdQ9mc+is9UUD/e43+rX0lBEzEb3XfVOoqeX9EA6RvYWyr+RGzk8gn/tCXSBMkqPW1k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3CXh-00A3th-Vo for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 08:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1670489163;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VQbFBa+O6Lbr2u89r/oNOW5gxWsiU/72H1+34SVCHYE=;
 b=UfDpi989f8xsX/3kQmu1tJ4CwXIB9ynqGd0iqoHU7BuiIGTT626EykIyKZzsihqWDQZoB4
 AYau75tpkrXtX5B7Wa9GbckMUq//26qWZCpS2D5MGACuDEVPzVFWRpGHZ+P4NiAgitGW7u
 ZTDgo+xCk+UMa/xVUdqGPK2KxyDX1ns=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-196-EG-EWfduNxStoc4Ee1jV-w-1; Thu, 08 Dec 2022 03:45:58 -0500
X-MC-Unique: EG-EWfduNxStoc4Ee1jV-w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1477B3C10237;
 Thu,  8 Dec 2022 08:45:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F05017582;
 Thu,  8 Dec 2022 08:45:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Y5EvoGhao+z5nH84@codewreck.org>
References: <Y5EvoGhao+z5nH84@codewreck.org>
 <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Date: Thu, 08 Dec 2022 08:45:54 +0000
Message-ID: <1626248.1670489154@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <1626247.1670489154.1@warthog.procyon.org.uk>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet <asmadeus@codewreck.org> wrote: > afaik
 David Howells haven't really finished his netfs conversion, iirc > the write
 helpers aren't completely finished? I'm kind of stuck waiting on approval
 of the iov_iter changes needed. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p3CXh-00A3th-Vo
Subject: Re: [V9fs-developer] 9p cache code
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
Cc: "v9fs-users@lists.sourceforge.net" <v9fs-users@lists.sourceforge.net>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, dhowells@redhat.com,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> afaik David Howells haven't really finished his netfs conversion, iirc
> the write helpers aren't completely finished?

I'm kind of stuck waiting on approval of the iov_iter changes needed.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

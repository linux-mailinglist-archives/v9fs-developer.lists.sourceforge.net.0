Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D2B4FB5A6
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Apr 2022 10:10:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ndp8P-0000dm-5I; Mon, 11 Apr 2022 08:10:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1ndp8N-0000dg-NT
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Apr 2022 08:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WtRp4WO1lSj8PVjuXtMR8/dhv6hWnrFbyC+j6WCz6NI=; b=l1Pw1z4ApLAaHWKFQvH6jyWE2M
 oUFdJVUv1cKiVV853Q/V+xOx9B3tm6qZFlmSoFDeiifn0VE09zDuGUbTEW5vNT7+Y4uArpQXalBfs
 7nfB9LiPo0Gd8Imlc1crIP0jM6v7KBf1BGdnnnZAkw4wEfFkRKffTZrgWns/hIAS7Odw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WtRp4WO1lSj8PVjuXtMR8/dhv6hWnrFbyC+j6WCz6NI=; b=djPafQ8ass3g4lTbBHtmwIy+DD
 uaYpohlx5TZjJ22fZssQHQvfpBk2eN2YgSSzttWLRROi3iZtMbwBIEbpphK6j27OQBCR16ACkik7c
 C/SZDa1Vx0TpAQBpGK8Dbt4HuNuWJ6oZyOq9nmgGbNFOTq9V+v1U4Ni2XuYdb9WMTvgE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndp8J-00CWAa-BP
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Apr 2022 08:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649664638;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WtRp4WO1lSj8PVjuXtMR8/dhv6hWnrFbyC+j6WCz6NI=;
 b=YgB2THWnWvJSIWlOzf13i1a9+Hc8uujfDNtuwgS3Y3Xw8R3722+vAPMs5CdR5OVRwTx75p
 /BhFlUIItHcdqXeoeBaj1P00ZzcZ3MOr5nrC6wn3dDvWkInPE2l8pPM6ogqOmBztwmGM2B
 U7PZiSbQhwI+57W4H8BS7xDWPyGFW1g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-274-U124vjKGPJ6MlhOv5jORIg-1; Mon, 11 Apr 2022 04:10:35 -0400
X-MC-Unique: U124vjKGPJ6MlhOv5jORIg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 600472A5954D;
 Mon, 11 Apr 2022 08:10:33 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B89F72166BDC;
 Mon, 11 Apr 2022 08:10:31 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1866935.Y7JIjT2MHT@silver>
References: <1866935.Y7JIjT2MHT@silver>
 <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3791738.ukkqOL8KQD@silver> <YkTP/Talsy3KQBbf@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
MIME-Version: 1.0
Content-ID: <1077759.1649664631.1@warthog.procyon.org.uk>
Date: Mon, 11 Apr 2022 09:10:31 +0100
Message-ID: <1077760.1649664631@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Christian Schoenebeck <linux_oss@crudebyte.com> wrote: > From
 looking at the sources, the call stack for emitting "FS-Cache: Duplicate
 > cookie detected" error messages with 9p "cache=mmap" option seems to be:
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ndp8J-00CWAa-BP
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck <linux_oss@crudebyte.com> wrote:

> From looking at the sources, the call stack for emitting "FS-Cache: Duplicate
> cookie detected" error messages with 9p "cache=mmap" option seems to be:

You might find these tracepoints useful:

echo 1 >/sys/kernel/debug/tracing/events/fscache/fscache_cookie/enable
echo 1 >/sys/kernel/debug/tracing/events/fscache/fscache_acquire/enable
echo 1 >/sys/kernel/debug/tracing/events/fscache/fscache_relinquish/enable

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

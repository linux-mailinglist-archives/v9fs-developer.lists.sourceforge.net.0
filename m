Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C98D63A272B
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Jun 2021 10:34:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lrG8x-0007pN-3m; Thu, 10 Jun 2021 08:34:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lrG8v-0007oj-0h
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Jun 2021 08:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iZa1+1qRIau0JA4G4mFy2PSaXoZ0Z9gDo5Hw1Npi34I=; b=Ro76g5xRo4nYfImpgsP5uHmVpi
 MwktO/0rCWLz/6uoisPzH6grGHiq89eG/v9pjN+Q3wDYJaCfgfNYZ8bL7n1u4DLSrSxqIGmOLz7pH
 qghD0KTvi2k0g2JcdX1eM2q+PIFbjbBBFoH6UHxfmL1BRr1H54gO8qZSTMYJJ8Ms/YpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iZa1+1qRIau0JA4G4mFy2PSaXoZ0Z9gDo5Hw1Npi34I=; b=caXtAUKLBOuE5R51Yrjito4KYl
 O2HykVLO9otnjwtBBwfLU/rTsRL8e4EU9t4nHTz7dJS2fEKeMGv8NiypmQCEXoKfpfSxiJwhK+aUF
 i7nAEcGiCtuiZ0h1hQoqdmpA26SSQ7OjcaW4nxa2r3RbetACGZGKiCevdedRJcR3RwLU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lrG8g-003HHV-Nn
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Jun 2021 08:34:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AB687C01C; Thu, 10 Jun 2021 10:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623314037; bh=iZa1+1qRIau0JA4G4mFy2PSaXoZ0Z9gDo5Hw1Npi34I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kGqKC7AFVeIEp0fUgzcQS2c8VETAH1wLr0t3yFTzhPwRejmEg9Zcpu+JsrUWANfGB
 3EOPQYGvGI1CxHfxsK5+jACZk9LTEbrng404FtnrBelEryaGPAwAwZrmyyq+KhEt08
 To2C+BRqzZjyQTUwQL2nPUdfE6UvVGC5O/ADjTWNawEXw3q0gaZrQo8uByM8sXtow1
 Ehr+RutqLn8WN8yavzhmGLXakaHLFKfUHmvYaXr0ojkZZ4f/L1aGdHFVhmk3VjuwMl
 QodbN244pHG/7FS6g0TX8hpoyWc03/Vv5Rk1wcXbTqrq0HG4Wrpm2a4jP7K/vA8DXe
 W8mIarOt8lKJw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CBA7FC01A;
 Thu, 10 Jun 2021 10:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623314037; bh=iZa1+1qRIau0JA4G4mFy2PSaXoZ0Z9gDo5Hw1Npi34I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kGqKC7AFVeIEp0fUgzcQS2c8VETAH1wLr0t3yFTzhPwRejmEg9Zcpu+JsrUWANfGB
 3EOPQYGvGI1CxHfxsK5+jACZk9LTEbrng404FtnrBelEryaGPAwAwZrmyyq+KhEt08
 To2C+BRqzZjyQTUwQL2nPUdfE6UvVGC5O/ADjTWNawEXw3q0gaZrQo8uByM8sXtow1
 Ehr+RutqLn8WN8yavzhmGLXakaHLFKfUHmvYaXr0ojkZZ4f/L1aGdHFVhmk3VjuwMl
 QodbN244pHG/7FS6g0TX8hpoyWc03/Vv5Rk1wcXbTqrq0HG4Wrpm2a4jP7K/vA8DXe
 W8mIarOt8lKJw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8d60faf2;
 Thu, 10 Jun 2021 08:33:49 +0000 (UTC)
Date: Thu, 10 Jun 2021 17:33:34 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Stefan Hajnoczi <stefanha@redhat.com>
Message-ID: <YMHOXn2cpGh1T9vz@codewreck.org>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
 <20210609154543.GA579806@redhat.com>
 <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lrG8g-003HHV-Nn
Subject: Re: [V9fs-developer] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, dgilbert@redhat.com,
 virtio-fs@redhat.com, viro@zeniv.linux.org.uk,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Stefan Hajnoczi wrote on Thu, Jun 10, 2021 at 09:16:38AM +0100:
> virtio-9p should be simple. I'm not sure how much additional setup the
> other 9p transports require. TCP and RDMA seem doable if there are
> kernel parameters to configure things before the root file system is
> mounted.

For TCP, we can probably piggyback on what nfs does for this, see the
ip= parameter in Documentation/admin-guide/nfs/nfsroot.rst -- it lives
in net/ipv4/ipconfig.c so should just work out of the box

For RDMA I'm less optimistic, technically if we can setup ipoib with an
ip with the same parameter it should work, but I have nothing to test it
on anyway so that'll wait until someone who cares actually does try...


Either way, we've got to start somewhere, so it's good there's something :)
-- 
Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

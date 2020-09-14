Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7703D26908F
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 17:47:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHqh8-00089s-PG; Mon, 14 Sep 2020 15:47:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kHqh6-00089a-Td
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Jqcsz0s4abVva8P13MteQb4c6WNPR2fYPABy/LVNHk=; b=CnSdi7Y26Ms6UJY861GqBCjHzq
 aNVfBwWcTdqb9AGfSER+7TjFhL0Ia/pbum4494Gi5DYjmJF47/Euap3vakzHV3naK/TYLcQL9tO4j
 iVN2k3UnRzsmVx+lIZ7XuwBrNFO0Mrdb/JxX0yXKvbzxX0xuPCdCb15qrrQWdfOfkRYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3Jqcsz0s4abVva8P13MteQb4c6WNPR2fYPABy/LVNHk=; b=ee5F585x7si5L+NBxdJvGGPqpv
 hmaJLIV7TuijwkmLZOQKTvBoDCNL9tIaDk4u9CJrCIWCNgq/c89RVI0Iyzr0RURoPSfd9fGCZM9DF
 BbBT51Hlw39L8NatU6uTkFivjbwyMUU9dwFbCTkfxeFQjPCsknTY4DrGeu2tS4j7HVVQ=;
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHqgz-009LWK-UQ
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:47:04 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.4.92])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 99160617F1AA;
 Mon, 14 Sep 2020 17:46:32 +0200 (CEST)
Received: from kaod.org (37.59.142.106) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 17:46:31 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R00607f539b8-6c4b-4c84-ba45-0f0b12b78fa8,
 33559CD024D4F69900824C14C2AC4808F9346AFD) smtp.auth=groug@kaod.org
Date: Mon, 14 Sep 2020 17:46:30 +0200
From: Greg Kurz <groug@kaod.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20200914174630.195e816f@bahia.lan>
In-Reply-To: <2037087.W39pGsgtbe@silver>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <2828347.d8MXItvaOC@silver> <20200914144325.7928dbd3@bahia.lan>
 <2037087.W39pGsgtbe@silver>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG2EX2.mxp5.local (172.16.2.12) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: a4e8086c-a59a-4e2b-a409-446354a421de
X-Ovh-Tracer-Id: 10401063342826494316
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgleehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfhisehtjeertdertddvnecuhfhrohhmpefirhgvghcumfhurhiiuceoghhrohhugheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeekvdfguefgtddvleefffeuveefgedukeehffdtjeevgfevieelleduffekuedvffenucffohhmrghinhepnhhonhhgnhhurdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghnhedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehgrhhouhhgsehkrghougdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nongnu.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [79.137.123.220 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [79.137.123.220 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHqgz-009LWK-UQ
Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 14 Sep 2020 17:19:20 +0200
Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:

> On Montag, 14. September 2020 14:43:25 CEST Greg Kurz wrote:
> > > So yes, looks like this also requires changes to the 9pfs 'local' fs
> > > driver on QEMU side:
> > > https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.html
> > > 
> > > Eric, Greg, would there be an easy way to establish QEMU test cases
> > > running
> > > the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases for
> > > QEMU which can only use the 'synth' driver, which is not helpful for such
> > > kind of issues.
> > 
> > I guess it's possible to introduce new qtests that start QEMU with
> > -fsdev local instead of -fsdev synth... I haven't looked in a while
> > though, so I won't comment on "easy way" ;-)
> 
> Makes sense, and I considered that approach as well.
> 
> The question is the following: is there a QEMU policy about test cases that 
> create/write/read/delete *real* files? I.e. should those test files be written 
> to a certain location, and are there measures of sandboxing required?
> 

I don't know. You'll need to figure out by yourself, reading code from
other tests or asking on IRC.

> Best regards,
> Christian Schoenebeck
> 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

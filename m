Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2575E268B56
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 14:43:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHnpf-0008Do-O1; Mon, 14 Sep 2020 12:43:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kHnpe-0008Dh-4r
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tDIMyTgZ7Jo0dX2LeW9K9ymQObwjHsh/2+Tgw04gVH0=; b=N7DQyUj4EiBNsp9opEq61vPyHJ
 EYPAxjx+3wA2GxNPEtebTXvIrBWMfYfvSQtGZ1SzhHzcy1GqsksEmIh5ckz9kCCC0SGNPtif8Eh1K
 EM0eRtK36tl1bl8IWCgZzRR6LCPfQVo5KZUBHl2vd4ZkFb1aj94UdtHRwi2YK5TK0+G0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tDIMyTgZ7Jo0dX2LeW9K9ymQObwjHsh/2+Tgw04gVH0=; b=P/Qid0yq2HUvJwSkUCZu1MZcZV
 blYGXCb56+bA3PDaSLHLElm5eaZiOVW1lLPVwprK5C3UdlW682VH5o0eFbYVIUz1ZmUnbsTPmhK1H
 d980YLMta9+cy5GoYo04ZgRmS39hN1F57NWIDMue/BliU1IfMpttRKbYls2nilc+Q2SI=;
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHnpW-0098em-CW
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:43:42 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.16.141])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id D12236169BD3;
 Mon, 14 Sep 2020 14:43:27 +0200 (CEST)
Received: from kaod.org (37.59.142.101) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 14:43:27 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-101G004f4779f11-c3c5-46a4-95af-5038877f53f1,
 33559CD024D4F69900824C14C2AC4808F9346AFD) smtp.auth=groug@kaod.org
Date: Mon, 14 Sep 2020 14:43:25 +0200
From: Greg Kurz <groug@kaod.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20200914144325.7928dbd3@bahia.lan>
In-Reply-To: <2828347.d8MXItvaOC@silver>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914103546.0f775bcd@bahia.lan> <2828347.d8MXItvaOC@silver>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG5EX2.mxp5.local (172.16.2.42) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: 7b3eebd8-3a1a-4ea5-9361-ab98b19bcfee
X-Ovh-Tracer-Id: 7309060721836595564
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgheeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfhisehtjeertdertddvnecuhfhrohhmpefirhgvghcumfhurhiiuceoghhrohhugheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeevvdejgeefffejheejkefhveefhfetgeevgfetudejvdevhfdtjefffffgudekkeenucffohhmrghinheplhgruhhntghhphgrugdrnhgvthdpnhhonhhgnhhurdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghnhedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehgrhhouhhgsehkrghougdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [79.137.123.220 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [79.137.123.220 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHnpW-0098em-CW
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

On Mon, 14 Sep 2020 13:06:34 +0200
Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:

> On Montag, 14. September 2020 10:35:46 CEST Greg Kurz wrote:
> > On Mon, 14 Sep 2020 11:37:50 +0800
> > 
> > Jianyong Wu <jianyong.wu@arm.com> wrote:
> > > open-unlink-f*syscall bug is a well-known bug in 9p, we try to fix the bug
> > > in this patch set.
> > > I take Eric's and Greg's patches which constiute the 1/4 - 3/4 of this
> > > patch set as the main frame of the solution. In patch 4/4, I fix the fid
> > > race issue exists in Greg's patch.
> > 
> > IIRC some patches were needed on the QEMU side as well... I'm spending
> > less time on 9pfs in QEMU, so Cc'ing the new maintainer:
> > 
> > Christian Schoenebeck <qemu_oss@crudebyte.com>
> 
> AFAICS this is about this old bug report:
> https://bugs.launchpad.net/qemu/+bug/1336794
> 

Correct.

> So yes, looks like this also requires changes to the 9pfs 'local' fs driver on 
> QEMU side:
> https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.html
> 
> Eric, Greg, would there be an easy way to establish QEMU test cases running 
> the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases for QEMU 
> which can only use the 'synth' driver, which is not helpful for such kind of 
> issues.
> 

I guess it's possible to introduce new qtests that start QEMU with
-fsdev local instead of -fsdev synth... I haven't looked in a while
though, so I won't comment on "easy way" ;-)

> Best regards,
> Christian Schoenebeck
> 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

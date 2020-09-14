Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BA0268739
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 10:30:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHjs3-000094-Nv; Mon, 14 Sep 2020 08:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kHjs1-00008x-RE
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n2obvxAlELiah7632T8a0GorVVVPet7zuZ/wxtJayl0=; b=lPyhZoDYNsHQ4u5xf7kwKewc//
 AEPSCQBA2sn2LKPwzI5gl6TsE6ZSOVoKX5UuYplDENiEUNWp/mbMSZQOZZy/kiXKF+PvGmQvSgBQ1
 Cxu8y3joC96i3xQoHiinfUHdgm0ctYWLdRE+pi6AzZZ6w8q2KXF89lQbZ6ib1izXIdFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n2obvxAlELiah7632T8a0GorVVVPet7zuZ/wxtJayl0=; b=dnPq/fIBUOnf1oz06QRoCxOe/K
 lRdxIXhSS16djtoqt5ZP1dzEiGr0XUjte6GTtMCEXCdJ+I0JMtWhgIZP96IOIH3aZYGvbsuAHEB+K
 3gX1kq63jk8qDw14O7rrwk8AXAPNJByj35InQUNSQgPkMF913I5HzgTouzuZ/aEsL0ck=;
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHjrv-008ri5-5Y
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:29:53 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.20.173])
 by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 7875E5ACBA04;
 Mon, 14 Sep 2020 10:11:13 +0200 (CEST)
Received: from kaod.org (37.59.142.105) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 10:11:12 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-105G006e148709d-5730-4a06-a133-7cccf876b69a,
 33559CD024D4F69900824C14C2AC4808F9346AFD) smtp.auth=groug@kaod.org
Date: Mon, 14 Sep 2020 10:11:11 +0200
From: Greg Kurz <groug@kaod.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200914101111.5b73712c@bahia.lan>
In-Reply-To: <20200914060036.GA18115@nautica>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-2-jianyong.wu@arm.com>
 <20200914060036.GA18115@nautica>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG8EX1.mxp5.local (172.16.2.71) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: 83ec8991-ebcb-4f23-9ce0-abdac57f350b
X-Ovh-Tracer-Id: 2711448452248279401
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgtdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfhisehtjeertdertddvnecuhfhrohhmpefirhgvghcumfhurhiiuceoghhrohhugheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeefuddtieejjeevheekieeltefgleetkeetheettdeifeffvefhffelffdtfeeljeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtohepjhhushhtihhnrdhhvgesrghrmhdrtghomh
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kaod.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [178.32.125.2 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [178.32.125.2 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHjrv-008ri5-5Y
Subject: Re: [V9fs-developer] [PATCH RFC 1/4] fs/9p: fix
 create-unlink-getattr idiom
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

On Mon, 14 Sep 2020 08:00:36 +0200
Dominique Martinet <asmadeus@codewreck.org> wrote:

> Jianyong Wu wrote on Mon, Sep 14, 2020:
> > Signed-off-by: Greg Kurz <gkurz@linux.vnet.ibm.com>
> 
> Just on a note on that mail: gkurz@linux.vnet.ibm.com has no longer been
> working for a while, probably want to update to groug@kaod.org in both
> first two patches.
> Greg, sorry I had forgotten to fix Cc earlier, can you confirm?
> 

Np :) and yes I confirm that groug@kaod.org is to be used now.

14a36a435343 ("mailmap: add entry for Greg Kurz")

> 
> I'll (re)do a proper review of the first three patches again in a bit
> but iirc they looked good on paper, will resend a mail if required.
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

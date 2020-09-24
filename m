Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2E8276C81
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Sep 2020 10:56:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kLN3d-00020R-EF; Thu, 24 Sep 2020 08:56:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kLN3c-0001zn-5z
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Sep 2020 08:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TbXg1pTz8z9Qd51SVmdi+X2f+kwyIbEhWIEhn4q5QmU=; b=QHffUkeQ/aKq96rmSu62WN1SP+
 xaQBbpE6SorcAykOPQYEl4ju8bP5JqdSLyQAz6H2CrHOB1afiY9hLiMWSMzXYN4J2EgiXeN77Buf8
 SHwzClRO12Swetp1v+FT6tg8p3PB/B/d9yVw4FxwzxUMJDvX8GOPd8qbzKLzvXexyCyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TbXg1pTz8z9Qd51SVmdi+X2f+kwyIbEhWIEhn4q5QmU=; b=aGNTtRbsj9Q8H+EUBrzm9m3uaD
 NYDQZdum+Yd21ISkUeHTELc9QZGcLGSmz8JnXA+JkCJ1/dsEkcCD/TOg+MOYdLFTU1ZCqR0V6G+zG
 H9MjXJdrsZV4NkwpTDHLFHPfKtKHFS8iKACQhQsAhQnO6m0cVhbuThxQMk2Z1z5xRwKQ=;
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kLN3M-005poJ-MU
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Sep 2020 08:56:52 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.1.237])
 by mo529.mail-out.ovh.net (Postfix) with ESMTPS id E56615E550ED;
 Thu, 24 Sep 2020 10:56:19 +0200 (CEST)
Received: from kaod.org (37.59.142.106) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 24 Sep
 2020 10:56:19 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R006c5bf5594-637d-4083-858d-063c7491bba4,
 85AEC8A2294FDACAA0F214F2A1981C2CEEF9973D) smtp.auth=groug@kaod.org
Date: Thu, 24 Sep 2020 10:56:18 +0200
From: Greg Kurz <groug@kaod.org>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Message-ID: <20200924105618.556b9a8d@bahia.lan>
In-Reply-To: <HE1PR0802MB25556D1AAF1336F4EE3CA8DBF4390@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <20200923141146.90046-5-jianyong.wu@arm.com>
 <20200923144953.GA1685@nautica>
 <HE1PR0802MB25556D1AAF1336F4EE3CA8DBF4390@HE1PR0802MB2555.eurprd08.prod.outlook.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG6EX1.mxp5.local (172.16.2.51) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: b77c1de3-76da-4996-88e1-519bcc2401cd
X-Ovh-Tracer-Id: 6859826660615493996
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudekgdduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgfgihesthejredtredtvdenucfhrhhomhepifhrvghgucfmuhhriicuoehgrhhouhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepueffteeuffekveffhfffueejkeeitdfgjedvtdelgfettdffgfffieeijefftdevnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtoheplfhushhtihhnrdfjvgesrghrmhdrtghomh
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [178.32.125.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [178.32.125.2 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kLN3M-005poJ-MU
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
Cc: "lucho@ionkov.net" <lucho@ionkov.net>, Justin He <Justin.He@arm.com>,
 "ericvh@gmail.com" <ericvh@gmail.com>,
 "qemu_oss@crudebyte.com" <qemu_oss@crudebyte.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 24 Sep 2020 08:38:01 +0000
Jianyong Wu <Jianyong.Wu@arm.com> wrote:

> > Given the other thread, what did you test this with?  
> Er, I just use Greg's qemu of https://github.com/gkurz/qemu.git: 9p-attr-fixes. I should have referenced it in commit message.

... which is a pretty old QEMU version BTW.

https://github.com/gkurz/qemu/blob/9p-attr-fixes/VERSION

2.6.50 aka 2.7 development tree

As said by Christian in some other mail, if someone wants these fixes to be
effective when using QEMU, they should maybe invest time to rebase against
the current development branch. I personally don't have time to do that but
I'm available to answer questions if needed.

Cheers,

--
Greg


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

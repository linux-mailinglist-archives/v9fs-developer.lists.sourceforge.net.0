Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE4F26C2A0
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Sep 2020 14:17:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIWNC-00049Z-Of; Wed, 16 Sep 2020 12:17:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1kIWN9-00048q-Jj
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Sep 2020 12:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kHiJbOm2odiKn07o8JZXIc0k7r23187PR4IQPCAhtuw=; b=S7nM0fwNm71DtmZ33tCcBRFlae
 WKooPFl/uao5C2+bSGn+xKF+D4bT5cd8F5YAVM8xqQfD9sTVcjWs6eMm/PvGin3hvUGKlCbITl8XY
 h2qslfLKiGwHWttPAvofPbUHSR7777W/F8lQ/i/Mfj7YFUqktQzfWLS/JjuxmlCHqaxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kHiJbOm2odiKn07o8JZXIc0k7r23187PR4IQPCAhtuw=; b=Dza/O/q8UGvn3An//0lXq0lNmD
 A/vdhjXOVLMW9gU7Pcjj/1O5g1QzA40iHO29/75EygbtrrpFLyzeRAG4DYnCNLZYsqP8rwx/6mZrJ
 6ZdvSTOoCdHY8JjoRJApl0iNhXqSZuoOyna7yaT2zwz9CVWwIlx1Q85To/jM0thkA04E=;
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIWMw-00CO87-S8
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Sep 2020 12:17:15 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.4.12])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 4E301623C91A;
 Wed, 16 Sep 2020 14:16:23 +0200 (CEST)
Received: from kaod.org (37.59.142.97) by DAG8EX1.mxp5.local (172.16.2.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 16 Sep
 2020 14:16:22 +0200
Authentication-Results: garm.ovh; auth=pass
 (GARM-97G002e1fe5b2b-4e4d-47ab-b857-58b54de75c1a,
 341A1E608B89118414D473E9652EAD3A863CA3A2) smtp.auth=groug@kaod.org
Date: Wed, 16 Sep 2020 14:16:21 +0200
From: Greg Kurz <groug@kaod.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20200916141621.5de7d397@bahia.lan>
In-Reply-To: <20200914174630.195e816f@bahia.lan>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <2828347.d8MXItvaOC@silver> <20200914144325.7928dbd3@bahia.lan>
 <2037087.W39pGsgtbe@silver> <20200914174630.195e816f@bahia.lan>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG9EX1.mxp5.local (172.16.2.81) To DAG8EX1.mxp5.local
 (172.16.2.71)
X-Ovh-Tracer-GUID: becf4751-b578-4efe-927e-fab0f5bd1e5e
X-Ovh-Tracer-Id: 150589112631335215
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrtddvgdehtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgfgihesthejredtredtvdenucfhrhhomhepifhrvghgucfmuhhriicuoehgrhhouhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepkedvgfeugfdtvdelfeffueevfeegudekhefftdejvefgveeileeludffkeeuvdffnecuffhomhgrihhnpehnohhnghhnuhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghnhedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehgrhhouhhgsehkrghougdrohhrghdprhgtphhtthhopehthhhuthhhsehrvgguhhgrthdrtghomh
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [79.137.123.220 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [79.137.123.220 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kIWMw-00CO87-S8
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
Cc: lucho@ionkov.net, Thomas Huth <thuth@redhat.com>, justin.he@arm.com,
 ericvh@gmail.com, Jianyong Wu <jianyong.wu@arm.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 14 Sep 2020 17:46:30 +0200
Greg Kurz <groug@kaod.org> wrote:

> On Mon, 14 Sep 2020 17:19:20 +0200
> Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:
> 
> > On Montag, 14. September 2020 14:43:25 CEST Greg Kurz wrote:
> > > > So yes, looks like this also requires changes to the 9pfs 'local' fs
> > > > driver on QEMU side:
> > > > https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.html
> > > > 
> > > > Eric, Greg, would there be an easy way to establish QEMU test cases
> > > > running
> > > > the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases for
> > > > QEMU which can only use the 'synth' driver, which is not helpful for such
> > > > kind of issues.
> > > 
> > > I guess it's possible to introduce new qtests that start QEMU with
> > > -fsdev local instead of -fsdev synth... I haven't looked in a while
> > > though, so I won't comment on "easy way" ;-)
> > 
> > Makes sense, and I considered that approach as well.
> > 
> > The question is the following: is there a QEMU policy about test cases that 
> > create/write/read/delete *real* files? I.e. should those test files be written 
> > to a certain location, and are there measures of sandboxing required?
> > 
> 
> I don't know. You'll need to figure out by yourself, reading code from
> other tests or asking on IRC.
> 

Maybe Thomas (added in Cc) can give some hints on how test cases should
handle creation/deletion of real files ?

> > Best regards,
> > Christian Schoenebeck
> > 
> > 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

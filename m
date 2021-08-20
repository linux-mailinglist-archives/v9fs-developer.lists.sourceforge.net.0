Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8853F310C
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 18:06:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH72B-0003Rw-GG; Fri, 20 Aug 2021 16:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <david.laight@aculab.com>) id 1mH728-0003Rl-4o
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DYGxrCdvk2MFnyIlbV/9ACvSu7JezY2lZ0DVlVGA0+Y=; b=E8MABahp8wbD5iLs4W0uSCfIXT
 YmQ7NJBK/jiRV9QmntFmSbueytoKqjlh8VZB6D3ajo+rnw40Z0ffVrQ32jIKIhksEnaNDYz06kCMM
 VHTj4U+e3so9Lk4uetlUz8UoekHUHzzfytMgbfZ9LInhH707P0SEvpq4+MYg8xp2MWa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DYGxrCdvk2MFnyIlbV/9ACvSu7JezY2lZ0DVlVGA0+Y=; b=fWQHvQTBX1x41bPrZh6G0P9vDn
 9zhev44pKBwgofuYd7IZ9TbbdWNv7eNA/j/xP0a8p2PCItgu8XAT/0BhuiS9vi/f89HhEDDrbeiCD
 6gcj2ODmz7Tz5aYuTP0u2mi2kDd0YuTkCpTeMKwX0TKh56Tcy464wCkg87qyAf+3N1VQ=;
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH722-0007Bk-PF
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 16:06:16 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-131-DAGKzonBN4SYNa4fYJu3Dw-1; Fri, 20 Aug 2021 16:49:23 +0100
X-MC-Unique: DAGKzonBN4SYNa4fYJu3Dw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Fri, 20 Aug 2021 16:49:22 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.023; Fri, 20 Aug 2021 16:49:22 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Jeff Layton' <jlayton@kernel.org>, "torvalds@linux-foundation.org"
 <torvalds@linux-foundation.org>, "linux-fsdevel@vger.kernel.org"
 <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v2 1/2] fs: warn about impending deprecation of mandatory
 locks
Thread-Index: AQHXlctJ2CxbK7rVbku/gUAYi8DQHat8icSQ
Date: Fri, 20 Aug 2021 15:49:22 +0000
Message-ID: <c1318459eaab436aacb225982c49c4b4@AcuMS.aculab.com>
References: <20210820135707.171001-1-jlayton@kernel.org>
 <20210820135707.171001-2-jlayton@kernel.org>
In-Reply-To: <20210820135707.171001-2-jlayton@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [185.58.85.151 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.58.85.151 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mH722-0007Bk-PF
Subject: Re: [V9fs-developer] [PATCH v2 1/2] fs: warn about impending
 deprecation of mandatory locks
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
Cc: "bfields@fieldses.org" <bfields@fieldses.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "david@redhat.com" <david@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>, "w@1wt.eu" <w@1wt.eu>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "luto@kernel.org" <luto@kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton
> Sent: 20 August 2021 14:57
> 
> We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot of distros
> have disabled it. Warn the stragglers that still use "-o mand" that
> we'll be dropping support for that mount option.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/namespace.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/fs/namespace.c b/fs/namespace.c
> index ab4174a3c802..ffab0bb1e649 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -1716,8 +1716,16 @@ static inline bool may_mount(void)
>  }
> 
>  #ifdef	CONFIG_MANDATORY_FILE_LOCKING
> +static bool warned_mand;
>  static inline bool may_mandlock(void)
>  {
> +	if (!warned_mand) {
> +		warned_mand = true;
> +		pr_warn("======================================================\n");
> +		pr_warn("WARNING: the mand mount option is being deprecated and\n");
> +		pr_warn("         will be removed in v5.15!\n");
> +		pr_warn("======================================================\n");
> +	}
>  	return capable(CAP_SYS_ADMIN);
>  }

If that is called more than once you don't want the 'inline'.
I doubt it matters is not inlined - hardly a hot path.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

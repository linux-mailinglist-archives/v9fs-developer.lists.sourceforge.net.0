Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 820EC32766E
	for <lists+v9fs-developer@lfdr.de>; Mon,  1 Mar 2021 04:34:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lGZKB-0005nF-FQ; Mon, 01 Mar 2021 03:34:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jisheng.Zhang@synaptics.com>) id 1lGZKA-0005n8-23
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Mar 2021 03:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V9UrPx4Wh4OuJqMQDZMx4AxT8/SrDq781fGU6YE/XNk=; b=Honopfu/g54YeUUYqFUZN2U2Be
 xdgAe0t/qgLxobTdtxPCQggzAbZDCrDhz4S4AWzNoWeCPdFvboNdeEdNiChsx6NVhILkCsjegb25a
 grJAjs90IVm/hLGJz5QBiXhP1AOTeDEgtgNuNpr9CmLNbzLIjbWD8kyRDkfAvpkRQAv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V9UrPx4Wh4OuJqMQDZMx4AxT8/SrDq781fGU6YE/XNk=; b=T7grWdZrZ+0IY9/vOJ/Mzs+jcX
 lgOrle+AVDMapsxKT0TuZRdYeLulfSZnMdVKBJpc43CqC3f8Fxvshyq+Ci7VkwK9gXQM7LdDr0bEm
 IafRPuqq/EJdnBtri90gAcjzMsv5D+Q6vedzRFA0B+WuwkdDY55GnbYiAaPbb3er/slU=;
Received: from mail-dm6nam11on2056.outbound.protection.outlook.com
 ([40.107.223.56] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lGZK6-000500-7e
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Mar 2021 03:34:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=frIXVpxsmUVsHkdhIKwC00ytDIeIiRIy1mKXTEFWa/b9DLgV55xP6QeMlr4lOxaVC4GOl0yar9oZOkN4XaCUig5MpglP0U2PgvxVR+4jGyEQ3nXRG3ZOAOX9rzvrqkM4hLsCuvMXt0uF8/Mrb+mgBUu6SFNa8KgBbY1NGyX4KqNwmf2BZcDzXorPXiwSshPslCngKTtpY1Rz16TBHeR97u9g9kj1C92YUVipDPB2sLrpzR3y+AfAZbyymPzxpVP0g6/SgvzWoU8ufNNzYfsFNK3+5FVY04OeT425rDv9LS450715kphMhmwBQ2YuFgK4x6x2aNUKTFoaxgdsfKj5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9UrPx4Wh4OuJqMQDZMx4AxT8/SrDq781fGU6YE/XNk=;
 b=OhQhm9K4gMbXZFBcPNhmVOgiAiQdUnMA4xvIMv9o1q6EIXZT7QLCDq+CrqgbevK0UisdEozJ+SVxjUeE6Sd7Vj4nBpZh6fKIAsNpk8eULTiZ6/xk7hREViG9rwm6mciIiGIxF6WLCISgUIEk9FWPKlLVFpZe/+eP4LPTHKSprN4mlkTt8Osn9GLNqaEi0r1oAI4NPOqR/8U2aCedmdHxHq378j/+EKhAkPZxUeingEtweg/OTV4j52/xlMNPJrnwhB+ivhNHjzfVyC/IPX2v5+FiRQY+9+u7Wowfs9z4A0W3VlSA7U/uxYTFiKqxLFFCHrZNZwwTJ+ijKtU6SZniOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9UrPx4Wh4OuJqMQDZMx4AxT8/SrDq781fGU6YE/XNk=;
 b=AXGtntmIn7lGCkM1mcepNnG4K89OGca/iz/+pVfZQV1tF6p2dCsYL0GToJB9BRolCkRW5eWE49m4snnWOW5KNc3Ukwihtq0ut172zdS7j9pjluzbTYt0gMA7R8l54aGzWUxYMJtgbeg9cjjxns4x7FPfGgfI/0oaO/2JSZSflb8=
Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none;codewreck.org; dmarc=none action=none
 header.from=synaptics.com;
Received: from BN3PR03MB2307.namprd03.prod.outlook.com
 (2a01:111:e400:7bb1::16) by BN6PR03MB3217.namprd03.prod.outlook.com
 (2603:10b6:405:3d::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Mon, 1 Mar
 2021 03:02:08 +0000
Received: from BN3PR03MB2307.namprd03.prod.outlook.com
 ([fe80::246d:2f3d:93bf:ee56]) by BN3PR03MB2307.namprd03.prod.outlook.com
 ([fe80::246d:2f3d:93bf:ee56%4]) with mapi id 15.20.3890.028; Mon, 1 Mar 2021
 03:02:08 +0000
Date: Mon, 1 Mar 2021 11:01:57 +0800
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20210301110157.19d9ad4e@xhacker.debian>
In-Reply-To: <YDxWrB8AoxJOmScE@odin>
References: <20210301103336.2e29da13@xhacker.debian>
	<YDxWrB8AoxJOmScE@odin>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
X-Originating-IP: [192.147.44.204]
X-ClientProxiedBy: BYAPR07CA0033.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::46) To BN3PR03MB2307.namprd03.prod.outlook.com
 (2a01:111:e400:7bb1::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xhacker.debian (192.147.44.204) by
 BYAPR07CA0033.namprd07.prod.outlook.com (2603:10b6:a02:bc::46) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.28 via Frontend Transport; Mon, 1 Mar 2021 03:02:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 034d86b4-f245-4d9e-85a1-08d8dc5e669d
X-MS-TrafficTypeDiagnostic: BN6PR03MB3217:
X-Microsoft-Antispam-PRVS: <BN6PR03MB321710C982B56620903C080AED9A9@BN6PR03MB3217.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dun0J07LarLT13nTxf7Q+SEqEPhAID/qkvM4g8YKZLZpTShmJWPG7VN6nH831FhuiHvBk6ahNL8IKSW27HpiJ365wYe1lapFLMDR0Wlpa8RyYxIg0vZGfDynupgBmqiJ2x2AZfcaoQOGxrV+rtVwLP0zegWIG3+2ligZEzbH9/hrrpFfzLywL51RwLDPWwz7hdl9a5I+BAvms8fGve2yCGKBg/ZDgvZFOwjckgIblg9WIjUGasDZbf7nSOw/AgxfKXpUT7uRtcMqtB2B50p5XP4YiuGXKp2MNjw1hlajnNfBKcfffDsoWOptr1P43iGKZwqegJagPdQ4IUNrp/8qCFFnsMjfvMdM+9rhVlCnqoES62C91DFKF8k1cfG/J9aG1r3KVYso3U9ytMHGpQEPoe6iHZZtR1HzCzbhIimH8Vu3qQlyD96E58jWvnyzjSS1kQvGqS0qIwtuquA2xGgdaZx0WzVjDbPtnc+ojraECDEwUJh1mvjT8iqGg0XrXCN0r67jsjaiQxek793ij+SNlQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN3PR03MB2307.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(346002)(39850400004)(136003)(366004)(6666004)(8676002)(1076003)(54906003)(66946007)(7696005)(26005)(8936002)(55016002)(83380400001)(2906002)(4326008)(186003)(66556008)(6506007)(478600001)(86362001)(6916009)(5660300002)(52116002)(316002)(956004)(66476007)(9686003)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?WjdfG8lOXamJWCwb7g94o8XTWQRfxAhysO9lwThr7937OdCvbXzzc7g7BXPa?=
 =?us-ascii?Q?IX+BMzZLjtSfq+YpQPK0mrSXt1k3SKU2uwivUnlupwdQ6yRf3Cph64KsYzyv?=
 =?us-ascii?Q?NA3GtJiis+jqx/3nsN+5C1T0Pur9UYIVbii6yqGH/ziT9o5ad7HHArtUHQSN?=
 =?us-ascii?Q?89lRBg534B6iS20zQdffPq4J6IeqyDTvJ7GgDUGA7h1vJyyNsD25BBTJsjqz?=
 =?us-ascii?Q?rx45woJKrPVWsCKzqV6TL0+16m66f6sItq2scbEmAQRx77Z6eYq4Ci/Ql4Az?=
 =?us-ascii?Q?24FvGKX4GNf1eJO5BKOGU6A2+GME+99jOhdeboMhzuTgn3svocKoi8wPKtEu?=
 =?us-ascii?Q?XZ+gxsf10s9QTOKlogVa1c+4SF6b5xHiN4VTdZSrfCWwzk2TdYlVQjHO0q5J?=
 =?us-ascii?Q?ltWZyRyF7/HH1lzrvatBpZPg7dWoFZyXsanS7OxpGu5YE6TsEUF9XJojxNrj?=
 =?us-ascii?Q?8TGP2OsXpc828/F5V4N1LuJE4PrZEgsmR2/4TJAyskv7OxIg1LxUoVfSuxdU?=
 =?us-ascii?Q?81F/Jmq51wzqFcZ/73eQqRUXtRYn8selLPJqZTr05vk+cV1R4OY/3Xh6EciL?=
 =?us-ascii?Q?9JX6ZuDQ7oGqoJ8Z/6fV03QfiNZGeZYBMcENLMyaB03p3exKUWJeUXYhWtRZ?=
 =?us-ascii?Q?EAPOut61zDHZPSBAiLo1TTby/e30xxq82AknR7y/jrVi9fydm18bii3HVerY?=
 =?us-ascii?Q?rpS/xJGX6VSoQWKpVG4p3xHC0z5hnIoBrpu9K+CoHuFTgZb0eotjYv4drnP9?=
 =?us-ascii?Q?iEASZnFf788bqhf/wDnEl5mIClbq0OenGg0zUngXXwRRU4K/DqSWgIcE3L8w?=
 =?us-ascii?Q?wzUgYs3GJE1NGarDzb03TFLWdJyeEmve/KEnHeNPlU5NA1JpfiJKCJxPmK1S?=
 =?us-ascii?Q?vrgE6rn4gAepcEwOGYnEXj+RYfu/lDuPzIHPpebkXtIiGCTqyJRqUJURqWPW?=
 =?us-ascii?Q?pIS32crKfA9xMh+MDSLr6ysrTyxlACQBlKW4mpc2GN37Qyq2KVYqmGLwIgDj?=
 =?us-ascii?Q?7Gr8+ZQIhOMSfIa6Ta3kvDzQt3+S7PgzGOQ/xpIG4RbPmDo+WwCZD3KHhBUt?=
 =?us-ascii?Q?wyYl35p1FcNnChkGYKWklb8OKU25nWdhcw/VBJDmvmSdSD0KsT22fbH5CCFR?=
 =?us-ascii?Q?P/q9AxJJXfJ5d2UezYS8NknmWwMIhKQ1iBRAf1qoLi/1L/igtLd7i+b9uvaS?=
 =?us-ascii?Q?pVpUHTWLBhG4Hm/XYl8L2czAibyGc3rZGxk12K3APVQLETh8JGFgHEjh2Hgz?=
 =?us-ascii?Q?njH12vuEwn0drTOg1G6AKCgN2xLJxkYN/kWvg0tZyyw/SA7F8jtnGo2H0N/l?=
 =?us-ascii?Q?kyDAVhQ5xSNe/z33CzCancWr?=
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 034d86b4-f245-4d9e-85a1-08d8dc5e669d
X-MS-Exchange-CrossTenant-AuthSource: BN3PR03MB2307.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2021 03:02:08.0700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 07a+QjQNoOuz8Gt7JFqRooLAYpLFqXt2oPJeCfaW5RwX2rXe+GujiX2AePz5G3UR3RCOHw1phDpXFH/7W+jgDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR03MB3217
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.56 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lGZK6-000500-7e
Subject: Re: [V9fs-developer] [PATCH] net: 9p: free what was emitted when
 read count is 0
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 1 Mar 2021 11:51:24 +0900 Dominique Martinet wrote:


> 
> 
> Jisheng Zhang wrote on Mon, Mar 01, 2021 at 10:33:36AM +0800:
> > I met below warning when cating a small size(about 80bytes) txt file
> > on 9pfs(msize=2097152 is passed to 9p mount option), the reason is we
> > miss iov_iter_advance() if the read count is 0, so we didn't truncate
> > the pipe, then iov_iter_pipe() thinks the pipe is full. Fix it by
> > calling iov_iter_advance() on the iov_iter "to" even if read count is 0  
> 
> Hm, there are plenty of other error cases that don't call
> iov_iter_advance() and shouldn't trigger this warning ; I'm not sure
> just adding one particular call to this is a good solution.

Per my understanding of iov_iter, we need to call iov_iter_advance()
even when the read out count is 0. I believe we can see this common style
in other fs.

> 
> 
> How reproducible is this? From the description it should happen

100%

> everytime you cat a small file? (I'm surprised cat uses sendfile, what

it happened every time when catting a small file.

> cat version? coreutils' doesn't seem to do that on their git)

busybox cat

> 
> What kernel version do you get this on? Bonus points if you can confirm

5.11 and the latest linus tree

> this didn't use to happen, and full points for a bisect.
> 
> 
> (cat on a small file is something I do all the time in my tests, I'd
> like to be able to reproduce to understand the issue better as I'm not
> familiar with that part of the code)

Per my check, it can be 100% reproduced with busybox cat + "msize=2097152"
mount option. NOTE: msize=2097152 isn't a magic number it can be other
numbers which can ensure zerocopy code path is executed: p9_client_read_once
->p9_client_zc_rpc()

Thanks


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

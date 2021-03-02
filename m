Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668532985F
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Mar 2021 10:38:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lH1U9-0004AQ-2b; Tue, 02 Mar 2021 09:38:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Jisheng.Zhang@synaptics.com>) id 1lH1U2-00049W-7E
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 09:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MHZZpJ8WFuwTUpdJ1m6/svAsMQlLwT7cenar47oTsx4=; b=nPtnAyVJrotdB0LvVE2aC50H7T
 L3xkKnsIbne+47CEYCXLiDZoaItdMChEu2vjPfExYEiTFxL4Fx+IIky8tVXcnIGxioPCH3DXi+fcY
 Cv+6v84UMOjaGJ4aQ1/h5C5UApVhHFG7bSGiPB2ZpYakyeLf4E2YixO676sP3WWYw8zI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MHZZpJ8WFuwTUpdJ1m6/svAsMQlLwT7cenar47oTsx4=; b=Up8xlOmdgwMJLKulyIkwtaauWG
 /Vy36vKnlOBdqGOpxgZnoh3jnvME9JLIZWVRXg4H7F0SbbA7vN4cEuObNwTgUZN/9Qa986BKX0Gp8
 rwdEsacvYAqeMQD2KQXKUmcQCA54uoDT/r2eBMU8zX4zR9JJDCcauxt4QOZh46C0g2QQ=;
Received: from mail-dm6nam11on2049.outbound.protection.outlook.com
 ([40.107.223.49] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lH1Ty-00B39i-7q
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 09:38:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkeWU49bUO3/RDlM9rFgoxz/CL70oxBYpPy2R9MOR3M5KYy7kFAmaszmSecnx4gpoibDSYcwUbj00oIcadCzIZMHCKkSnmH7dLHiYN7IJQb+PL0r/r0u5yAkYLgTmxiImvyGUX0zKY/HMleKT9qfWEaBPA/HtOLBsx8UpoEeVG6+VIWn2fvg3oZIYoev1+zSN4VWVOHW8HQdx89K9F/v8/dMe2jEkDcs7sg3jpgoiP+ojt2qZl/tL+Z6yDsXpRW6p06lB0vaUokCDqZ9+X15rn32qbCW27lS4HWsOYI8GMU61Pv9UM5T4AovolTpt84F43IQR+Urpbh3FGf5bUqiww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MHZZpJ8WFuwTUpdJ1m6/svAsMQlLwT7cenar47oTsx4=;
 b=GRjvmcyuNYmHdfENl1JQqVyVOT2pIpXdhoyaMpu7PxV5WTikqRwvnjO5AhfDsszL3ztwpKmDug+wLsfyYwPvxlYuH/RAafHfBtbFVkdpbEu11NxZodo3tGoA8ET3Nvx3LjzL7ErEx6BNmd/IeBK5/Ynxld/JfR9BMO5uWguP+tZ3yK9+kCvzwi45WugJXX02hI8yiWg4mEZ1eyIQ2tokSptkbK73ZFtDQB/zBAmtYsXtWfEnB6uKxa3OatUbp8BpNdVPO2zKxiOkrQj9fgDMMjxF/h2u30WblESupllObOLcVkbpZHv/8hJ2VEuwoyQp2jGBAQREG42osyyGbS0stw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MHZZpJ8WFuwTUpdJ1m6/svAsMQlLwT7cenar47oTsx4=;
 b=gO3ignMIM1hg29qXLrNCsXnfDjrHiRPrW46kaCR21slsyTR62hkrT35TJez3dRESCMjKMbqwxSQy1ZRZdBugHGwiCAnnAT7JWmHD/Vuc2LtywGFHmGsVz51a6UP63jjaE3SX5KR/3d3VPhJTLYTqt/IxSnOO+rpxvLwqGyWm+no=
Authentication-Results: codewreck.org; dkim=none (message not signed)
 header.d=none;codewreck.org; dmarc=none action=none
 header.from=synaptics.com;
Received: from BN3PR03MB2307.namprd03.prod.outlook.com
 (2a01:111:e400:7bb1::16) by BN8PR03MB5074.namprd03.prod.outlook.com
 (2603:10b6:408:78::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Tue, 2 Mar
 2021 09:22:16 +0000
Received: from BN3PR03MB2307.namprd03.prod.outlook.com
 ([fe80::246d:2f3d:93bf:ee56]) by BN3PR03MB2307.namprd03.prod.outlook.com
 ([fe80::246d:2f3d:93bf:ee56%4]) with mapi id 15.20.3890.030; Tue, 2 Mar 2021
 09:22:15 +0000
Date: Tue, 2 Mar 2021 17:22:06 +0800
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20210302172206.40db2f0a@xhacker.debian>
In-Reply-To: <YD3ybcx1i8Rtbvkp@codewreck.org>
References: <20210301103336.2e29da13@xhacker.debian> <YDxWrB8AoxJOmScE@odin>
 <20210301110157.19d9ad4e@xhacker.debian>
 <YD3BMLuZXIcETtzp@codewreck.org>
 <20210302153940.64332d11@xhacker.debian>
 <YD3ybcx1i8Rtbvkp@codewreck.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
X-Originating-IP: [192.147.44.204]
X-ClientProxiedBy: BY3PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:254::21) To BN3PR03MB2307.namprd03.prod.outlook.com
 (2a01:111:e400:7bb1::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xhacker.debian (192.147.44.204) by
 BY3PR05CA0016.namprd05.prod.outlook.com (2603:10b6:a03:254::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.9 via Frontend
 Transport; Tue, 2 Mar 2021 09:22:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f5dff96-e82a-4120-37f9-08d8dd5cab57
X-MS-TrafficTypeDiagnostic: BN8PR03MB5074:
X-Microsoft-Antispam-PRVS: <BN8PR03MB5074FCAA490D53CE55EF0180ED999@BN8PR03MB5074.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZB9iW0CrP1GC9Zh2eSEt5HX7+4RzmmfcZvECw9YxEcRAM3Aezwcl7xvTgh2N7sB7sYpMIEWQWuQIB78Vc0D4+WpqxqX9L5TisRkBwpDFSncw+0q+XOFnS4NXSL8aeHCDaqXiomUvz5YLcrTw7WOg72kPmAdXB+eWpS+gNv/0cMRIMlepK8dWOL0SIuUk81YMe7DPUyVziAcntaYg4x/jf495G8jnRKb1cv0iaQkKN1o7zkOsnkwU+qKd2eD84JpNYdseYNxp3dezjTjmXr/unvqnzshQbpk5Fe1Vpgr0SCp9RSKn+NSoInYyNHA4smXeDPUhxPwhgDy33/MT+qwqwgzlDPyham/71g7EgyrEDdNgFSiBOnv+ylZj/u1aXWY8iiimSwjJ6oZDQsVjyZwLAunu7McMrciao61B6bE83nviEjKbrwRwpdhYpfxPQpbcZexle0MLWJJxiH2ATeeVR5QTKgFe+xZdFv8u8LpilhAuGzyMGc+k/EAPX8cf6GfMR/fkMV9gO7ttUsx8nU/6bQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN3PR03MB2307.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(366004)(39860400002)(346002)(55016002)(186003)(478600001)(6916009)(5660300002)(6506007)(2906002)(4326008)(6666004)(4744005)(16526019)(9686003)(66556008)(8676002)(86362001)(8936002)(316002)(7696005)(956004)(66476007)(52116002)(1076003)(26005)(54906003)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?KxsNb5/+JytUZGnTfND7pr/vm77LCIUxPVIlPASqSk5C7RmGN/CGmwuA84Xe?=
 =?us-ascii?Q?+r4sQ308KLsczcFSdRl3+7Zf4eG4eBvfqlka/y79H13yyM8YUxYitL0kWjqN?=
 =?us-ascii?Q?Vlpc8ng7NQunWBfDBm/DHv1VpKWEsolGkmgm/IQH1cLCl4rLXcluu9s+cm/d?=
 =?us-ascii?Q?2eLzdAr98iuReG+gK/irU6RFHWL24FKMIuCKOg5HAhdEuMZsMAIv7uVjPkpF?=
 =?us-ascii?Q?RHrhWPx4RU+59rv2zneqaAH9/H451SKhM5x/OTcHin9OBTnMGpcDtHWzd5Zy?=
 =?us-ascii?Q?Vz0Z66FW20YXvM+xa12GKhMIvSjI5Ejikb1/g01VnIg1FeuPgek1Dfj/va0X?=
 =?us-ascii?Q?rLisQBFFYfDqCJ8mq8352EZevFgwgQmlmtx5rJtF4or61lGDQaXEBUHyT2QO?=
 =?us-ascii?Q?7X2n4BeUp5mUrQ/kxSGSPsH1GjQ7K7yZ1pQ2Bm3bf/28byX6BUgp861zwx2s?=
 =?us-ascii?Q?kgil+vGuTymwTlABOUMZUPO+6rnFCNT8kyH0euU8tVbgxcuT/nSKhd7vCDJj?=
 =?us-ascii?Q?2q1l/HgiuHiFEfQo9gt6+634vUth84Kt3+FIzGsOVLDOB+ccIL1wQNVN/JII?=
 =?us-ascii?Q?AB27naoE0RI6lmEDXLzLB6q5/hZZ+ZewHDilL/vf9Rnd7PIGPSz2PmgfyNuK?=
 =?us-ascii?Q?KaP8cgwffDOEDXO4wBIAzU0/wOB7hWrHSD2hwVTD6h1fZRFnQas9Rj0lpoK9?=
 =?us-ascii?Q?wAj6FPjZNKqSPhqPClp9HQ2hxWZVlSNNbYTGVFPF9i5qca7iYyZKdTncmC2W?=
 =?us-ascii?Q?0ujFeQEx80OmxxzMO2wO46Kl18NP8vNUyESgEg14IJJCNe1nqKjvdrdc+gQg?=
 =?us-ascii?Q?kX9BNDWfZZ75zjMB6oIFqJIhNcnzvx22jf25ED64V6+xWE3BzIptgQRBOhYH?=
 =?us-ascii?Q?5ZID5WFXDlcTPzyUE+5mgEPbLsktAlzRCzb1FPtuwRfeYyMMGZaDF0aPEPUx?=
 =?us-ascii?Q?GuE8GjoirhDvCIk6Q2kbatw9VcXOV9RiO6YJy1A2clkYeYmUQ+k04qF0X8Uv?=
 =?us-ascii?Q?90CBdodaf8X+sirCsl5UFl3drsJ8oxDda6zFwetJwTZ8FBuvSeQKOww9R9zV?=
 =?us-ascii?Q?eXmPkSLPdD/JbanIKNWRWZaYKGqck4dQom8cxuqxBW6lPVAzHLJgdHhrZt/B?=
 =?us-ascii?Q?AaqdjnsTipb4Dtc5PST0raWgj3stD9Ff2rfdy+8j9LM4+Gd2QqadMORhqKkY?=
 =?us-ascii?Q?98PRqipWXlokyidUXA4M8XfSWrMVloHz71OEEy2mdl42PWXswrSjrZcUiZqE?=
 =?us-ascii?Q?HWVaj6AO2bPwkTrNaGee8HQF11ao5nF9NhedUQkYdpHSQed1O7wq4kSBby/L?=
 =?us-ascii?Q?Q0iDX+j5gyTPH94Agg7l9iro?=
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5dff96-e82a-4120-37f9-08d8dd5cab57
X-MS-Exchange-CrossTenant-AuthSource: BN3PR03MB2307.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 09:22:15.6423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4TZ0ZwLYpwzz1ayiM9zhrGckXqUMCczIdRxlUrUTYIC1hIsFEj6J5DAzcEF2ceVJVsSVXw+DCos7EjaiF7dL+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5074
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lH1Ty-00B39i-7q
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

On Tue, 2 Mar 2021 17:08:13 +0900 Dominique Martinet wrote:


> 
> 
> Jisheng Zhang wrote on Tue, Mar 02, 2021 at 03:39:40PM +0800:
> > > Rather than make an exception for 0, how about just removing the if as
> > > follow ?  
> >
> > IMHO, we may need to keep the "if" in current logic. When count
> > reaches zero, we need to break the "while(iov_iter_count(to))" loop, so removing
> > the "if" modifying the logic.  
> 
> We're not looking at the same loop, the break will happen properly

I was reading the old code because I switched to linux-5.4 longterm tree
for other development ;)

> without the if because it's the return value of p9_client_read_once()
> now.
> 
> In the old code I remember what you're saying and it makes sense, I
> guess that was the reason for the special case.
> It's not longer required, let's remove it.

Thank you. patch v2 is sent out.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

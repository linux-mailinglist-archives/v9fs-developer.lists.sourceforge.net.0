Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2495683945
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 23:22:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMz1C-00060j-0T;
	Tue, 31 Jan 2023 22:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <simon.horman@corigine.com>) id 1pMz19-00060c-8U
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 22:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nicedbt9xaewA+MccfCwdiNSVqYjxS13T8hHtnMmJK0=; b=LlFxQ3OatrfCiaC+i0rhnWhd1R
 kOc/2OvoBMRz06B+kl4Hvj5gujbhMwlJyBtvwutqpuOFgsbNrWicSHS+iEjy0y3xf7wmhtuETUlqs
 /0wr4gmyaz3xF6eOtg3A/iolCnByc/w4rDGUfTOsAX9Cd0VUjCgMvyo5Fht4H1Pt2FV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nicedbt9xaewA+MccfCwdiNSVqYjxS13T8hHtnMmJK0=; b=PMbHHYE8Xaw02RIh2yWS5Q3jkj
 68ZrD+1Osgq5FQvbYLDjQbhRJ+oZ4oFwo6MK6ssckZWagKd6I1fhQ45tqrVQbPrrscw8WtmkVwlDC
 52W992j/+2bOPFt8I1tX2ufA3tdqpDnQFP5LME7b5Zz6dTARZIGBRKYbfFcW18n0e9U0=;
Received: from mail-mw2nam10on2109.outbound.protection.outlook.com
 ([40.107.94.109] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMz14-0003ri-2w for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 22:22:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+u6Xo2oev26IZe1991wc0GMDN7yh6NbBUkDaK27MAlzOSIntdB0t1VLDmDu0ycCtbtUI8728b9fAaSBRvg/El76L6y7G2e2BuluDx2QJfHYzPJxXPGlUe+n6SRcemSCJK3RUiYHLwhAiPJa7/SzdJMf5Aqj2VQR6bvlzWBBIM9DWHlwcsY0HvVmEtyVRL7k5XCdFZeMkCuo/O35z/hDIotSD50d6BaaxqMch/WblTpg8tvwE5hMdH/ypMmo9l+dD6iRYEqrXrVG88ek4EXU6O8kDI+7L3u+W2b7R3H+2AGd/9QaU+E/IK/Q/ICidSli1za3uq3e+R5+G8dk9dwdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nicedbt9xaewA+MccfCwdiNSVqYjxS13T8hHtnMmJK0=;
 b=X8AVJ0mbHXYDwuZyFLDEPXewRcrYQBBsS8MWKvfbCm1idO+Ku9bOp/DHIvaYAYwOwo4OjTXOJ49U3sOJMJPJvQiYANhZ5TS9Ry9RVFUDlINRQbWR1m5EC1CsTh5q9KoVycTiIQkYqKil1LK90hd92pNl6yPiOisGv+YqFBVCGsJuEsSJPPxJOAUYyp+Yh2f4pMpM2Eno71EawK4BwnC7qAsCatE25OnNtmqNg++N4HDPhMsBH3IcbLM0OWqvh/NC0QRDnfLpJNEGj9PXLTEf03wTl65GAkaTYd++M63r4aJmK0KulkCNfoQtbvoydqnh4AxsOIhZMYcCSpOulGmIUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nicedbt9xaewA+MccfCwdiNSVqYjxS13T8hHtnMmJK0=;
 b=avgibDP2G5+xlm7emmWUOh/awqKAjWAU26f+XeUr51a18xcUEOE8CzWxqD5uxQ0M+oZosqEb58XE6WdQSWzMdLBbM569Trna4u6PP0dM2h36U8mqOyzhhWsfSFawW6Eyl8eIDjrejxs/N1heWn6Qj/Jp4nwYSl7ITW8SeL5Xlbc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB5868.namprd13.prod.outlook.com (2603:10b6:510:15a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 18:48:34 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%7]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 18:48:34 +0000
Date: Tue, 31 Jan 2023 19:48:26 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Juergen Gross <jgross@suse.com>
Message-ID: <Y9liesGIeKFkf+tI@corigine.com>
References: <20230130113036.7087-1-jgross@suse.com>
 <20230130113036.7087-2-jgross@suse.com>
Content-Disposition: inline
In-Reply-To: <20230130113036.7087-2-jgross@suse.com>
X-ClientProxiedBy: AM3PR05CA0102.eurprd05.prod.outlook.com
 (2603:10a6:207:1::28) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB5868:EE_
X-MS-Office365-Filtering-Correlation-Id: 91d8a6be-d29c-4f15-d994-08db03bbc0df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Ag06zYTyzjKjTenvVGeEq9HK+DEIWGqyDx5qS5GfHfqZhaqVHqoTbHTUNU22BfnmC+y+Yf9m1xW2GsE48I2VKfG4iB2CbLrvuuuJtVmqvp22vF6mtq+/5FC/H9PdY3Belq6zKDHbHuKf72WcwKthAmfZXGBVkMRWhzte8dGf1Cs5nX6j0hSVClLi3yvYj91PGL2ydI/nh1AanuBFwwyu5pNRQfYFUY2og5dU6G13PN3KuNGA1VUK8ikAZpl9TyRsGf6VfbGtwJVhJ8kLVaPP95CuIT+BsqHK7jpQ2KiWNRtjuFnK8yyxJZxEH840BNJVy6lK+4CzQI6/KoKkiU7YJly+D98O5Uz9dDcA/SXICtgN3E/J6T2mp52d8ea7YvWEy9zI7atkx9C4kTWe5eBrqS0OHBNOzVLLAJQKZjkjVEwzWdrliNfdI6yMB37nLh+nOagZUuoyJu7ira18jHCUSTpG7h1h4dEQBnw0gfe3/z9lr8CTa5Xu1Svjgps62aPpZ5UO2WNqsQ870uvOJZoVLwtsL8Pr00b63h5QQ4KNQv3/nrgUGMXe11bn1gc1GmQpeeFY1bcC689ZUFU/6tI2OB8hI049kxNo53kWYcl1aVgdNlKpodTTslSlmMvQoHMNdNP8PuMet3NpoW91CflzZsAEzCocuF0vFUUHrgFRcYBb56ZAfMC+mj3oNG2zRcsd8VpnzEhnX4sg++10di5di0AgM/ZaS+QTuLg9F5ybmfj+JKGcqmgrVosEIp+G5pZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(366004)(39840400004)(376002)(396003)(136003)(346002)(451199018)(54906003)(316002)(8936002)(4326008)(8676002)(41300700001)(66946007)(6916009)(66476007)(38100700002)(36756003)(86362001)(66556008)(6506007)(6512007)(6486002)(186003)(44832011)(2906002)(7416002)(478600001)(83380400001)(2616005)(5660300002)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Qzyd5Olj3xLiYN5N9JOzOCEUihyet81wWIl2YYVS0uqMk0GZHy+6rwPzSNL?=
 =?us-ascii?Q?7HmHbiEFlkz5jHWsCzrcKt7nHJCm1RJWnLDS7hNfOIRNGVIsaivAAlU2CNkL?=
 =?us-ascii?Q?6FT5K7Whg6AO/TcrjJHNZ4Aq5TOELHBV34JnN4cIh9M166yD3aAEpK8PW61b?=
 =?us-ascii?Q?9jXq/7BsrzY8hod3hLw1xaqJKUeXtawKqJfKyCKCBL5WcokQ7b54OVaGUSUr?=
 =?us-ascii?Q?FlwiQWsd1HsDkqlmgCx0twMl9ECRCbulAzDqzXW2Yyp7SjaTl14TLml0pvnb?=
 =?us-ascii?Q?KoUxBiZAenZ8EbQzO3b4Qg1nN08GiEgyEIaaEOjwmUdENA93wDJNGr6z1mY+?=
 =?us-ascii?Q?6HecGFo1VjygKuRqKHQTTlcNhRJd4oSGvJSoUTBwfquZ1fFWKQN+23qLANoQ?=
 =?us-ascii?Q?Vf1ELig2DHnAYlIp3WVoytU//6eVA3wF16aPoBTJNCvNuplaw+L0J/yADZCW?=
 =?us-ascii?Q?bKiwERf3bfFKA66yEmHfCuNty+owOVNu6PeufUD2b9smGWTH9HYCMhB2WFh5?=
 =?us-ascii?Q?3ojkKyW0eBhjTm/09i6wzMeWGiebb2iylbPT7hRUZJpawT0LegYZX998TEpd?=
 =?us-ascii?Q?oUJwK7nMDM+il3gfuAp5mx4jBObl9eQ9FnC6akWfaxmVZWaRRxBKC6u2Y6IH?=
 =?us-ascii?Q?z+pBP8rPhxwbYysV0qtH/LA+Y/vfXyGU7s8TtNHNDXxMM4dzqJ8lqHMpjpPc?=
 =?us-ascii?Q?G+rV3gfhiZH/8wVzFTPC1KTAg4h/hHBM/IMDhICEMKXEd18IPpeTslDqVSxe?=
 =?us-ascii?Q?AEPzCL1wKrA6FijMDgWMRA+Tm7c+qjyNM3D9XdUcPDQHf55SNMSMoJ/gFvvq?=
 =?us-ascii?Q?TpKuav5ZrOqxhDkrGXqnmKAjzkpKLRhz7wsytejByfxZ5u5G+iRJ24CT6eI3?=
 =?us-ascii?Q?xLLcnL+et5zy1fUqiTU/wXxBqGmtOyWVuDAy3wjNkUrsRKjy1KTJNI+nv1aR?=
 =?us-ascii?Q?Zn7KxM/aNBPrGlEn2BeyBYjsAJ5H2yY8LcKRZS/XmFUdBlsNFmp+0tiqqxlF?=
 =?us-ascii?Q?jiXZqcqRQS0OyWJiH3/ZTyxxtbBAmZFRmB+VYhDYCRLsaoujRpcYcUkLIPIc?=
 =?us-ascii?Q?BWPifHvo81aBdcKfNEir6OJmgkcllNzQj2ScvkygJ35HW93P5+EM9lhgkqkG?=
 =?us-ascii?Q?H1SLywIWFXQCpFP7fqDPCRjpFbDNPknyLPFZStSW6tXKwlX4xqErnFHWMs/K?=
 =?us-ascii?Q?cl9m4lyCnnpycNAVcc9uyH9KpSMr2RZMXL/x/2hFsxH1eeVt+JJf5ax5GW1e?=
 =?us-ascii?Q?gc20ab2Ofk4l2WTfeCZHWVVWCvVwWS8fcdALi+H+F3oVi4zoKJtJLOuH/RYP?=
 =?us-ascii?Q?2VTT0dVgBclP2I+NAlEugu2llOnv/kRmY+STmWqGZ7PxtCEerdihD2F4Mz/R?=
 =?us-ascii?Q?ybKeHkFs6phlxSNoVHd9+uV8TUCRJzSU8oA94S8P+lDnHSUv3OQPwprc4ggd?=
 =?us-ascii?Q?Kh/X1uTEjNiOpOirlHX+M/ogopTrdfDTpQWLjWprdnI2jaN1umOu2/QySdEl?=
 =?us-ascii?Q?t8g5hFoT86WvDyGS7kntVdWNxS0+aT2ML4Pps+DpsELxV7hHLcjrJhNclWV+?=
 =?us-ascii?Q?Fi29w4iK5lY12MX9o93+SrCjvSNi3mA/0BiJEfEg4s54WiO2c6xRcSwpms5n?=
 =?us-ascii?Q?tVHCc/q1XixRIeXTlzsQm3FDFG5pzSqq+LEEttkBctJLabojCtMihdufrZlq?=
 =?us-ascii?Q?JfCrWw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91d8a6be-d29c-4f15-d994-08db03bbc0df
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 18:48:34.0375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vgo70ZwIHo6aklb6IvN0evPBUuW+ZasV23I9IdvpCS9qcNYVj7WLkDJtsUqXyl64mcyBFZMPs2wMll0xs3xTIGNP9Kjp8+AhSsg98FMxftk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5868
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 30, 2023 at 12:30:35PM +0100,
 Juergen Gross wrote:
 > When connecting the Xen 9pfs frontend to the backend, the "versions" >
 Xenstore entry written by the backend is parsed in a wrong way. [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.109 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.109 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pMz14-0003ri-2w
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: fix version parsing
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
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 30, 2023 at 12:30:35PM +0100, Juergen Gross wrote:
> When connecting the Xen 9pfs frontend to the backend, the "versions"
> Xenstore entry written by the backend is parsed in a wrong way.
> 
> The "versions" entry is defined to contain the versions supported by
> the backend separated by commas (e.g. "1,2"). Today only version "1"
> is defined. Unfortunately the frontend doesn't look for "1" being
> listed in the entry, but it is expecting the entry to have the value
> "1".
> 
> This will result in failure as soon as the backend will support e.g.
> versions "1" and "2".
> 
> Fix that by scanning the entry correctly.
> 
> Fixes: 71ebd71921e4 ("xen/9pfs: connect to the backend")
> Signed-off-by: Juergen Gross <jgross@suse.com>

It's unclear if this series is targeted at 'net' or 'net-next'.
FWIIW, I feel I feel it would be more appropriate for the latter
as these do not feel like bug fixes: feel free to differ on that.

Regardless,

Reviewed-by: Simon Horman <simon.horman@corigine.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

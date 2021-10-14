Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EFE42D2DE
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Oct 2021 08:44:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mauU3-0002xU-NY; Thu, 14 Oct 2021 06:44:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <Anton.Yakovlev@opensynergy.com>) id 1mauU1-0002xM-LN
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Oct 2021 06:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N5po46FltMSdOciY6xiDB8yxJJKRjyrEtyokuS09wIY=; b=hSEqFHZGvMFjbG1Dlfh3BbyVuM
 yJ2k8QzggJJ67fleBW2u8xt1NSTEx4HimrXiqNnqXAnthsaw4UY80CFh8TD8HW2JYBVqIvaPtAphP
 aZ7wOdAc5l/X+Om3bN3fjF3qqwckpTzHsKpskNk9dvF+78g0W6oZQP+57eqM6bZdLM9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N5po46FltMSdOciY6xiDB8yxJJKRjyrEtyokuS09wIY=; b=XmWZCtNev/zNoLJGOhQT6WZK1e
 1u2Rfqdf6Q2G4FQ1JTnnEKSg+CHqJJ5g3ud0jju9c/g+S5LhdPbxUUSlCMqVuYbSPaoX+EvXq3Cg3
 uatNOkwRmtmXYDz+GX7hhpWMJ1VGe/kKUdhtUSNGdT8dMnU1qzrxYqGmcpiHL3iKDVTM=;
Received: from mail-am6eur05on2112.outbound.protection.outlook.com
 ([40.107.22.112] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mauTx-00ATnz-A4
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Oct 2021 06:44:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVLpCrg/iMBonQOUVkVYpAYGWB/fbGuDLv21wGf5C1H8wlaA/l9TGez4nw05lVGrS00RfojVKaFR8ha39Me563wXpQw4YxsXoa1ejiLhc7RBhk7bPzR0zABMYVVIfDZvHYkBRUfxT6uIflBrSrVViWBXZRGreQj/gF7qJNp0O2bdaK6JMlPZkDvQBklsO9/sFgUHY3zabxiKrty5Yms6Yewq/z+bWa3l8TxFQ/kE+YdNhFtXHRa0ipxNm348wZAJm6UTrh18lXQ45aP08zOBnHkG+Fb4N4MjNB35/iKVw1Yr2tlJ6JzOKhDz4AniGIHJL5BCRrWoNkQFUuJbLkYERw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5po46FltMSdOciY6xiDB8yxJJKRjyrEtyokuS09wIY=;
 b=A43aDctrCqMSv5AlvZVNoocmQQDgv577bD3pA+iazXvg6op7vSN5FB0hSGDiz6G+O8kKqltDDkjg6HdGL1uIaarMDhM/iVYn+0aHMOzOfYui/IPA6cVjz+jlJIl2EFGpiTMzihDI+ABt/EUdO1JyUJmU0ToAbCIF96SEDIOhKN7F802Bsq+ovVuUjFnlnA04V21/pCx5LdysTt1ZYkqUfbwQTNWQVW29E4PUlPI2hd4uRFcekutag1CyoqY0IUtbtIyv/hSM4r8jXd97nNXDkXyfR+DJUk88mmXEiZu6XGhVIJWCwR251gVT++o2mdzLY7UhCuaX7z8MYIl+1IX0kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=opensynergy.com; dmarc=pass action=none
 header.from=opensynergy.com; dkim=pass header.d=opensynergy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opensynergy.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5po46FltMSdOciY6xiDB8yxJJKRjyrEtyokuS09wIY=;
 b=CSJSBBHnW3baLnDRwlg2I8emKcF3J7lABXAaaMzJY2J02UF2fXZ8KIkeUWuahLhTFofrwfSZSjbKvHbSOWTAwNXvpGA2j9pXJ11l9FJ0gEzMsOSLeVQpX+OJWg87fLh5FDqClqepZMYge6xD/JRubCUTLtCYjOl0QRgcUe440/w=
Authentication-Results: alsa-project.org; dkim=none (message not signed)
 header.d=none;alsa-project.org; dmarc=none action=none
 header.from=opensynergy.com;
To: "Michael S. Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org
References: <20211013105226.20225-1-mst@redhat.com>
From: Anton Yakovlev <anton.yakovlev@opensynergy.com>
Message-ID: <0b0c22fa-9002-55b9-163b-e735b8370892@opensynergy.com>
Date: Thu, 14 Oct 2021 08:11:32 +0200
In-Reply-To: <20211013105226.20225-1-mst@redhat.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P195CA0068.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:87::45) To AM0PR04MB5891.eurprd04.prod.outlook.com
 (2603:10a6:208:12e::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc1df71c-bda2-459b-332d-08d98ed97a8c
X-MS-TrafficTypeDiagnostic: AM8PR04MB7986:
X-Microsoft-Antispam-PRVS: <AM8PR04MB798610F33A2DA83B1D8AA0338DB89@AM8PR04MB7986.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jbX/pZINSH89MTyMy1D/tvhcyD0fit/sJiKJQkYGZfitVO+hGJnQ0jEux+Lbl7Xqivs6g2iM1R4BYKcXlI9AYFzdJHyresWlrHCIUrcpLdxuEmSVsHLu8+NQpZAp1b9kfUW0Rho8dbWsawT/bND8ZY4dkG3oVOStOujGLwhiRzhLIPsTJrEdKj9uhpoQtBVpmRBdl4qby4ixhYIRSteENggyMOk2ujOQybO2kh+bDbzV4iNvNi446OLMbPIZy7deWIay3zFGa9Wgfv4aSGdC2gSgryYrPWVrw/tH9BSROTTqbPCs7+tJHHZAd92moPkvX8VPRhQAZuPyRpqWc8GrW5kLS+c8HvnRH7O6XOYBe3HKDK4R+aRTDxH9YJ0k2ads2T6hnFDXUntlljgrPG+T1wRFv5cS66QrxTaMkPgIyWzuGsHUA2lbGN+B95TfGiKNTHu41P7G8G9D9JG2MZ4twxSfOlOrJHMwOblLEW25bPPoc/M1Y8x3iKsIcUMKVaiOJL2MRMfClWXM+rZLsgFdWFf80JVaKOWswrTgtlNkk94lYBWDZYtBNggadb7L9qDRQlu6imfIUEe+mgU7ZhzOlIVRCcfe6o95dABXzEDoFyB3e8LQnx46ulxhxfVgAhqk616zkVrG5doXV4UQiXPxfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5891.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(346002)(376002)(136003)(39840400004)(4326008)(66476007)(44832011)(66946007)(5660300002)(53546011)(4744005)(66556008)(8936002)(2906002)(86362001)(7416002)(38100700002)(31686004)(8676002)(54906003)(42186006)(316002)(2616005)(36756003)(7366002)(7406005)(508600001)(83380400001)(31696002)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVhWQUswYmZWbVpidm96MDN1Y2xyWk4vWlFRMTcvUk5MQm9QOVBPV0F5bndL?=
 =?utf-8?B?SHY5KzFDT1U3Wld0dGhqdmdSb3FpbUNkWjQwRXNEZlBhRTR3Zk1jWkZjZnJS?=
 =?utf-8?B?RDd3RTR4TTFDTzlYeGQrMVB2eFlQc3Q2QnEreHlFL09JTmdmck5YZEZIcjZY?=
 =?utf-8?B?UTIwRVNVZEVOM3UvV3NXMGMydmFLOXNzZmxsVzdBWEhEM1JVdzlSL0FHZ2V0?=
 =?utf-8?B?QVE1R054REVsRCtTdHVqMlpnS0JDVloyRElKV2p5dDYwSUZUMFhvVytGQkVu?=
 =?utf-8?B?QXVSYVBpeS84N0dvM2hnWGMwZW1Qa2xYd0svNUtXRUFiMGgzeTZKZGhwZmJa?=
 =?utf-8?B?VHVZQmNrZ3hRT3lRTEZGRU5tcEpvVWNVazhoZFg5d00rSHJ4ckU4REp0dnRh?=
 =?utf-8?B?THh6aUJXZ294UEFTSFNyb1JnME9TV29qTTBzWksxVDVwRDM1SkxSdGpnbUgv?=
 =?utf-8?B?UitMNVE0aFVjTUltTVFKbE54b0hGaEdOa3FPWEpkWk51YUxtK240Z0FaUFNL?=
 =?utf-8?B?TFhZYXdxeklrUVVYd0RPUlUzeFRtakNTRXRnTVM5dTBlQlpVbUZ3Z1U0UUpS?=
 =?utf-8?B?MWlZNXg1TlNtWFJFMWhsaC9Xei9NQndBT2QzUkpOcGZLek1BWFpZMW9tN0c5?=
 =?utf-8?B?cnI0NXVvTWRqMTNoWllPSUQ0RGdLT1Q5cXZvK09HWldjbng1NXMydWFFWFZp?=
 =?utf-8?B?RVl4TFNrd3A2bUVTMmZ3TVlvUHlabkpPQzNFTVhWNUtYeEhlWGk0ZW5DY3Zz?=
 =?utf-8?B?dlR3Z2hzRytIcTFSbjdaRUw1Mk9tVmZheXVLL2ZyaFNXd0R0Uzd2Z3Zxazlj?=
 =?utf-8?B?OFZnZG1xZmR6QUxiMjQ0ODhDYzdQQXdrU1hXTVJCeTdGc1NkZkUwK3JPendZ?=
 =?utf-8?B?a3dadzZWYld4Z09qelQyNktubUhoVnU3K1dpdEdJZDNNUjg3OFBYeTZlSFpL?=
 =?utf-8?B?TDBhNzJXdncrRnNxK1J4NWNLbXFCM0RWd2pxb3lwUFpOcllkd25WeDVWRnVi?=
 =?utf-8?B?MHpZTE1sQWRmK3RJSFowb2NiUzJoM0FPNDRmOUNsbGU1ZDN6KzBpaEN0Zk9Y?=
 =?utf-8?B?N0IwY1BHS2FtalNZQngxM0J0UHgrUEtRd0RUb3Z6SUxTVyt6UUV6QmNXT2VD?=
 =?utf-8?B?L0xMNytDUU9PL0xsS2kxZ3VadXI3RFJ0RkcrKzhLcENVQmVKRG9EYjhpUGNU?=
 =?utf-8?B?TkxmY1dXdnJGZ3lva01oaERlLy84VjJzQm1GSWxPTVFaamREOWxpK3ZFaEJ2?=
 =?utf-8?B?REtPVDE3V0puTTNKQXJpS2VRUFF2Z0pwUC9TRVAzUVozcWxCbEQzVkNJeVk3?=
 =?utf-8?B?c1ZETUdQb0FQNHNBVXRwdC9mYWNqbkk2MWtmM1RWOW1lRU8xZXVYdUVLNW9v?=
 =?utf-8?B?bzBVYnB3SGQvaUZsdHl6d0NDaFdreXhiVnZ0dmFGK3Rvd2sxanpCWHQzNTB0?=
 =?utf-8?B?R0hFUHBxc0REMjRGeU00OStsL09tOXRsdHRGQVc1S3JNYXc4Sk1nTFFFYTlP?=
 =?utf-8?B?QWNvZzJGb1VRWlRtQXQrMlhnWXhPeERUUTFyWHMxWDRjU04vM1FVc0U0R2Rp?=
 =?utf-8?B?STI3Wkl6dTQxMzdtOTQ0MUFVeFJDdGJWeXdJNWlpSDRIS0Z6djZDNHFaQ0dN?=
 =?utf-8?B?QldKSTgrUVZYNmgzVFZJcXV2ZHVYNnJYNU9LeGI2VGVzMHdqUkdsMlZpUVZt?=
 =?utf-8?B?bzV6Ky9Ra3lFTGdZMGMyOW5sWHpPQUJKRjVydXc2OG1vZy8vcW5na1o4ejBn?=
 =?utf-8?Q?xz3mOvFa2ozXf9ONVb1AUXUoupX1M0/tPkdmnc3?=
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1df71c-bda2-459b-332d-08d98ed97a8c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB5891.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 06:11:36.7959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oeNH+rEXARHKuwrt6kflln1JHZ/1aagGfI/NxMnd5ZPaPSygBdpV2N0pR0aS2MooCF9MO6tV8L4jH2f5alI0Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7986
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13.10.2021 12:55, Michael S. Tsirkin wrote: > This will
 enable cleanups down the road. > The idea is to disable cbs,
 then add "flush_queued_cbs"
 callback > as a parameter, this way drivers can flush any work > queued after
 callbacks have been d [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.112 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.112 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: opensynergy.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mauTx-00ATnz-A4
Subject: Re: [V9fs-developer] [PATCH RFC] virtio: wrap config->reset calls
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Stefan Hajnoczi <stefanha@redhat.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <vireshk@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 netdev@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>,
 linux-scsi@vger.kernel.org, Will Deacon <will@kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Dave Jiang <dave.jiang@intel.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel@lists.infradead.org, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Gonglei <arei.gonglei@huawei.com>, Kalle Valo <kvalo@codeaurora.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, virtualization@lists.linux-foundation.org,
 Marcel Holtmann <marcel@holtmann.org>, Vivek Goyal <vgoyal@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Amit Shah <amit@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, Vishal Verma <vishal.l.verma@intel.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Dan Williams <dan.j.williams@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Cristian Marussi <cristian.marussi@arm.com>, Jens Axboe <axboe@kernel.dk>,
 Jie Deng <jie.deng@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-gpio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>, linux-wireless@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, linux-i2c@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-crypto@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-fsdevel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Johannes Berg <johannes@sipsolutions.net>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>, Joerg Roedel <joro@8bytes.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 13.10.2021 12:55, Michael S. Tsirkin wrote:

> This will enable cleanups down the road.
> The idea is to disable cbs, then add "flush_queued_cbs" callback
> as a parameter, this way drivers can flush any work
> queued after callbacks have been disabled.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>   sound/virtio/virtio_card.c                 | 4 ++--
> 

Reviewed-by: Anton Yakovlev <anton.yakovlev@opensynergy.com>

-- 
Anton Yakovlev
Senior Software Engineer

OpenSynergy GmbH
Rotherstr. 20, 10245 Berlin


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E439C9071
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Nov 2024 18:04:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tBdGm-0006kr-CC;
	Thu, 14 Nov 2024 17:04:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tessa.ross@connectifyinsight.tech>)
 id 1tBdGb-0006kZ-1h for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 17:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2mMCPsXbE9Lhbn8HIbSx4/EEM66p6GvZAoxsgBjPSo=; b=lINx2t3ovPsYzI9d5qFwwFhCLr
 x4N/Sj0Y0jcbXzX+C2X83mPy5FATAKErbRu5rJzEJQYjKJljpwUnAKb8Zh+XTaDr4siriz28kpPlR
 FXdxppnvXn7j9uluaqKLIeS3UTV0IlbTO5mFXhWu/PBz+eWhie6N1sGHu9IrkCHwLsso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=t2mMCPsXbE9Lhbn8HIbSx4/EEM66p6GvZAoxsgBjPSo=; b=O
 vxmKDOFC62kL6LNcdk7iKzymb3WJ9QvyXtJbKfP6obV+Q+1AVur8isqjmmvvC+GN8TTD+TrYxoxad
 a4UrgnKNufhuZ/q6VldPzQlbrNWCpJlZuOcAoQeXBfjIkjTxvknv4NJPoehFZeC9evz0T5ZpuAGft
 nYSGUSJTJCZCq/ls=;
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tBdGU-0008T6-Jc for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 17:04:19 +0000
Received: from dispatch1-us1.ppe-hosted.com (ip6-localhost [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 228C4406A6D for <v9fs-developer@lists.sourceforge.net>;
 Thu, 14 Nov 2024 17:04:08 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from PNZPR01CU001.outbound.protection.outlook.com
 (mail-centralindiaazlp17011024.outbound.protection.outlook.com
 [40.93.132.24])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 748E7780077
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 14 Nov 2024 17:03:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iO3XUKiO82kdNrXe9lhgtGTtc8Cintp6kd0Owl13FUGU1S/zdNYBaIx/iYri3Zzy6yisjWeqHNnA2K73wSNSTDE6PNsuAPguJwunYFwpQpBxZ4N59AiVvFz3AoM0Rrvvu3gNnUJEDe5v+MdNjfiBQTHQC7oS4APQPYpu7kr9OtnOJOEGezqxzhSW/ubaww4JKa6CNkePiHcHS7atISSRQHF7329rRON72GYHawvtw2hor4pIqIyCmfBtwQOTyusGq1kuC8/1Pob83Ds4nIHQ0BYkzY2rcB4L3eYqpfzRELi95K3Blv0OKlWpyQxpSTByJy01cBFaRf7RvMNuObGPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t2mMCPsXbE9Lhbn8HIbSx4/EEM66p6GvZAoxsgBjPSo=;
 b=TNFNVOy8V5kfy+cEBQa4hbV5+NzBqUyRhdr9VfAe+vwQW/ImKJSmDCQ+JVUrTPx+9P1MvcwhMQbk2d3ixtQDqlEk17f88ZqcjgdnTnsGypGJ80qtpFPUhH1WusAetcjEuCY/yFPxVJKnYlSBi0yfOrPjqZ/rv5LNPMUXxJ/bWrAeDrJXKAxHdLVIcQIKrUfL2xENn32s+4nZft5vmuyMLTy6GI1rl/p9CVayo1pRlklLQtJDrrWWDm2eOf3wYw9tIU6e6rwMqEiAXYyH+lar34+IBLyancM1jKS9kT6xIAXbxW2rJBmq1adAQ2s1Hho+cS0chDIYTpssLdUGlXcgOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connectifyinsight.tech; dmarc=pass action=none
 header.from=connectifyinsight.tech; dkim=pass
 header.d=connectifyinsight.tech; arc=none
Received: from PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM (2603:1096:c04:1::127)
 by PN3PPFEB5670C24.INDP287.PROD.OUTLOOK.COM (2603:1096:c04:1::de)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 17:03:52 +0000
Received: from PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM
 ([fe80::31f6:48ff:d676:3dcf]) by PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM
 ([fe80::31f6:48ff:d676:3dcf%4]) with mapi id 15.20.8158.017; Thu, 14 Nov 2024
 17:03:52 +0000
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Re: School Districts Contacts 2024
Thread-Index: Ads2r7d19bIGF8IOwEC9YBZfcwZ8lA==
Date: Thu, 14 Nov 2024 17:03:51 +0000
Message-ID: <PN2PPF78C77A7D4583863C5928C44E78EAAE35B2@PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=connectifyinsight.tech;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN2PPF78C77A7D4:EE_|PN3PPFEB5670C24:EE_
x-ms-office365-filtering-correlation-id: c4026622-7df8-499c-3aa5-08dd04ce50cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gTAmDuW5velToKlAzEWSTL14D8GeztQ8iUungi7LAwB20Eh5VdPd9HuhynSn?=
 =?us-ascii?Q?tDV9lNPFr0OQCej/IIlYAwp3Pm24MDiwbzNSiXTrNLXhfJH8fTkiwP768yFb?=
 =?us-ascii?Q?2OsmAJPm2cadUAhtveabwc1PPvMeFwXbmIJUN6lmCiRC8Atx0lRwL4nO/cZm?=
 =?us-ascii?Q?9N/gk5aOtZ7n81fAmBE1dUR0uuaNNFNRmvNPeA1qwy2fE27y+aTG5q9i4/3L?=
 =?us-ascii?Q?ALNPkpwxqvLUAj/FwlkBz5MCv1DoMi/ntzkC4gBILZhaVh5yW7P6Vh7/ZaeF?=
 =?us-ascii?Q?6pfkAXwkOAEgPH8i7JROifD/efNcwh77MekYb2/ilp8AhP0OfQxhWKXsMRa9?=
 =?us-ascii?Q?GnPjYCY73/iAo+DK/CRQXwYQ3j8mWxMekp5LSnPqU5Ua6GIee+aOUVTgvP4W?=
 =?us-ascii?Q?ZyAsAzdOr0ktqXPiBo9iPdao5zC6QlmOLs2y8reQLwCuC3i4NL/zE9OPKb8U?=
 =?us-ascii?Q?Iw8Omj/4Yj8n+Rq0yUpeTbev5SRjUB91mNn5nfrnpSctpdMZTGsMHNCYeKGY?=
 =?us-ascii?Q?JYId2sHDq4xzhmG4hGXFhtoFnZaVMY22UdSISQRLzOKIUiURc4eWglmL8VXr?=
 =?us-ascii?Q?1wU2sy6vMM7ocTXRpGhwgYVeLqJ/wPJJ9rjNICtn13RCUFDjKmFVduKfxRzw?=
 =?us-ascii?Q?5ZbueDoaT/HO1+F7sWEvFhm0MpN0dyFdMJQxT+AfA8iAhyRjjYkzsliamAxA?=
 =?us-ascii?Q?6H72SAbiFvSK9Wok/wa6usvvTAnj1LnRBEMUdjdK6zpTAwGd/KYO0PpJ9sTo?=
 =?us-ascii?Q?g1gJPp/fIGuo59ssk6wu1scvaOvc2SBzIx6w1w6Z7MjYwhp4P80E3YKj7NjM?=
 =?us-ascii?Q?pmzM3dK1kY7MLUJjamh5m7NcuLyuDicPXizV+p6j8Pdn/WV+UgtzxLtQyCm+?=
 =?us-ascii?Q?qK+aw6oKhQfECQM1CeZ9/RZgf7v3HPf5I54a/t4Re4KTW/SfqsJCah4Yz2W/?=
 =?us-ascii?Q?EXVWFrK4AJfJwVCzuJdrFeF0d9BiK/0aBxY2fdvX3dFka6rSWsbhGeJS5+0l?=
 =?us-ascii?Q?KfxdlXra6kKZhGoRLjgPqHnv3DSi3gMLe1CgV5Vll2Gj281gKPwHZLn1uM7l?=
 =?us-ascii?Q?8OQ/cWHZvzzu0Jt2tos+lB7EI43DlTYQ/YSYy8VFBYd4VCknlDzKPL1n5eo1?=
 =?us-ascii?Q?Y0P2cWs36qkQTx+/2OIURLBOkTA3y823CCk+j0bukQ0qGI5qRymfeES/4W+x?=
 =?us-ascii?Q?ra8oYqBdcsW6Xe16F1frUNuPiyTFho5yaFg7iJfMqpMOItmGBHDC4VxOC1tu?=
 =?us-ascii?Q?a9YwsNPsPU/7EKFClZKArnn6cWSOKDcl2YHexBeZAUa8cTWxYulV1v7MRnHb?=
 =?us-ascii?Q?uUOfZpLB6978ZpSu099QZ7G3fvC/mhQEz3PLXYBrCq5GFYLVyaEz6ZUl2QJ3?=
 =?us-ascii?Q?PDeyROg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(8096899003)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bpn8cA3Uriae0hsiIgKaTwOAQCDcOCVxQAjmjyRiQJtfYdf0Ze/HYPpOQl9A?=
 =?us-ascii?Q?wx0z1zP6309cXsA5XNrFYoL+3xz6AUiYBVGNdiYHnzsTbaTGPmzxjfOrpd81?=
 =?us-ascii?Q?mDmZGnEE8XD7BlJgrgE6FpX/bRl1vR4ysGBIF3CLBjEw1CoqcV3F0/i/mZ9q?=
 =?us-ascii?Q?xgyWUf+OS23hcQlhTxck/psPseYDJM56dfAQgl3N2ZFSBQFEL5R4g14hU/gw?=
 =?us-ascii?Q?BUqrA1Pq46CtzI5EWQksmFoAoppdzC+Gb1O55oRsZUhmr1X3voTS25D0BKk9?=
 =?us-ascii?Q?pg78Ma0PyvdyknYTT1bQRAzVJmE69qi8ZTlKD0i6wI2gGhZQO40x44H79syL?=
 =?us-ascii?Q?9r26I3AiEilrmjSc36JWl3V0OT0uoAIVqMsjycytM6ON/L9yDHs6WT5qYiOH?=
 =?us-ascii?Q?vnXJqn/3km+R8HdXYUkI/tIdUFvxuuMmqWyKg6gPbxy4I5o/H59hzfQXzFkt?=
 =?us-ascii?Q?yDcSp0IrYYS0Uhv2jv6ZxQs5XQZt4RR0YwZIbJm2BMnifEbf386stf4hmaW7?=
 =?us-ascii?Q?SN2Phy3OmfkGA4gxjGAgURRfR7Yr4o8CaTIR4MT3WMDMDNF+LVLlY/Uol9RU?=
 =?us-ascii?Q?XmHe1d4RFV/cuJpxv1jiKl6U+xSdG3yi15Bav/A5FDybR9ayZClnG3KsvOzJ?=
 =?us-ascii?Q?zo1XWAZh9B4rbN3lFoQ4g78Oy92tCpxQbLzLElcPucnKIlDLjlFTHEC46sGm?=
 =?us-ascii?Q?j/Kj9aXbLEyhDjdfbcRlzavHCh3ywGEiVQ1ONRhoZCzxsyQ3uHKlVq4o/65u?=
 =?us-ascii?Q?cY5WYlEGMVsZ4uScjBZCDqLRPi9P2PLq7aF9q5Qmvi6Y6DLsRmjxU5Ma/Cas?=
 =?us-ascii?Q?3G3N4C8XaP1qol4HIYn3ZQCApCAUFgg/oCkI4U+hgeDgLtZ+hluohY4JDM0K?=
 =?us-ascii?Q?/tphuCuIUgghq75gP8we7vhhuc7KEPVr4TmzTCUj0KRAlch5wPqqe4svqQnO?=
 =?us-ascii?Q?bKtwIE7PavIJsobSwVnshxoenWyK2XJJIJJHxPYBWw9OG18u3mBgtgpZzhjf?=
 =?us-ascii?Q?p5HDO62dRCqrRrF559n/wUNjWh26g95nlJ4K49oIRvnpvaUMCmtFWN9ztvvE?=
 =?us-ascii?Q?QfhNQeK9ir7xaqHvV2h5zZtBZnnVGUXNuTt7WHXUm+dUMxBDlcfkcTazCWy/?=
 =?us-ascii?Q?0zZBR+HZGL4eARa+gEbcyR7Ut3uR5wOGaXfD+Aegx4gMOirJDvv0Zbg/cws2?=
 =?us-ascii?Q?94AYiVQ7nLJYyHu2kwrwVxVo/saV+3vdY+2y6EnAhcs3PC9hJFSV6fTFiGd6?=
 =?us-ascii?Q?67KaRMC95NDgxuX3LVjZbGz0j3G42A1J+bgGkapyulVlq69ZvSaV5jIOBlJj?=
 =?us-ascii?Q?4h/dsemu6vSO7zu2TTeAryQGiQodjNVSSwEZxdlC81J4hC18HzmUEBLEWMVP?=
 =?us-ascii?Q?8AtPZxTIbjMxqkIs4mJNheH5QLzX799udeN6GqM6XASCyLIpEow6dW1kmK8b?=
 =?us-ascii?Q?+Qtdfan2xG2n6PXYdgWhFE4FvL7oxp7MjwQqVvtUr0QBT6x7gtcPPQD0OdDs?=
 =?us-ascii?Q?mog4r94Dh9hxB90aANtdgpQS0/REWJBbohvmMZF5ch75ZyS06B7bGu8LjdXM?=
 =?us-ascii?Q?lN8YyfQlmgQMbQEFP8h6Q/j53/rDLYBczrKd7IxSP16JWdSt5nW56m6wzbG+?=
 =?us-ascii?Q?A5TrJNU7x1I/H2t/b+ItArLzHfwW9JH3XE9N066ofxXaZqtWG9S1YPFGmGOV?=
 =?us-ascii?Q?Dqw75+had8XpJetVAVTZCDMd4Jc=3D?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MJWl09tN9JDZKNE5w9futVVkQdU+w7ZRDla3RSXV98Wx8FBtGnCm3tySJI6i78aAE87rg3lDNFvMyH7kga+qwIton7CJWLS7Br9x/ik8frkzDFOZbZLDObolJQON6koEffd6lCN2URxwZ5CUgtFbggdRm5eznLVYle6UQLhqfoVFWM+zsQ6FP/x1CKeqVq3GFjDgK6xx9/zPDjbI/AKIYKHRvSI6VYoKXKjDWLG/PtOG/7p9XeAsanJQlyHA2KDSy8zy+byfWsRZ4EkvccheKJ+CaNdYcxzKm0gpeI4o+hCNcYSvYtKtmGoloe/H1V8JPE6UaRnz38pmaLXw01BJiggThKRGawipJGB0UF69zX1oPEchsB2xGxKpFsTaUpaCxUVaF3TGBiYzlO7aPH5XWG7Zxz/bZmEO7SYriGu2j/RbSe0KcHAdpscSQc+SNhFa0mftuxKt485BJKtfXcXYyiMl5g+lq36Qo1XE5sn0OzLbirfWY+PTCCl1QWoe4w+YSLNVBRdB2ND8A0cTY75rmcHt8lZh75MNe2nBM4L4ko6SIxYFhBZ53SxnB/OhLsqG0SDhbBTtaJXBI+DtVn2pzWHk0nl6PwSlE1Amc0w05gM=
X-OriginatorOrg: connectifyinsight.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN2PPF78C77A7D4.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c4026622-7df8-499c-3aa5-08dd04ce50cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 17:03:51.6488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5aa5d65a-4ad2-45d2-a5c3-61352f52afaf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OZbgTkwqDEPCb7fCANyV/msA0goQEwFh4w2AztmLvV/aMJCmtSn9hbmCrYCl7H2RurM9u2v0IMey423gE29RnuX/GaWHRUOt5jOZJlLxqkAk0wcBAUkNf0QozsGkga5S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PPFEB5670C24
X-MDID: 1731603836-hy001L9DLDIh
X-MDID-O: us4; ut7; 1731603836; hy001L9DLDIh;
 <tessa.ross@connectifyinsight.tech>; cabef107365ec6e894ca3fbc102bc6b0
X-PPE-TRUSTED: V=1;DIR=OUT;
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi there, We are excited to offer you a comprehensive email
 list of school districts that includes key contact information such as phone
 numbers, email addresses, mailing addresses, company revenue, s [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.129.48 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.129.48 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.129.48 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1tBdGU-0008T6-Jc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] School Districts Contacts 2024
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Tessa Ross via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Tessa Ross <tessa.ross@connectifyinsight.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi there,
We are excited to offer you a comprehensive email list of school districts that includes key contact information such as phone numbers, email addresses, mailing addresses, company revenue, size, and web addresses. Our databases also cover related industries such as:

  *   K-12 schools
  *   Universities
  *   Vocational schools and training programs
  *   Performing arts schools
  *   Fitness centers and gyms
  *   Child care services and providers
  *   Educational publishers and suppliers
If you're interested, we would be happy to provide you with relevant counts and a test file based on your specific requirements.
Thank you for your time and consideration, and please let us know if you have any questions or concerns.
Thanks,
Abigail Foster

To remove from this mailing reply with the subject line " LEAVE US".


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 214AB419EF7
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Sep 2021 21:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mUw7A-0002nx-1s; Mon, 27 Sep 2021 19:16:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <annie.c@expoconnection.tech>) id 1mUw78-0002nk-Tr
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Sep 2021 19:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eA6LgIt83O0cHf72tb7gYquPQv00NmUvs36IhnpiowY=; b=abhqN9gZ3qKsxAJa5HHgHthvxd
 aChEAngZo4QmXw6EXgDggH4gH66DuZ1X9RQM1bY/CLDutUa0uU8fSvHlQz3kAMUtO5i/SKFW0s3ow
 8pHegGZH0ea8f2jiIiytz3UKGlpSrOAagaOXlx8uDy+FSNaFZLIvjPpvimszs+aurzoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eA6LgIt83O0cHf72tb7gYquPQv00NmUvs36IhnpiowY=; b=g
 UTszUtqiEW9RowmXbzhPBjlihDR0qZ5dJlg06gBpcVhhaUhGQoJ49fpGhr1onHImboy+HRJzOebgB
 6xBk1U/i6C0dyvi/xmSt476gGFcl4YwItHQBfGkZabBcxjnZyH6VPiTQDJqdqsA3iIcbJMIG5Kcjh
 K+RhOpFOnZwn7YDM=;
Received: from mail-eopbgr1390105.outbound.protection.outlook.com
 ([40.107.139.105] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUw78-007yIw-3y
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Sep 2021 19:16:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhEFPN1Mi8pAawGTLPDQo6bgjl4EWQfuDN3XP5TOc942sOm1B2zsR+VJpQEZIS5DAByzFDAelVGpeBrgxt26q7URQpse13QjROZGuZyO/0BKsO+pdn6MjgojIBkhGimUEdP7hOaSRNQGu5prN6FvHgjI3GkqKEF14mtgnaOeccPRGNTPfRl1NBo2Ey3AkfKFAPv2uy+oekl2Sv+rnk5bvmP+BfVtfgDqCq2q8Ha9x/Dox7MYPCk25/8ftSdMOeHQLilu3rpTUdKKyiM3Ynee4UGjo60i56ZX+1DLHgjjGbDd2KCoTozaakz6yl6pJfBC3N4vUoP6f2B/Na/JBt+SjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=eA6LgIt83O0cHf72tb7gYquPQv00NmUvs36IhnpiowY=;
 b=IrseP4gzEjfH5zKRh7PbM5CjvT+6VX/7B9i7biBF14B6UAEncSW05ZuNo+LLH275KXtFno4GrcD6dizo3o5+wdnWWtIoSLL+HnNwumEhs7nqK9CG3GS2QgiHLJstDIFz+o/g2BjO9Ajc5GwXnjXqafZJ5/c+4JqQAvCEtULQsavB1AOXheA+LyMZwyugXoJT88cSslcBigCL37svki5zg0PUrcLm0GUJt89kr3uG0HUbCTjwXoui0UKy2NNtaweS3ip1ejQIZkapfuq8uofmI+vFHU/Ucg4Vl+FFr90NnbKBPVubSm0VweZ4aqhB+jQLuDYFjiH1jLQS76Wo5PVq0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=expoconnection.tech; dmarc=pass action=none
 header.from=expoconnection.tech; dkim=pass header.d=expoconnection.tech;
 arc=none
Received: from MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:15::10)
 by MA1PR01MB3738.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:80::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Mon, 27 Sep
 2021 19:00:44 +0000
Received: from MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::4cf7:b4d3:46f0:b171]) by MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::4cf7:b4d3:46f0:b171%9]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 19:00:44 +0000
From: Annie Casper <annie.c@expoconnection.tech>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Re: Get A Way Here!
Thread-Index: Adez0XB5VyvNyZ+STKO305gAzFxzGQ==
Date: Mon, 27 Sep 2021 18:56:56 +0000
Message-ID: <MA1PR01MB43722E5625B7482142758668FAA79@MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=expoconnection.tech;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2be40f20-9745-4645-5b3e-08d981e91bc6
x-ms-traffictypediagnostic: MA1PR01MB3738:
x-microsoft-antispam-prvs: <MA1PR01MB3738E775344985EE037F4542FAA79@MA1PR01MB3738.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VLucecgrQu2oFlHJckDQgnE097LpEL620VRQDcQg3+x1DZ9fyov8b8eaS0bJ78/WiKnOFH5Ep7vMEIgWa3Pkcoy4LNCK+d/4x0mUpXn9Y9JMQNBersGh9e41TY9QJcqn0Xj4E/s38ZeHHSNvt6m+Q0aqyICeclpyf7F4ZSsyXyasd95biLGQ5tRR5dWxKLs1Ves1xjdsuJQrGPuMIwdvWkrATUMrjJy/Cm4YOUoZ7x1nm1WK9rAh9BCuXF5/BxwD+FMYZujZNl1tQEMx8ARfKubIH3SRIsv+PbNDCKlBxzWFCGh54oS65ibMmQXRg+81IqvFD7230pYBY1fOtHl3II5GiCy0Mg3MkFfhRniyeqi2nmZPbwtTRCKCcFMlOP956W6cNwgsoazCesifxBafADMMJ5IymDR5dvDUPCmJ6eUpZgii+A+LPH1qFLZYCsz9YMjZQTZRX0J1t69yUOqSirO8dpxlvXTr6O5BbqeLiSN86SLDbtC3G0pcz3iF0XO/PH0IDuKGaitIUpxNhL3/qWBvf06pvtDNMdmHj1tWD0fCJ7KMpDWrAOw1MsS8kjF6+3hJtv64SDPfGU9u2WfdjLe7Ni23d7GWggV2AQnGChoZW+habgoglD4DrZncxjrQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(8936002)(64756008)(3480700007)(8676002)(55236004)(508600001)(66476007)(66556008)(186003)(26005)(7696005)(6506007)(4744005)(55016002)(9686003)(71200400001)(5660300002)(6916009)(9326002)(6666004)(316002)(86362001)(66446008)(38100700002)(122000001)(66946007)(2906002)(33656002)(88996005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NjvoWMVHvZaCx9qcDIKFWlmIXz4/BFUr150yZkI+eCXp8hYn7/rlDrBbikuE?=
 =?us-ascii?Q?LdGmY6WB1HB9aUtJon7MGCaYeM89t3skKSd+NxrDJzABwSWMFikVGyqom9rx?=
 =?us-ascii?Q?/mCzO3zI1NSn4wnasJIDhwrjvCOjUqJbhC+1EYJ5UtZHCnpdRd4+s6NAi7kh?=
 =?us-ascii?Q?hy5RtSsudfG0QnzaJuLvzSStsYqlmsWvDmic6m+LT/W3rbV+vBR5vBd4i+s7?=
 =?us-ascii?Q?cRirs8FO9+/tFQrhJJePlXZltfaO1sslSF2jyibLZ3YjI2wRygYC4kBAhEap?=
 =?us-ascii?Q?zIZ8vROp3REYXecaLPyh3P0zud94JhIHcEFtD3Ar+Ilnu04XDXeymlIe6L9S?=
 =?us-ascii?Q?MKNzekBgHYq7+tBBsA/1MFmmRx0CSMppT+oDyvEgCCKQpFVC3lU+TYZ0EOUd?=
 =?us-ascii?Q?cWAIAVFNVOM/HKaJQgBcBnONIjh2t+xuROAwCpEQM7S2/B3SwKUdQoNxcLVw?=
 =?us-ascii?Q?Sn4ak3Rshe5GBKhcAEVjjTnjTx+24GLWvcNJDpe4gznrFfOCt3qESJrsqDl+?=
 =?us-ascii?Q?Uh/aBXVNkocfWIoJ+km+VDG+Jp5L1Rcd2MdSIubXkdJ5q+t+awITa5ymoYE9?=
 =?us-ascii?Q?CSVMB73V9v7tTx/t5DdkqY/Stq+S4FScW3Qn8D+JNn+Psou8GRVTUpID+QSd?=
 =?us-ascii?Q?TwbPU4mQHdzEYo4NVlaEwQZCygp02vWuCa2bmhtAcqDpSa8ppQAU5FDC2akx?=
 =?us-ascii?Q?9kxBrOntD02rloAAWyqfke87wegfsy0xxymdXF2glriTqV5D8cB6tkHEeinC?=
 =?us-ascii?Q?vRSi83gy0br/hoCmCFA6bIMyaxuvJL9oz4CFdKUXmpC4+AYyh53bDa/FMJXW?=
 =?us-ascii?Q?7xA+wfmJdr26iDI9O7i61gRhDwM/cHFHFpqn5jeX9584pr5xSabaZnFDMjfW?=
 =?us-ascii?Q?NIFwcnTAenNB/lV0QdWeEvy3Z2cmAVmZENyhw4UXbf48NCWK1Q065Tyo/hLM?=
 =?us-ascii?Q?OuYKQAhuf37MckvYoNBWZ1ZLd/vu1pd4pHTTULNAo2vAQjU+3ney2g7YkqTQ?=
 =?us-ascii?Q?u8xjNC98Ov7EDVR5Fwb2mukRGcZI1WOb/R2pByXGPfz9Up/TMx8Bm17uVOVo?=
 =?us-ascii?Q?KCyXX+EuJadSjnbHkaspT4HjSblf82b0hTnGgtaGUzt6rc8Rwa9PRN5zBg99?=
 =?us-ascii?Q?jozkfSwCzIAWwu93Ywvlx9EjHYFjjPzUU8TeCabL0N3ROi2fwYgil54I9VFe?=
 =?us-ascii?Q?TIN58wMU3wEMVb9s95wZ8RfyVEI3Lv77MjPbSuFV7gy3V28RxjwCXL+oWgQI?=
 =?us-ascii?Q?kXro8m+OLTMJW+hxKFK2JXQEVMVA+PdMRhzg3cuJmYQSU7xRsgn/IRGgHMoI?=
 =?us-ascii?Q?9mzEqRFYcXEi80Vba2/gzPLN?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: expoconnection.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB4372.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2be40f20-9745-4645-5b3e-08d981e91bc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 18:56:56.8814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc63353e-3326-4235-8da3-601564368769
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iML2mXeEzTW1IuMBK5PGMKKQ/PT+P0sl/ebjBxWY5FR2jQgcKBQps7Fe8gL69bpMxMEtfxps/EUZyu8oL2K+dA0etEisJN141oS5rt+4KmMh7n08Anzsy7EiHhisTbjX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3738
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Hope you are doing great! I represent a multichannel database
 company and we provide name and details from across the globe that would
 help you reach the right person in an organization. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.139.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.139.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mUw78-007yIw-3y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Get A Way Here!
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

Hope you are doing great!

I represent a multichannel database company and we provide name and details from across the globe that would help you reach the right person in an organization.

Fill in your requirement below and we will assist you with counts and pricing for your data needs:

Target Industry:
Target title:
Target Geography:
Any other specification:

I will get back to you with data count, pricing and a few record for your consideration.

Regards,
Annie casper
Data Dept.

Note: If you do not wish to receive our emails you can reply Opt-Out.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

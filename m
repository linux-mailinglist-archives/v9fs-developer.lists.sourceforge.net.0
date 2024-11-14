Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA6D9C8E88
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Nov 2024 16:44:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tBc1B-0001hL-6R;
	Thu, 14 Nov 2024 15:44:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tessa.ross@connectifyinsight.tech>)
 id 1tBc1A-0001hB-Lw for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 15:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5uC5fFO8HuEHZ5rjpIBaYyaEMnNLyLLUKVDBlfyeUB0=; b=g6iIA17x7NIJvEtZ/LCyhVtE3Q
 udAirRTj4LcSGdpwyifmDv4KNvETbb2tDsJTEXOkanvWJgLbhld1W5Z7GcqskxYPh+ApRdVmGZbmP
 OG8QRZ8yMma5huQng1MoC3I6T1GpQx4IRA+1b09xZ078MeCYadIu4vLhr7sCQwiTW9q0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5uC5fFO8HuEHZ5rjpIBaYyaEMnNLyLLUKVDBlfyeUB0=; b=S
 PJoHmvj0rQ2peNuGbhLD81dhcYOwjuxnCMpMqtwtm2QbFcgYJ5G+xT1Gc3sFxTPLPMRnVAgMAz9f3
 /FRySL+tzKLKSFMTM/0yDMm+OhwgM5IXh9v1JmXupspDeMDtQez4FgpxTDkEU42mPBeja5V02f1Yg
 W99U7nD2bldmyKbw=;
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.184])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tBc17-0003Ih-N9 for v9fs-developer@lists.sourceforge.net;
 Thu, 14 Nov 2024 15:44:24 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from PNYPR01CU001.outbound.protection.outlook.com
 (mail-centralindiaazlp17010003.outbound.protection.outlook.com [40.93.132.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6839E3C0070
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 14 Nov 2024 15:44:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6m3HsAfO/vBpZH9wi5yde3un8QSKug/9yJfYCdzRzhAgmpimRzR1g12D2t5V1UD1MSqIn698H1NDd42raTiiHqMhtYghQN6G+WPL0W2BDVdilznfM4MsrnOIEzhtNue83GsDITiMwO5Q01SPnw70OqXdXyL5n65FFxrPB17vJp82qh6i4/1PnQYscnRHEJVQFJ28VztzhcpyOZc1Dig9D3odkF7ZrJzwaa/eRkhDn3tyeHbbubszXOv1bjEWtmEgjgsAP9FvsqoFiug7yAdGNcmf/7zO6Ld9P+Yt/rNE9aF6sNt2dE6SkXzW6deYgIJJZciMuQ2DSEd/rR/CIvLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uC5fFO8HuEHZ5rjpIBaYyaEMnNLyLLUKVDBlfyeUB0=;
 b=amcEwWjRE+j9n+LDBt/st8LKxLOzAnXQyaWfyl89OnIKVI8RF8wypkBnUjPMcOmNiJBR1bJu/gQy2NBuVdNnnK6oDVojxCCn8Mwq+Wk9MPN0udRYCD34XdbkNvZOG//9SmbpECQIdfAreqHG9oYgxQF1AwZJc9B3vuvlqO25/JCQlHPxrN9+2qsXUHXf3YjWvZDUmo9VGubfax4wub/NN6j073MQoBimSK6SPf1dgQpXi6pOAOSnzsAR9jzmne6Qm0cab380Q7yD8ENRm09+Lc05aFlxYAmOhCJFZLjMBf7cjei7KlpzgfaTOxzJiWe4jybw5v5BFyt3mo6xq4hlSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connectifyinsight.tech; dmarc=pass action=none
 header.from=connectifyinsight.tech; dkim=pass
 header.d=connectifyinsight.tech; arc=none
Received: from PN1P287MB3775.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:252::6)
 by PN3P287MB0955.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:17b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Thu, 14 Nov
 2024 15:44:09 +0000
Received: from PN1P287MB3775.INDP287.PROD.OUTLOOK.COM
 ([fe80::f738:2b8c:bf98:8e5]) by PN1P287MB3775.INDP287.PROD.OUTLOOK.COM
 ([fe80::f738:2b8c:bf98:8e5%7]) with mapi id 15.20.8158.017; Thu, 14 Nov 2024
 15:44:09 +0000
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Re: School Districts Contacts 2024
Thread-Index: Ads2eXtDYNL4+AGNZkKbPUVBEfXGEQ==
Date: Thu, 14 Nov 2024 15:44:09 +0000
Message-ID: <PN1P287MB3775A4994CE2B5F259873C1BE35B2@PN1P287MB3775.INDP287.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=connectifyinsight.tech;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN1P287MB3775:EE_|PN3P287MB0955:EE_
x-ms-office365-filtering-correlation-id: fbd7db12-9dcb-411d-19a2-08dd04c32e32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?V8G+cZKxTy4qUQY/3JMKSTvN4E9oH/XzKrB9zNF18y0ZdHBAxopP3pAn9BYN?=
 =?us-ascii?Q?Zshw8qkqyNnde+o/uft6ra8VLkqR+re+6G5zj24LzQd0Xwgm5iah8hHeM460?=
 =?us-ascii?Q?fbSViG4c7M4ETxTAlA4BRtFjt0N1cDwvIWi6JMzdyAkRQpucIv1KAv6+t98O?=
 =?us-ascii?Q?NWUo9AtstT85ZDTHB4jdRghZtR3trCHtPVEFFyPZQ0EaVGjszBtf/5yz8xeV?=
 =?us-ascii?Q?cEHIGnbHZjCnoZh/8vQA4IYhFfvUVCaFl0XtSP8ycVfj2VNA/0nwORSw0Pyo?=
 =?us-ascii?Q?wU8nEPSgQHDtoWNqxPHISd1NJFblfkO/RfKtIOrZxAkWRDbDc2MECTHB3pa2?=
 =?us-ascii?Q?p7c6r0ovetnkyayzcXEtwxcIA5GQ73wqFkGN1vdl962jgHi94g2EpwbwBVWy?=
 =?us-ascii?Q?qn0o7pOD/YZPMiBic8TtZS9JdKVSj4THTMo0PoKDAvPhGg3w5TN110tcWQYw?=
 =?us-ascii?Q?CJoFTHE2Pr2/NSC491+IC1n/FGWgizWAYaJ5qZco1E/Siz0QfvSL7HBFvi3j?=
 =?us-ascii?Q?w12bvDicSTEE46qGUVGSY542CWTtQR2r0XbuyMr9cMMeeceL7TF+vFsHWdAo?=
 =?us-ascii?Q?R3wNVivq0OWBLmJrSQJxhAM/ovaEWzvGm+HW9qo40E8Cg9UPj+zlARTD3gry?=
 =?us-ascii?Q?PcTIEKIX4DCobkwjUo2ZKgcYEP6Yr5KWLConUuUVpamgjPX7G1nWsnWO+12X?=
 =?us-ascii?Q?uxo009CII/q0TtvZjSWJhE4xki0rIsQuLV8x90RDPh0mingLfETdfUZdgb4c?=
 =?us-ascii?Q?yG+6SnGftscgSwjldf7roMx+xZRcsFWhDDlbaMBCL5sxss9DUCciJTOWAgiU?=
 =?us-ascii?Q?0YyuUHehPiNdq5LmHijv47sfzVrc0w0Aq8SF38BiVAMa75LFzm+s8ISNr/HP?=
 =?us-ascii?Q?sk64VFb4jFWT3mfe78H2ffakteMG7nY7bhxAyt4RPcwH3DuzaG7w5J2tah7x?=
 =?us-ascii?Q?pAzC99Aa6nAgWOHcZ1MWFzrgaEksXmFW9owb/SLGJ5eqnOaW9m+o0CNM1m+h?=
 =?us-ascii?Q?eEO+4hpPoKiGWpWmefgMSXIQ1b/velPw1K03Dv9DjefOyQchPyu5zwpDOLgp?=
 =?us-ascii?Q?XjYhDWL98RXzFlBncnLLCc4k60Kc1VmeKVHlo8khdEiALnwv/AGAsL2/Yw5d?=
 =?us-ascii?Q?SW7rQIECpUOeNCL7DIgbNWexCTRLGSMRSlnk6PnnAfZ5Ptm+hLhuQw8P9OFU?=
 =?us-ascii?Q?5wmFEqztRaZmtv3OoznV7IZZwbONwbN8H2WbGhEE0llo0n3C6eBlhhl4p22/?=
 =?us-ascii?Q?4dwfG6EsPCP8/Ctk11Z/4qwZ1mwOWhwEN5d5jVS7M+eptakfZPrPToAwTAZJ?=
 =?us-ascii?Q?3QLkE2cx5qDL2eCU+x/Id6dWQiqYY5cNI5U7k33YjKDEibcqJqtU2QsChnM/?=
 =?us-ascii?Q?U9VvKvs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN1P287MB3775.INDP287.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018); DIR:OUT;
 SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Co0sYuQ0jawANg161rRQiPvS4iZMCvqwxFDwqSqXSurKyU4uQtIDdigRLpDO?=
 =?us-ascii?Q?UbPwtayIfA9PcrXfwTPaGeuG084L59aRNgMYyhgROFcpQjcvqDXJaYaLAy6v?=
 =?us-ascii?Q?OFqn3S4QZUVGp990daA4Aks3GR3VOQRJ1ell250fA9DaxLz6FoyLxHh5Tipo?=
 =?us-ascii?Q?zmpUJXHlQLK7z2bMEzXRNxnv9717Vf9/o9i7Rp+FPf66AI2KHNvlpPITgiYV?=
 =?us-ascii?Q?ESULtYEL/NmAVGujaiVPEhQwUaZcopsC7tjh90+zoCxKLS647HnYqDQVyFEK?=
 =?us-ascii?Q?xKiVBIBLR0iiAACgcTQgBej4dFHbw2uy2+Irdyb1/dCCTWAVPZAc/ezZC2pG?=
 =?us-ascii?Q?jJHINVxcX4msN+OO6BAwrZQ1gWECtYcqHvQb4Zj3hLZFf82ay+lyXmufeTOP?=
 =?us-ascii?Q?ngpuuGRLwC6eJsKznQ8l/kO0sDT9IU14yiqskEaAWtIjvZDWx6Y4S0U1w63s?=
 =?us-ascii?Q?m95jUawFJaIwjL4FkbJIflRqToRGG+7Q2PoR83/sIlhRFbOZy53tX6A9xTIJ?=
 =?us-ascii?Q?iJsvg2A1NRDrBTqGuad+9DUaq+S+CRAo8BpE8ehk+2LMsRoFU1mf4X1R+HiN?=
 =?us-ascii?Q?O6JJTgsG5vD9rJiUviTxCSrpedPSzwRpcjNQs64ZDOJkB62uLlvt4sVb0Z/T?=
 =?us-ascii?Q?Zipzd4QWThDrb3bMHd0zjg/dB5fv13EnnD/twG/+nYtYdQShlMKEnCc4fJ1a?=
 =?us-ascii?Q?joaJ2LX9rGfza/ba8GMJMezwcrbUVL3YhsxY2HRq9NPHLWS8Qrac5rClKHT4?=
 =?us-ascii?Q?xSIiKJF+OlmK6F4383MeL0fyV7+mGZ5/E1S/7IAbsuzJQ/O/jCEyzbdLLU4K?=
 =?us-ascii?Q?h9rV0neUqoYqlRVsSvyVhzvjF6GituxLtLHw9yYTsz51GmKTLofP+v4vsIDn?=
 =?us-ascii?Q?RejWO7KGvfivsw+sBFSXaWVrPmw+0/pTXhkiP2dsYq5YJPQI2Mg5ARZkvZ87?=
 =?us-ascii?Q?xNwBg/eQ3hPSsxtHDt+fbHL2C9VJIIqWjbYIWyHR/003D/QGYol3UB1YhEIj?=
 =?us-ascii?Q?AhOYsihltVNF9dzGH8+uO08u9Y7Fv4/5hjy1jogNNGlGyyckwG+cSQOpH+Um?=
 =?us-ascii?Q?5/zUCcMdwMynFHahAfEN0AjnCsjMqCDLs3iLUfUxP7IH+MXley6V6sYa2E5r?=
 =?us-ascii?Q?9V0o0qIlSNMXNUYtTHFPvuMpCClPpr/Q3FW57ZRUft0RrdJLbDeKHKUZqms1?=
 =?us-ascii?Q?HvtS/P9We9iYtQ5G940ID8+TwQHbCqz5Xm+4hLuB+S9Vwdwhh1P/QtYPahIy?=
 =?us-ascii?Q?+Mj7pCCm0EF8yXtc85jQXosyaeQkjd4w/oybrSFv4ch3Q/y/GAIR6ogBKnpS?=
 =?us-ascii?Q?QVzu7xXzi+7eRF+TDLp8X1u8W6M/ye+l8NCbE1xpHvTIMbR7hCEigeqsZm+r?=
 =?us-ascii?Q?9HMR1zR6BT7woV7iiH1Bxt48i4pO3idBujPFKNc35sg/1zfsWwddy1IP4J/H?=
 =?us-ascii?Q?AkZC2qcPY0PSw1muZZTDRdG5l9MZbwRVtcbeO8wZpQLfQCOTGZBAYZ2l2kaZ?=
 =?us-ascii?Q?u+WPSWFvDU4v/IXv/ER1UY/GMWmam39bs5xlRgLHdJOQzuWRJRE6hF7r0su+?=
 =?us-ascii?Q?RzZLUJ2m4YsLWJ7x21vqC0bENI+TYhyDiIZ94OzRuVeu0rBHGRjFl+YITQyT?=
 =?us-ascii?Q?0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: tIlNNAJ6i39Y6B3twbZMbNFwW08rO7F6kFzRxUUTmCm8cKrTz7/q5SRV9vl9VwkFfNPvbTxHCReFO4sk3lf/JVHChutnstdWDFQRVr8F9aJ44AtAVh6FGWLM9JTKqj1ltxzsRpwmVX1h9SKpsA9Q4zQCMXBye+lSBy96jJxWe6Z/ccu+KGaCPAY7rV0MXVYKIi9wxZVrFLTcShO99HsUO3cx6dussThECy97cHvNdhFlXRa5QOv+TMYDQ8VxMoeNSSXk6VL5kIr3jBNagdVWFEm7n0RM/ChCEz3HIEhVn75++xIYEAezO56GMIzykYn44we2TeZoSMa4BtwuxwqZfyhdachtzgW/VZguNEzl6I5TprIBKFVekQA3vqNoWR0TjWItjVf5wm1Ns8oG7Rv/QA5/7GMNnx3wxrreYRokdvfPymwZnQGhrZeLcn1JTbJ6oOK+21nGdcYUDtTXLcZbwVfbm9jYAT+asB6/aIPp1efe+I4QJc0axXu8n6xdQ6aa2+JTqE87J2G3V1RsNYDHC4R8IscXObkQlja33/xodbUzQFL+5vNHb3CCXDZJcgCstPayURXlLbPITIMHo94LzTmYYoUfUpS7+ZWbgxXbhXU=
X-OriginatorOrg: connectifyinsight.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN1P287MB3775.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fbd7db12-9dcb-411d-19a2-08dd04c32e32
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 15:44:09.6075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5aa5d65a-4ad2-45d2-a5c3-61352f52afaf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vRP2q5rDMZs9Ji5yilVM19OvScCm3qbq6Gu9hB/Du9vDAuW61JmCInnwM4+M6sqkv52sCkp28X8Of4MltpzTrnozo3QGPs9QaNEhEj9pTYTP0f3fYPpXWjwbjgFzyZ8x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3P287MB0955
X-MDID: 1731599055-INyYTTFdua9a
X-MDID-O: us4; at1; 1731599055; INyYTTFdua9a;
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
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.231.154.184 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.231.154.184 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.154.184 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [67.231.154.184 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1tBc17-0003Ih-N9
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
Tessa Ross

To remove from this mailing reply with the subject line " LEAVE US".


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
